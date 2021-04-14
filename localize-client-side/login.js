const loginForm = document.getElementById('login-form')
console.log(loginForm)

loginForm.addEventListener('submit', (event) => {
    console.log(event)
    event.preventDefault()
    const userName = document.getElementById('username')
    const password = document.getElementById('password')
    fetch('http://localhost:3000/users' , {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json'
        },
        body: JSON.stringify({username: userName.value, password: password.value})
    })
    return false;
})




