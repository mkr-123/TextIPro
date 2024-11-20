$(document).ready(function () {
    $("#entries").val(pageEntries);
    $("#pageNo").text(pageNum + 1);
});

function preOrNextPage(nextOrPre) {
    if (nextOrPre == 1) {
        $("#pageNum").val(pageNum + 1);
    } else {
        $("#pageNum").val(pageNum - 1);
    }
    $("#pageNo").text($("#pageNum").val());
    $("#pageEnteries").val(pageEntries);
    $("#entries").val(pageEntries);
    $("#form").submit();
}

function enteries(entriesVal) {
    $("#pageNum").val(pageNum);
    $("#pageEnteries").val(entriesVal);
    $("#form").submit();
}
