{{-- <div class="multiple-items">
   @foreach ($slide as $item)
   <div class="item">
      <img src="{{ asset($item['file_src']) }}" alt="alt-slide">
   </div>
   @endforeach
</div> --}}

<!-- revolution slider starts -->
<div id="rev_slider_279_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="restaurant-header" style="
                              margin: 0px auto;
                              background-color: #474d4b;
                              padding: 0px;
                              margin-top: 0px;
                              margin-bottom: 0px;
                                background: rgba(0,0,0,0.4);
        height: 100%;
                            ">
    <div id="rev_slider_70_1" class="rev_slider fullscreenabanner" style="display: none" data-version="5.1.4">
        <ul>
            @foreach ($slide as $item)
                <li class="slider-color-schema-dark" data-index="rs-2" data-transition="fade" data-slotamount="7"
                    data-easein="default" data-easeout="default" data-masterspeed="1000" data-rotate="0"
                    data-saveperformance="off" data-title="Slide" data-description="">
                    <!-- main image for revolution slider -->

                    <img src="{{ asset($item['file_src']) }}" alt="image description" data-bgposition="center center"
                        data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100"
                        data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0"
                        data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-bgfit="cover" data-no-retina
                        style="" />

                    <div class="tp-caption tp-resizeme" id="slide-897-layer-7"
                        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                        data-y="['top','top','middle','middle']" data-voffset="['160','120','-120','-70']"
                        data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;"
                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;"
                        data-transform_out="opacity:0;s:300;s:300;" data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                        data-start="1500" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="
                                      z-index: 9;
                                      white-space: nowrap;
                                      font-size: 60px;
                                      line-height: 100px;
                                      text-align: center;
                                    
                                    ">
                        {{-- <span class="icon-wildlife"></span> --}}
                    </div>

                    <div class="tp-caption banner-heading-sub tp-resizeme rs-parallaxlevel-0"
                        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                        data-y="['top','top','middle','middle']" data-voffset="['280','240','10','20']"
                        data-fontsize="['48','48','44','28']" data-lineheight="['85','85','50','50']"
                        data-width="['1200','1000','750','480']" data-height="none" data-whitespace="normal"
                        data-transform_idle="o:1;"
                        data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                        data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="1000"
                        data-splitin="none" data-splitout="none" data-responsive_offset="on" style="
                                      z-index: 7;
                                      letter-spacing: 0;
                                      font-weight: 100;
                                      text-align: center;
                                      color: #ffffff;
                                    ">
                        {{ $item['title'] }}
                    </div>

                </li>
            @endforeach


        </ul>
    </div>
