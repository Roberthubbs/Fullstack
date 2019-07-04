import React from 'react';
import { Link } from 'react-router-dom';
const Hello = ({currentUser, logout}) => {

    const loginOrSignUp = () => (
        <nav className="login-signup">
            <Link to="/login">Sign In |</Link>
            <Link to="/signup">Sign Up!</Link>
        </nav>
    );
    const welcomeUser = () => (
        <nav className="greet-user">
            <h2 className="username-greeting">{currentUser.username}</h2>
           
                <button className="logout-button-h" onClick={logout}>Sign Out</button>
            
            
            
        </nav>
    );

    return currentUser ? welcomeUser() : loginOrSignUp();
}

export default Hello;