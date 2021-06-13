$(document).ready(function() {
    $(".moreBox1").slice(0, 12).show();
    $(".moreBox2").slice(0, 12).show();
    $(".moreBox3").slice(0, 12).show();
    $(".moreBox4").slice(0, 12).show();
    $(".moreBox5").slice(0, 12).show();
    $(".moreBox6").slice(0, 12).show();

    if ($(".blogBox1:hidden").length != 0) {
        $("#loadMore1").show();
    } else {
        $("#loadMore1").hide();
    }
    if ($(".blogBox2:hidden").length != 0) {
        $("#loadMore2").show();
    } else {
        $("#loadMore2").hide();
    }
    if ($(".blogBox3:hidden").length != 0) {
        $("#loadMore3").show();
    } else {
        $("#loadMore3").hide();
    }
    if ($(".blogBox4:hidden").length != 0) {
        $("#loadMore4").show();
    } else {
        $("#loadMore4").hide();
    }
    if ($(".blogBox5:hidden").length != 0) {
        $("#loadMore5").show();
    } else {
        $("#loadMore5").hide();
    }
    if ($(".blogBox6:hidden").length != 0) {
        $("#loadMore6").show();
    } else {
        $("#loadMore6").hide();
    }

    $("#loadMore1").on('click', function(e) {
        e.preventDefault();
        $(".moreBox1:hidden").slice(0, 3).slideDown();
        if ($(".moreBox1:hidden").length == 0) {
            $("#loadMore1").fadeOut('slow');
        }
    });
    $("#loadMore2").on('click', function(e) {
        e.preventDefault();
        $(".moreBox2:hidden").slice(0, 3).slideDown();
        if ($(".moreBox2:hidden").length == 0) {
            $("#loadMore2").fadeOut('slow');
        }
    });
    $("#loadMore3").on('click', function(e) {
        e.preventDefault();
        $(".moreBox3:hidden").slice(0, 3).slideDown();
        if ($(".moreBox3:hidden").length == 0) {
            $("#loadMore3").fadeOut('slow');
        }
    });
    $("#loadMore4").on('click', function(e) {
        e.preventDefault();
        $(".moreBox4:hidden").slice(0, 1).slideDown();
        if ($(".moreBox4:hidden").length == 0) {
            $("#loadMore4").fadeOut('slow');
        }
    });
    $("#loadMore5").on('click', function(e) {
        e.preventDefault();
        $(".moreBox5:hidden").slice(0, 1).slideDown();
        if ($(".moreBox5:hidden").length == 0) {
            $("#loadMore5").fadeOut('slow');
        }
    });
    $("#loadMore6").on('click', function(e) {
        e.preventDefault();
        $(".moreBox6:hidden").slice(0, 1).slideDown();
        if ($(".moreBox6:hidden").length == 0) {
            $("#loadMore6").fadeOut('slow');
        }
    });
});