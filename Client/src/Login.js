import React, { useState } from "react";
// import logo from './logo.png';
import axios from 'axios';

export const Login = (props) => {
    const [ID, setID] = useState('');
    const [pass, setPass] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(ID);
    }

    function onlogin(e) {
        e.preventDefault();
        console.log(ID)
        // fetch('http://localhost:9599/login/', {
        // method: 'POST',
        // headers: {
        //     'Content-Type': 'application/json',
        // },
        // body: JSON.stringify({
        //     'ID': ID,
        //     'pass': pass
        // })
        // })
        // .then(response => response.json())
        // .then(response => {
        // if (response.token) {
        //     localStorage.setItem('wtw-token', response.token);
        // }
        // })
        let data = {
            id: ID,
            pw: pass,
        } 
        axios.post('http://localhost:5000/login',
              JSON.stringify(data), {
          headers: {
            "Content-Type": `application/json`,
          },
        })
        .then((res) => {
          console.log(res);
        });
    }

    return (
        
        <div className="auth-form-container">
            {/* <img src={logo} style={{height:100}}/> */}
            <h2>Login</h2>
            <form className="login-form" onSubmit={handleSubmit}>
                {/* <label htmlFor="email">email</label> */}
                <input value={ID} onChange={(e) => setID(e.target.value)}type="ID" placeholder="ID" id="ID" name="ID" />
                {/* <label htmlFor="password">password</label> */}
                <input value={pass} onChange={(e) => setPass(e.target.value)} type="password" placeholder="********" id="password" name="password" />
                {/* <div> */}
                {/* <button type="submit" onClick={() => props.onFormSwitch('login')}>Log In</button>  */}
                <button type="submit" onClick={onlogin}>Log In</button> 
                <button className="link-btn" onClick={() => props.onFormSwitch('register')}>
                <text>Register</text>
                </button>
                {/* <div> */}
            </form>
        </div>
    )
}