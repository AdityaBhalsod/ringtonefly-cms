$(document).ready(function () {
  var popularRingtonePageCount = 0;
  var popularRingtoneHasNext = true;

  var newRingtonePageCount = 0;
  var newRingtoneHasNext = true;

  var top50RingtonePageCount = 0;
  var top50RingtoneHasNext = true;

  var categoryReletedRingtonePageCount = 0;
  var CategoryReletedRingtoneHasNext = true;

  var singlePopularRingtonePageCount = 0;
  var singlePopularRingtoneHasNext = true;


  function ringtoneHtmlContent(value){
	  var htmlContent = "<div class='ringtone-player'>\
			<div class='play-btn'> \
				<i class='fa fa-play-circle'></i>\
				<i class='fa fa-snowflake-o'></i>\
				<span class='track'>\
					<audio id='audio' controls preload='none'>\
						<source src='"+value["ringtone_file_url"]+"' type='"+value["file_format"]+"'>\
					</audio>\
				</span>\
			</div>\
			<div class='ringtone-info'>\
				<div class='categoryName'><a href='"+value["category_page_url"]+"'>"+value["category_name"]+"</a>\
				</div>\
				<div class='ringtoneName'>\
					<h2><a href='"+value["ringtone_page_url"]+"'>"+value["ringtone_name"]+"</a></h2>\
				</div>\
				<div class='download-info'><b>"+value["download_count"]+"</b> - Downloads</div>\
			</div>\
		</div>";
	  return htmlContent;
  }
  $("#loadMorePopularRingtone").click(function (e) {
    popularRingtonePageCount++;
    if (popularRingtoneHasNext == true) {
      $.ajax({
        url:
          $("#popularRingtoneGetUrl").val() +
          "?page=" +
          popularRingtonePageCount,
        dataType: "json",
        type: "GET",
        processData: !1,
        beforeSend: function(){
          $('#loading').show();
        },
        success: function (e) {
          $('#loading').hide();
          if (e) {
            if (e.hasNext == false) {
              $("#loadMorePopularRingtone").hide();
              popularRingtoneHasNext = e.hasNext;
            }
            if (e.ringtoneObjects) {
              $.each(e.ringtoneObjects, function (key, value) {
                $("#popularRingtone").append(ringtoneHtmlContent(value));
              });
            }
          }
        },
      });
    }
  });
  $("#loadMoreNewRingtone").click(function (e) {
    newRingtonePageCount++;
    if (newRingtoneHasNext == true) {
      $.ajax({
        url: $("#newRingtoneGetUrl").val() + "?page=" + newRingtonePageCount,
        dataType: "json",
        type: "GET",
        processData: !1,
        beforeSend: function(){
          $('#loading').show();
        },
        success: function (e) {
          $('#loading').hide();
          if (e) {
            if (e.hasNext == false) {
              $("#loadMoreNewRingtone").hide();
              newRingtoneHasNext = e.hasNext;
            }
            if (e.ringtoneObjects) {
              $.each(e.ringtoneObjects, function (key, value) {
                $("#newRingtone").append(ringtoneHtmlContent(value));
              });
            }
          }
        },
      });
    }
  });
  $("#loadMoreTop50Ringtone").click(function (e) {
    top50RingtonePageCount++;
    if (top50RingtoneHasNext == true) {
      $.ajax({
        url:
          $("#top50RingtoneGetUrl").val() + "?page=" + top50RingtonePageCount,
        dataType: "json",
        type: "GET",
        processData: !1,
        beforeSend: function(){
          $('#loading').show();
        },
        success: function (e) {
          $('#loading').hide();
          if (e) {
            if (e.hasNext == false) {
              $("#loadMoreTop50Ringtone").hide();
              top50RingtoneHasNext = e.hasNext;
            }
            if (e.ringtoneObjects) {
              $.each(e.ringtoneObjects, function (key, value) {
                $("#top50Ringtone").append(ringtoneHtmlContent(value));
              });
            }
          }
        },
      });
    }
  });
  $("#loadMoreCategoryReletedRingtone").click(function (e) {
    categoryReletedRingtonePageCount++;
    if (CategoryReletedRingtoneHasNext == true) {
      $.ajax({
        url:
          $("#categoryReletedRingtoneGetUrl").val() +
          "?name=" +
          $("#categoryReletedRingtoneGetSlug").val() + "&" +
          "page=" +
          categoryReletedRingtonePageCount,
        dataType: "json",
        type: "GET",
        processData: !1,
        beforeSend: function(){
          $('#loading').show();
        },
        success: function (e) {
          $('#loading').hide();
          if (e) {
            if (e.hasNext == false) {
              $("#loadMoreCategoryReletedRingtone").hide();
              CategoryReletedRingtoneHasNext = e.hasNext;
            }
            if (e.ringtoneObjects) {
              $.each(e.ringtoneObjects, function (key, value) {
                $("#categoryReletedRingtone").append(
                  ringtoneHtmlContent(value)
                );
              });
            }
          }
        },
      });
    }
  });
  $("#loadMoreSinglePopularRingtone").click(function (e) {
    singlePopularRingtonePageCount++;
    if (singlePopularRingtoneHasNext == true) {
      $.ajax({
        url:
          $("#singleRingtoneGetUrl").val() + "?page=" + singlePopularRingtonePageCount,
        dataType: "json",
        type: "GET",
        processData: !1,
        beforeSend: function(){
          $('#loading').show();
        },
        success: function (e) {
          $('#loading').hide();
          if (e) {
            if (e.hasNext == false) {
              $("#loadMoreSinglePopularRingtone").hide();
              singlePopularRingtoneHasNext = e.hasNext;
            }
            if (e.ringtoneObjects) {
              $.each(e.ringtoneObjects, function (key, value) {
                $("#singlePopularRingtone").append(ringtoneHtmlContent(value));
              });
            }
          }
        },
      });
    }
  });
});
