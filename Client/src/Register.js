import React, { useState } from "react";

export const Register = (props) => {
    const [email, setEmail] = useState('');
    const [pass, setPass] = useState('');
    const [name, setName] = useState('');
    const [passvar, setPassvar] = useState('');
    const [ID, setID] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(email);
    }

    return (
        <div className="auth-form-container">
            <h2>Register</h2>
        <form className="register-form" onSubmit={handleSubmit}>
            {/* <label htmlFor="name">Name</label> */}
            
            {/* <label htmlFor="email">email</label> */}
            <input value={email} name="email" onChange={(e) => setEmail(e.target.value)}type="ID" placeholder="ID" id="ID" name="ID" />
            <input value={pass} onChange={(e) => setPass(e.target.value)} type="password" placeholder="Password" id="password" name="password" />
            <input value={passvar} onChange={(e) => setPassvar(e.target.value)} type="password" placeholder="Verify Password" id="password" name="password" />
            <input style={{marginTop: 20}} value={name} name="name" onChange={(e) => setName(e.target.value)} id="name" placeholder="Name" />
            <input value={ID} name="ID" onChange={(e) => setID(e.target.value)}type="email" placeholder="e-mail" id="email" name="email" />
            {/* <label htmlFor="password">password</label> */}
            
            <button type="submit">Submit</button>
        </form>
        <button className="link-btn" onClick={() => props.onFormSwitch('login')}>Login</button>
    </div>
    )
}
