//increment download
$("#downloadRingtone").click(function (e) {
    if ($('#ringtone_id').val()) {
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

