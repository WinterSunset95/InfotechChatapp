const signup = () => {
    const name = document.getElementById('uname').value;
    const password = document.getElementById('Password').value;
    const confirm = document.getElementById('ConfirmPassword').value;
    const gmail = document.getElementById('Gmail').value;
    const phone = document.getElementById('Pnumber').value;
    if (name == '' || password == '' || confirm == '' || gmail == '' || phone == '') {
        alert('Please fill all the fields')
    } else if (password != confirm) {
        alert('Password and Confirm Password should be same')
    } else {
        const user = {
            name: name,
            password: password,
            gmail: gmail,
            phone: phone
        }
        console.log(user)
        fetch(`${url}/api/signup.php`, {
            method: 'POST',
            body: JSON.stringify(user)
        })
        .then(res => res.json())
        .then(data => {
            if (data.status == 'true') {
                alert('Signup Successfull')
                window.location.href = `${url}/login/login.html`
            } else {
                alert("Signup Failed");
            }
        })
    }
}
