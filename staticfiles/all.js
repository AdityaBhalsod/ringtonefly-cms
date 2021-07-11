$(document).ready(function () {
  function e(e) {
    $.ajax({
      url: $("#reactUrl").val(),
      dataType: "json",
      type: "POST",
      data: JSON.stringify({
        ringtone_id: $("#ringtone_id").val(),
        react: e,
      }),
      processData: !1,
      success: function (e) {
        $("#likeCount").text("  " + e.react);
      },
    });
  }
  $("#downloadRingtone").click(function (e) {
    $("#ringtone_id").val() &&
      $.ajax({
        url: $("#incrementUrl").val(),
        dataType: "json",
        type: "POST",
        data: JSON.stringify({
          ringtone_id: $("#ringtone_id").val(),
        }),
        processData: !1,
        success: function (e) {
          e.download && $("#downloadCount").text("  " + e.download);
        },
      });
  }),
    $(".navbtn").click(function () {
      $(".mobilemenu").toggleClass("open"),
        $(".navbtn i").toggleClass("open1"),
        $(".navbtn i").toggleClass("fa-bars"),
        $(".navbtn i").addClass("fa-times");
    }),
    $(".searchbtn").click(function () {
      $(".search-input").slideToggle(),
        $(".searchbtn i").toggleClass("fa-times");
    }),
    $(".like-data").click(function () {
      "fa fa-heart-o" === $(".like-data i").attr("class")
        ? ($(".like-data i").removeClass("fa-heart-o"),
          $(".like-data i").addClass("fa-heart"),
          e(!0))
        : ($(".like-data i").removeClass("fa-heart"),
          $(".like-data i").addClass("fa-heart-o"),
          e(!1));
    }),
    $(".cat-list ul li a").click(function () {
      $(".cat-list ul li a").removeClass("active"), $(this).addClass("active");
    }),
    $(function () {
      $(window).scroll(function () {
        $(this).scrollTop() > 400
          ? $(".back-to-top").addClass("back")
          : $(".back-to-top").removeClass("back");
      }),
        $(".back-to-top").click(function () {
          return (
            $("html,body").animate(
              {
                scrollTop: 0,
              },
              400
            ),
            !1
          );
        });
    }),
    $("#playBtnRingletone").click(function () {
      var e = $(this).children("i");
      "fa fa-play-circle" === e.attr("class")
        ? (e.removeClass("fa fa-play-circle"), e.addClass("fa fa-pause-circle"))
        : (e.removeClass("fa fa-pause-circle"),
          e.addClass("fa fa-play-circle"));
    }),
    $(".cat-list").on("click", "a", function (e) {
      e.preventDefault();
      var a = $(this).attr("data-tab");
      $(this).closest(".cat-list").find("a").removeClass("active"),
        $(this).addClass("active"),
        $(".tab-panel").removeClass("active"),
        $("#" + a).addClass("active");
    }),
    $(".share-btn").click(function () {
      $(".modale").addClass("opened");
    }),
    $(".close-share").click(function () {
      $(".modale").removeClass("opened");
    });
});
const audioPlayer = document.querySelector(".audio-player");

try {
  audio.addEventListener(
    "loadeddata",
    () => {
      (audioPlayer.querySelector(".time .length").textContent =
        getTimeCodeFromNum(audio.duration)),
        (audio.volume = 0.75);
    },
    !1
  );
  const e = audioPlayer.querySelector(".timeline");
  e.addEventListener(
    "click",
    (a) => {
      const o = window.getComputedStyle(e).width,
        t = (a.offsetX / parseInt(o)) * audio.duration;
      audio.currentTime = t;
    },
    !1
  ),
    setInterval(() => {
      (audioPlayer.querySelector(".progress").style.width =
        (audio.currentTime / audio.duration) * 100 + "%"),
        (audioPlayer.querySelector(".time .current").textContent =
          getTimeCodeFromNum(audio.currentTime));
    }, 500);
  const a = audioPlayer.querySelector(".controls .toggle-play .play-btn"),
    o = audioPlayer.querySelector(".controls .toggle-play .play-btn i");

  function getTimeCodeFromNum(e) {
    let a = parseInt(e),
      o = parseInt(a / 60);
    a -= 60 * o;
    const t = parseInt(o / 60);
    return (
      (o -= 60 * t),
      0 === t
        ? `${o}:${String(a % 60).padStart(2, 0)}`
        : `${String(t).padStart(2, 0)}:${o}:${String(a % 60).padStart(2, 0)}`
    );
  }
  a.addEventListener(
    "click",
    () => {
      audio.paused
        ? (o.classList.remove("fa-play-circle"),
          o.classList.add("fa-pause-circle"),
          audio.play())
        : (o.classList.remove("fa-pause-circle"),
          o.classList.add("fa-play-circle"),
          audio.pause());
    },
    !1
  ),
    audio.addEventListener("ended", function () {
      o.classList.remove("fa-pause-circle"), o.classList.add("fa-play-circle");
    });
} catch (e) {}
