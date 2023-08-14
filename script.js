// Description: This file contains the javascript code for the chat application
// Author: WinterSunset95
// Licensed at Infotech, Bridge Street, Rengkai
// Repository: https://github.com/WinterSunset95/InfotechChatapp

const url = "/chatapp"

// Firstly, we check if the user is logged in
let user = localStorage.getItem("username");
let password = localStorage.getItem("password");
console.log("username", user)
if (!user) {
	alert("not logged in")
	window.location.href = `${url}/login/login.html`
}

// We then get the display and inputs as javascript objects
const display = document.getElementById("messages");
const input = document.getElementById("input");

// Initializing a placeholder for our data
let data;
let interval;

const addToUl = (timestamp, message, sender) => {
	const li = document.createElement('li')
	li.innerHTML = `<p>${sender} -- ${timestamp}</p><p>${message}</p>`
	return li;
}

// When a user first enters the page, we want to get all the data from the database
// and display it on the page
// This function does just that
const initialize = () => {
	// This here is a fetch request
	// It is a way to make a request to a server
	// In this case, we are making a request to our own database
	// This database contains a table of user messages
	fetch(`${url}/api/index.php`)
		.then(response => response.json())
		.then(result => {
			data = result.reverse();
			// The data we recieve is in the form of an array of objects
			// For each item in this array, we append a list item (<li></li>) to the unordered list (<ul></ul>)
			for (let i=0; i<data.length; i++) {
				const item = data[i];
				const message = item.message_text;
				const timestamp = item.message_timestamp;
				const sender = item.message_sender;
				const li = addToUl(timestamp, message, sender)
				display.appendChild(li);
			}
		})
	// If by any chance the data fetching failed, we try again
	if (!data) {
		setTimeout(() => {
			console.log("waiting for data");
			initialize();
		}, 1000);
	}
}

// Calling the function from above
initialize();

// The following function checks if there is any new data in the database
const getData = () => {
	user = localStorage.getItem("username");
	password = localStorage.getItem("password");
	fetch(`${url}/api/index.php`)
	.then(response => response.json())
	.then(result => {
		// If the length of our data variable matches the length of the fetch result,
		// We can assume there is no new data 
		// Therefore, nothing is done
		if (data.length == result.length) {
			console.log("no new data");
		} else {
			// However, if the length of our data variable does not match the length of the fetch result,
			// We can assume there is new data 
			const item = result[result.length-1];
			const message = item.message_text;
			const timestamp = item.message_timestamp;
			const sender = item.message_sender;
			const li = addToUl(timestamp, message, sender)
			// Therefore, we append the last item of the fetch result to the unordered list (<ul></ul>)
			display.prepend(li);
			data = result;
		}
	})
}

// The above function is called every second
// This method is called polling
interval = setInterval(() => {
	getData();
}, 1000)

// When the user clicks the send button, we want to send the message to the database
const send = () => {
	const value = input.value
	if (user == null || value == '') {
		return;
	}
	const data = { "user": user, "message": value };
	// Sending a POST request to our own database
	// Along with the message the user typed in
	fetch(`${url}/api/chat.php`, {
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

// When the user presses the "Enter" key, we want to send the message to the database
input.addEventListener("keyup", (event) => {
	if (event.keyCode === 13) {
		event.preventDefault();
		send();
	}
})

