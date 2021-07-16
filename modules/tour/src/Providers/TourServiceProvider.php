<?php

namespace Modules\Tour\Providers;

use Event;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\Facades\File;
use Illuminate\Support\ServiceProvider;
use Modules\Tour\Repositories\Eloquents\TourRepository;
use Modules\Tour\Repositories\Interfaces\TourInterface;

class TourServiceProvider extends ServiceProvider
{
    public function register()
    {
        $this->app->bind(TourInterface::class, TourRepository::class);
    }

    public function boot()
    {
        $module = 'tour';
        $namespace = 'Modules\\Tour\\';
        $module_path = base_path('modules' . DIRECTORY_SEPARATOR . 'tour');

        /**
         * Load routes
         */
        if (File::isDirectory($module_path . DIRECTORY_SEPARATOR . 'routes')) {
            $routes = File::glob($module_path . DIRECTORY_SEPARATOR . 'routes' . DIRECTORY_SEPARATOR . '*.php');
            foreach ($routes as $route) {
                $this->loadRoutesFrom($route);
            }
        }

        /**
         * Load helpers
         */
        if (File::isDirectory($module_path . DIRECTORY_SEPARATOR . 'helpers')) {
            $helpers = File::glob($module_path . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . '*.php');
            foreach ($helpers as $helper) {
                File::requireOnce($helper);
            }
        }

        /**
         * Load configs
         */
        if (File::isDirectory($module_path . DIRECTORY_SEPARATOR . 'config')) {
            $configs = File::glob($module_path . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . '*.php');
            foreach ($configs as $config) {
                $this->mergeConfigFrom($config, $module . '::' . basename($config, '.php'));
            }
        }

        /**
         * Load translations
         */
        if (File::isDirectory($module_path . DIRECTORY_SEPARATOR . 'resources' . DIRECTORY_SEPARATOR . 'lang')) {
            $this->loadTranslationsFrom($module_path . DIRECTORY_SEPARATOR . 'resources' . DIRECTORY_SEPARATOR . 'lang', $module);
        }

        /**
         * Load breadcrumbs
         */
        if (File::exists($module_path . DIRECTORY_SEPARATOR . 'includes' . DIRECTORY_SEPARATOR . 'breadcrumbs.php')) {
            File::requireOnce($module_path . DIRECTORY_SEPARATOR . 'includes' . DIRECTORY_SEPARATOR . 'breadcrumbs.php');
        }

        /**
         * Load views
         */
        if (File::isDirectory($module_path . DIRECTORY_SEPARATOR . 'resources' . DIRECTORY_SEPARATOR . 'views')) {
            $this->loadViewsFrom($module_path . DIRECTORY_SEPARATOR . 'resources' . DIRECTORY_SEPARATOR . 'views', $module);
        }

        // $this->app->register(HookServiceProvider::class);

        /**
         * Load admin menu
         */
        $this->loadAdminMenu();

        /**
         * Load widgets, shortcodes,...
         */
        // widgets: app('arrilot.widget-namespaces')->registerNamespace($module, $namespace . 'Widgets');
        // shortcodes: Shortcode::register('product', ProductShortcode::class);
    }

    public function loadAdminMenu()
    {
        Event::listen(RouteMatched::class, function () {
            dashboard_menu()
                ->registerItem([
                    'id'          => 'mod-tour',
                    'priority'    => 3,
                    'parent_id'   => null,
                    'name'        => 'tour::admin.tour_management',
                    'icon'        => 'fa fa-plane',
                    'url'         => route('tour.admin.list'),
                    'permissions' => ['tour.admin.list'],
                ])

                ->registerItem([
                    'id'          => 'mod-tour-booking',
                    'priority'    => 1,
                    'parent_id'   => 'mod-tour',
                    'name'        => 'Danh sách khách hàng đặt tour',
                    'url'         => route('tour.admin.booking'),
                    'permissions' => ['tour.admin.list'],
                ])
                ->registerItem([
                    'id'          => 'mod-tour-list',
                    'priority'    => 2,
                    'parent_id'   => 'mod-tour',
                    'name'        => 'Danh sách tour',
                    'url'         => route('tour.admin.list'),
                    'permissions' => ['tour.admin.list'],
                ])
                ->registerItem([
                    'id'          => 'mod-tour-add',
                    'priority'    => 3,
                    'parent_id'   => 'mod-tour',
                    'name'        => 'Thêm tour du lịch',
                    'icon'        => null,
                    'url'         => route('tour.admin.create'),
                    'permissions' => ['tour.admin.list'],
                ]);
        });
    }
}