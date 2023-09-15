
localStorage.removeItem("username");
localStorage.removeItem("password");

function myFunction () {
    var x = document.getElementById("Password");
    if (x.type == "password") {
        x.type = "type";
    } else {
        x.type = "password";
    }
}

const loginSystem = () => {
    const name = document.getElementById("Uname").value;
    const password = document.getElementById("Password").value;
    fetch(`${url}api/login.php`, {
        method: "POST",
        body: JSON.stringify({ name, password }),
    })
    .then((res) => res.json())
    .then(data => {
        if (data.status == 'true' && data.name != '') {
            localStorage.setItem("username", data.name);
            localStorage.setItem("password", password);
            alert(data.message);
            window.location.href = `${url}index.html`;
        } else {
            alert(data.message);
        }
    })
}
