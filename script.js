const display = document.getElementById("messages");
const input = document.getElementById("input");

const url = "https://wintersunset95.000webhostapp.com"

let data;
let interval;

const initialize = () => {
	fetch(`${url}/index.php`)
		.then(response => response.json())
		.then(result => {
			data = result;
			for (let i=0; i<data.length; i++) {
				const item = data[i];
				const message = item.message_text;
				const timestamp = item.message_timestamp;
				const li = document.createElement("li");
				li.innerHTML = `<p>${message}</p><p>${timestamp}</p>`;
				display.appendChild(li);
			}
		})
	if (!data) {
		setTimeout(() => {
			console.log("waiting for data");
		}, 1000);
	}
}

initialize();

const getData = () => {
	fetch(`${url}/index.php`)
	.then(response => response.json())
	.then(result => {
		if (data.length == result.length) {
		} else {
			const item = result[result.length-1];
			const message = item.message_text;
			const timestamp = item.message_timestamp;
			const li = document.createElement("li");
			li.innerHTML = `<p>${message}</p><p>${timestamp}</p>`;
			display.appendChild(li);
			data = result;
		}
	})
}

interval = setInterval(() => {
	getData();
}, 1000)

const send = () => {
	const value = input.value
	const data = { "message": value };
	fetch(`${url}/chat.php`, {
		method: "POST",
		body: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json"
		}
	})
	.then(response => response.text())
	.then(result => {
		console.log(result)
	})
	input.value = "";
}

input.addEventListener("keyup", (event) => {
	if (event.keyCode === 13) {
		event.preventDefault();
		send();
	}
})

