$(function() {$('#chkAll').bind('click', function() {
    if($('#chkAll').is(":checked")) {
        $('input:checkbox').not('#chkAll').prop("checked", true);
    } else {
        $('input:checkbox').prop("checked", false);
    }
});
});