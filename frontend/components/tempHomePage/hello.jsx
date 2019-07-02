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
        <div className="greet-user">
            <h2 className="username-greeting">Welcome to fishables, {currentUser.username}</h2>
            <button className="logout-button-h" onClick={logout}>Sign Out</button>
        </div>
    );

    return currentUser ? welcomeUser() : loginOrSignUp();
}

export default Hello;