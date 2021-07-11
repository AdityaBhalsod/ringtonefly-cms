// Play Function
$(".ringtone-area").on(
  "click",
  ".ringtone-player .play-btn .fa-play-circle",
  function (current) {
    $(this).parent().find(".fa-play-circle").css("display", "none");
    $(this).parent().find(".fa-snowflake-o").css("display", "inline-block");
    $(".fa-play-circle")
      .not(this)
      .parent()
      .find(".fa-snowflake-o")
      .css("display", "none");
    $(".fa-play-circle")
      .not(this)
      .parent()
      .find(".fa-play-circle")
      .css("display", "inline-block");

    // ADD / REMOVE CLASS
    $(this).parent().parent().addClass("isPlaying");
    $(".fa-play-circle").not(this).parent().parent().removeClass("isPlaying");

    $("audio").each(function (e) {
      if (e !== current.currentTarget) {
        $(this)[0].pause();
      }
    });

    if ($(this).parent().parent().find(".track audio")[0].play()) {
      $(audio).on("ended", function (current) {
        $(".ringtone-player .play-btn .fa-snowflake-o").css("display", "none");
        $(".ringtone-player .play-btn .fa-play-circle").css(
          "display",
          "inline-block"
        );
      });
    }
  }
);
// PAUSE FUNCTION
$(".ringtone-area").on(
  "click",
  ".ringtone-player .play-btn .fa-snowflake-o",
  function () {
    // HIDE PASE ICON
    $(this).parent().find(".fa-snowflake-o").css("display", "none");
    // Show Play Icon
    $(this).parent().find(".fa-play-circle").css("display", "inline-block");
    // PAUSE AUDIO TRACK
    $(this).parent().parent().find(".track audio")[0].pause();
  }
);
