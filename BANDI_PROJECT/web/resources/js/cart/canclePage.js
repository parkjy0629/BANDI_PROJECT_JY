$(function () {$('#cancle').change(function() {
        if ($(this).children("option:selected").text() == "기타") {
            $('#writeText').attr("disabled", false);
        } else {
            $('#writeText').val("").attr("disabled", true);
        }
    });
});