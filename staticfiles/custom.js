//increment download
$("#downloadRingtone").click(function (e) {
    e.preventDefault();
    if ($('#incrementUrl').val() && $('#ringtone_id').val()) {
        $.ajax({
            url: $('#incrementUrl').val(),
            dataType: 'json',
            type: 'POST',
            data: JSON.stringify({
                ringtone_id: $('#ringtone_id').val()
            }),
            processData: false,
            success: function (data) {
                if (data.download) {
                    $("#downloadCount").text("  " + data.download);
                }
                window.location.href = $('#ringtone_url').val();
            }
        });
    }
});


//increment download
$("#searchBtn").click(function () {
    if ($('#searchInput').val()) {
        $.ajax({
            url: $('#searchURL').val(),
            dataType: 'json',
            type: 'GET',
            data: JSON.stringify({
                query: $('#searchInput').val()
            }),
            processData: false,
            success: function (data) {
                if (data.result && data.ringtone) {
                    $("#searchContainer").show();
                    if (data.ringtone.length == 0) {
                        $("#searchQuery").text('Not found !');
                    } else {
                        $("#searchResult").show();
                        $("#searchloadMoreBtn").show();
                        
                        $("#searchQuery").text(data.query);
                        data.ringtone.forEach(item => {
                            $("#searchResult").append(
                                "<div class='ringtone-player flex vcenter blogBox4 moreBox4' style='display: none;'>\
                                    <div class='play-btn'>\
                                    <i class='fa fa-play-circle'></i>\
                                    <i class='fa fa-snowflake-o'></i>\
                                    <span class='track'>\
                                        <audio id='audio' controls>\
                                            <source src='"+item.ringtone_media_url+"' type='"+item.ringtone_type+"'>\
                                        </audio>\
                                    </span>\
                                    </div>\
                                    <div class='ringtone-info'>\
                                        <div class='categoryName'><a href='"+item.category_public_url+"'>"+item.category_name+"</a> </div>\
                                        <div class='ringtoneName'>\
                                            <h2><a href='"+item.ringtone_url+"'>"+item.ringtone_name+"</a></h2>\
                                        </div>\
                                        <div class='download-info'>"+item.ringtone_download_count+" - Downloads</div>\
                                    </div>\
                                </div>"
                            )
                        });                        
                    }
                } else {
                    $("#searchContainer").show();
                    $("#searchQuery").text('Not found !');
                }
            }
        });
    }
});

function reactStatusFuncation(reactStatus) {
    $.ajax({
        url: $('#reactUrl').val(),
        dataType: 'json',
        type: 'POST',
        data: JSON.stringify({
            ringtone_id: $('#ringtone_id').val(),
            react: reactStatus
        }),
        processData: false,
        success: function (data) {
            $("#likeCount").text("  " + data.react);
        }
    });
}

