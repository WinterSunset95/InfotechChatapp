const messages = document.getElementById('messages');

function send() {
    const value = document.getElementById("input").value;
    document.getElementById("input").value = "";
    const li = document.createElement("li");
    li.innerHTML = value;
    if (value!="") {
        messages.appendChild(li);
    }
}