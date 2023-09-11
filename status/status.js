const file = document.getElementById('file')
file.addEventListener('input', (event) => {
	console.log(event)
	console.log(event.target.files[0]);
})
function liked () {
    var element = document.getElementById("like");
    element.classList.toggle("liked");
}
