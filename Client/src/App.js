import React, { useState } from "react";
import logo from './logo.svg';
import './App.css';
import { Login } from "./Login";
import { Register } from "./Register";
import { Hello } from "./Hello";

function App() {
  const [currentForm, setCurrentForm] = useState('login');
  const [currentStatus, setCurrentStatus] = useState('logged out')
  const toggleForm = (formName) => {
    setCurrentForm(formName);
    console.log(currentForm)
  }

  return (
    <div className="App">
      {
        currentForm === "login" & currentStatus === "logged out" 
        ? <Login onFormSwitch={toggleForm} /> : (
          currentForm === "login" & currentStatus === "logged in" 
          ? <Hello onFormSwitch={toggleForm} /> : <Register onFormSwitch={toggleForm} />)
      }
      
    
      
    </div>
  );
}

export default App;
