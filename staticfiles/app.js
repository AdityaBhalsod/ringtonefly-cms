$(document).ready(function() {
    $('.navbtn').click(function() {
        $('.mobilemenu').toggleClass('open');
        $('.navbtn i').toggleClass('open1');
        $('.navbtn i').toggleClass('fa-bars');
        $('.navbtn i').addClass('fa-times');
    });
    $('.searchbtn').click(function() {
        $('.search-input').slideToggle();
        $('.searchbtn i').toggleClass('fa-times');
    });

    $('.like-data').click(function() {
        var data = $('.like-data i').attr('class');
        if (data === 'fa fa-heart-o') {
            $('.like-data i').removeClass('fa-heart-o')
            $('.like-data i').addClass('fa-heart')
            reactStatusFuncation(true);
        } else {
            $('.like-data i').removeClass('fa-heart')
            $('.like-data i').addClass('fa-heart-o')
            reactStatusFuncation(false);
        }
    })


    $(".cat-list ul li a").click(function() {
        $(".cat-list ul li a").removeClass("active");
        $(this).addClass("active");
    });


    $(function() { $(window).scroll(function() { $(this).scrollTop() > 400 ? $(".back-to-top").addClass('back') : $(".back-to-top").removeClass('back') }), $(".back-to-top").click(function() { return $("html,body").animate({ scrollTop: 0 }, 400), !1 }) });


    $("#playBtnRingletone").click(function() {
        var data = $(this).children("i");
        if (data.attr('class') === 'fa fa-play-circle') {
            data.removeClass('fa fa-play-circle');
            data.addClass('fa fa-pause-circle');
        } else {
            data.removeClass('fa fa-pause-circle');
            data.addClass('fa fa-play-circle');
        }
    })

    $('.cat-list').on('click', 'a', function(e) {
        e.preventDefault();
        var tabId = $(this).attr('data-tab');
        $(this).closest('.cat-list').find('a').removeClass('active');
        $(this).addClass('active');
        $('.tab-panel').removeClass('active');
        $('#' + tabId).addClass('active');
    });

    // Play Function
    $(".ringtone-player .play-btn .fa-play-circle").on('click', function(current) {
        $(this).parent().find(".fa-play-circle").css("display", "none");
        $(this).parent().find(".fa-snowflake-o").css("display", "inline-block");
        $(".fa-play-circle").not(this).parent().find(".fa-snowflake-o").css("display", "none");
        $(".fa-play-circle").not(this).parent().find(".fa-play-circle").css("display", "inline-block");

        // ADD / REMOVE CLASS
        $(this).parent().parent().addClass("isPlaying");
        $(".fa-play-circle").not(this).parent().parent().removeClass("isPlaying");
        // ani
        $(this).parent().parent().find(".beat_animation ul li").css("animation-play-state", "running").css("opacity", "1");
        $(".fa-play-circle").not(this).parent().parent().find(".beat_animation ul li").css("animation-play-state", "paused").css("opacity", ".1");

        // PASUE CURRENT AUDIO TRACK WHEN PLAY NEXT/PREV AUDIO TRACK
        $("audio").each(function(e) {
            if (e !== current.currentTarget) {
                $(this)[0].pause();
            }
        });

        // PLAY CURRENT AUDIO TRACK 
        $(this).parent().parent().find(".track audio")[0].play();
    });

    // PAUSE FUNCTION
    $(".ringtone-player .play-btn .fa-snowflake-o").on('click', function() {
        // HIDE PASE ICON
        $(this).parent().find(".fa-snowflake-o").css("display", "none");
        // Show Play Icon
        $(this).parent().find(".fa-play-circle").css("display", "inline-block");
        // PAUSE AUDIO TRACK
        $(this).parent().parent().find(".track audio")[0].pause();
    });

    $("audio").on('ended', function() {
        // HIDE PASE ICON
        $(".ringtone-player .play-btn .fa-snowflake-o").css("display", "none");
        // Show Play Icon
        $(".ringtone-player .play-btn .fa-play-circle").css("display", "inline-block");
    });
});