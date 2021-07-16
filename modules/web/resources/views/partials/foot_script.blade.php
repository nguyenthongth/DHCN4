 <!-- jquery library -->
    <script src="{{asset('assets/web/vendors/jquery/jquery-2.1.4.min.js')}}"></script>
    <!-- external scripts -->
    <script src="{{asset('assets/web/vendors/bootstrap/javascripts/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/jquery-placeholder/jquery.placeholder.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/match-height/jquery.matchHeight.js')}}"></script>
    <script src="{{asset('assets/web/vendors/wow/wow.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/stellar/jquery.stellar.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/validate/jquery.validate.js')}}"></script>
    <script src="{{asset('assets/web/vendors/waypoint/waypoints.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/counter-up/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/jquery-ui/jquery-ui.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/jQuery-touch-punch/jquery.ui.touch-punch.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/fancybox/jquery.fancybox.js')}}"></script>
    <script src="{{asset('assets/web/vendors/owl-carousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/jcf/js/jcf.js')}}"></script>
    <script src="{{asset('assets/web/vendors/jcf/js/jcf.select.js')}}"></script>
    <script src="{{asset('assets/web/js/mailchimp.js')}}"></script>
    <script src="{{asset('assets/web/vendors/retina/retina.min.js')}}"></script>
    <script src="{{asset('assets/web/vendors/sticky-kit/sticky-kit.js')}}"></script>
    <script src="{{asset('assets/web/js/sticky-kit-init.js')}}"></script>
    <script src="{{asset('assets/web/vendors/bootstrap-datetimepicker-master/dist/js/bootstrap-datepicker.js')}}"></script>
    <!-- custom jquery script -->
    <script src="{{asset('assets/web/js/jquery.main.js')}}"></script>
    <!-- revolution slider plugin -->
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/jquery.themepunch.tools.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/jquery.themepunch.revolution.min.js')}}"
    ></script>
    <!-- rs5.0 core files -->
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/jquery.themepunch.tools.min838f.js?rev=5.0')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/jquery.themepunch.revolution.min838f.js?rev=5.0')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.actions.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.parallax.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.video.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.navigation.min.js')}}"
    ></script>
    <script
      type="text/javascript"
      src="{{asset('assets/web/vendors/revolution/js/extensions/revolution.extension.kenburn.min.js')}}"
    ></script>
    <!-- revolutions slider script -->
    <script src="{{asset('assets/web/js/revolution.js')}}"></script>


{{-- 
<script>
   $('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        var $subMenu = $(this).next(".dropdown-menu");
        $subMenu.toggleClass('show');


        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
            $('.dropdown-submenu .show').removeClass("show");
        });

        return false;
    });


    $(() => {
        var createSlick = () => {
            let slider = $(".slider .multiple-items");

            slider.not('.slick-initialized').slick({
                autoplay: false,
                infinite: true,
                dots: true,
                arrow: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            adaptiveHeight: true,
                        },
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                        },
                    },
                ],
            });
        }

        createSlick();

        $(window).on('resize orientationchange', createSlick);
    })


    $('.mutilmedia .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.mutilmedia .slider-nav'
    });
    $('.mutilmedia .slider-nav').slick({
        slidesToShow: 12,
        slidesToScroll: 1,
        asNavFor: '.mutilmedia .slider-for',
        dots: false,
        focusOnSelect: true
    });

    $('.article-post__info  .article-feature .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.article-post__info  .article-feature .slider-nav'
    });
    $('.article-post__info  .article-feature .slider-nav').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        asNavFor: '.article-post__info  .article-feature .slider-for',
        dots: true,
        arrows: true,
        focusOnSelect: true,
        responsive: [

            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            }
        ]
    });

    var btn = $('#to-top');

    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {
            btn.addClass('show');
        } else {
            btn.removeClass('show');
        }
    });

    btn.on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({ scrollTop: 0 }, '300');
    });

    $('.back-link').click(function () {
        parent.history.back();
        return false;
    });

    function printData() {
        var divToPrintChiTiet = document.getElementById('detail');
        var divlink = window.location.href;
        var popupWin = window.open("", "", "width=700,height=800");
        popupWin.document.writeln(divToPrintChiTiet.innerHTML + '<br/> <b>Nguồn bài viết: ' + divlink + '</b>');
        popupWin.document.close();
        popupWin.focus();
        popupWin.print();

    }
    $("#printnew").on('click', function () {
        printData();
    });

    $('.toggle').click(function (e) {
        e.preventDefault();
        var $this = $(this);
        if ($('.toggle').find('.act').hasClass('collapsed')) {
            $('.toggle').find('.act').removeClass('collapsed');
            $('.toggle').find('.act').html('<i class="fas fa-angle-down"></i>Hiển thị câu trả lời');
        }
        if ($this.next().hasClass('show')) {
            $this.next().removeClass('show');
            $this.next().slideUp(350);
        } else {
            $this.parent().parent().find('li .inner').removeClass('show');
            $this.parent().parent().find('li .inner').slideUp(350);
            $this.next().toggleClass('show');
            $this.parent().find('.act').addClass('collapsed');
            $this.parent().find('.act.collapsed').html('<i class="fas fa-angle-up"></i>Ẩn câu trả lời');
            $this.next().slideToggle(350);
        }
    });
</script>
<script>
   $(document).ready(function () {
        $('.tabs a').click(function () {
            $('.panel').hide();
            $('.tabs a.active').removeClass('active');
            $(this).addClass('active');
            var panel = $(this).attr('href');
            $(panel).fadeIn(1000);
            return false
        });
        $('.tabs li:first a').click();
    }); 
</script>
<script>
   $(".rvs-container").rvslider();

    var link = "https://vnexpress.net/my-noi-lanh-su-quan-trung-quoc-la-trung-tam-tinh-bao-4134615.html";
    // var link = window.location.href;
    var myOtherUrl = encodeURIComponent(link);
    console.log(myOtherUrl);
    $(".list-share .share-facebook").html('<div class="fb-share-button" data-href="' + link + '" data-layout="button" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=' + myOtherUrl + '%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>');

    $(".list-share .share-zalo").html('<div class="zalo-share-button" data-href="' + link + '" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize=false></div>');

    $(".list-social .list-share").hide();
    $(".list-social .share").click(function () {
        if ($('.list-social .list-share:visible').length) {
            $('.list-social .list-share').hide();
        }
        else {
            $('.list-social .list-share').show();
        }
    });
</script> --}}