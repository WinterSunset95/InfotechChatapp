function myFunction () {
    var x = document.getElementById("myInput");
    if (x.type === "Password") {
        x.type = "type";
    } else {
        x.type = "Password";
    }
}