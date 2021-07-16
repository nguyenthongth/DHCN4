<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateToursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // dia diem 
        Schema::create('locations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->unsignedTinyInteger('status')->default(1);
            $table->timestamps();
        });
        // tour du lic
        Schema::create('tours', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('tour_code'); // ma tour
            $table->string('date_go')->nullable(); // ngay di
            $table->text('description')->nullable(); // ngay di
            $table->string('price'); // gia
            $table->string('leave_from'); // diem du lich 
            $table->string('total_date'); // tong so ngay
            $table->string('contact_us'); // lien he
            $table->unsignedInteger('locaion_id');
            $table->string('image_tour'); // lien he
            $table->unsignedTinyInteger('status')->default(1);
            $table->timestamps();
        });


        // tour content program
        Schema::create('tour_content_programs', function (Blueprint $table) {
            $table->increments('id');
            $table->text('content');
            $table->unsignedInteger('tour_id');
            $table->timestamps();
        });

        Schema::create('bookings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('customer'); // khach hang
            $table->string('address'); // dia chi 
            $table->string('total_customer'); // ngay khoi hanh du kien
            $table->string('email');
            $table->string('phone');
            $table->string('note')->nullable();
            $table->unsignedTinyInteger('status')->default(1);
            $table->unsignedInteger('tour_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('locations');
        Schema::dropIfExists('bookings');
        Schema::dropIfExists('tours');
        Schema::dropIfExists('tour_content_programs');
    }
}