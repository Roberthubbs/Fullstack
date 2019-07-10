import React from 'react';
import { Link } from 'react-router-dom';
const Hello = ({currentUser, logout}) => {

    const loginOrSignUp = () => (
        <nav className="login-signup">
            <div className="letf-nav-bar">
                <Link to="/">
                    <img className="homeButton"src="homeButton.png" />
                </Link>
            </div>
            <div className="right-nav-bar">
            <Link to="/login">Sign In |</Link>
            <Link to="/signup">Sign Up!</Link>
            </div>
        </nav>
    );
    const welcomeUser = () => (
        <nav className="greet-user">
            <div className="letf-nav-bar">
                <Link to="/">
                    <img className="homeButton" src="homeButton.png" />
                </Link>
            </div>
            <div className="right-nav-bar">
            <h2 className="username-greeting">{currentUser.username}</h2>
           
                <button className="logout-button-h" onClick={logout}>Sign Out</button>
            </div>
            
            
        </nav>
    );

    return currentUser ? welcomeUser() : loginOrSignUp();
}

export default Hello;