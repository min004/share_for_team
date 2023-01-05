import React, { useState } from "react";
import logo from './logo.png';

export const Login = (props) => {
    const [email, setEmail] = useState('');
    const [pass, setPass] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(email);
    }

    return (
        <div className="auth-form-container">
            {/* <img src={logo} style={{height:100}}/> */}
            <h2>Login</h2>
            <form className="login-form" onSubmit={handleSubmit}>
                {/* <label htmlFor="email">email</label> */}
                <input value={email} onChange={(e) => setEmail(e.target.value)}type="email" placeholder="e-mail" id="email" name="email" />
                {/* <label htmlFor="password">password</label> */}
                <input value={pass} onChange={(e) => setPass(e.target.value)} type="password" placeholder="********" id="password" name="password" />
                {/* <div> */}
                <button type="submit" onClick={() => props.onFormSwitch('login')}>Log In</button> 
                
                <button className="link-btn" onClick={() => props.onFormSwitch('register')}>
                <text style={{color:'#46536B'}}>Register</text>
                </button>
                {/* <div> */}
            </form>
        </div>
    )
}