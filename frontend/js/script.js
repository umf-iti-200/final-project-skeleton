$(function () {

    $.get("/api/say-hello", function (response) {

        $("#output").text(response)
    });
});
