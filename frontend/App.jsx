import React from 'react';
import HelloContainer from './components/tempHomePage/hello_container';
import LogInFormContainer from './components/session_form/login_form_container';
import SignUpFormContainer from './components/session_form/signup_form_container';
import {
    Route, 
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';
const App = () => (
    <div>
        <HelloContainer />
        <div className="bottom-header">
            <h1 className="site-title">fishables</h1>
        </div>
        <Switch>
            <Route exact path="/login" component={LogInFormContainer} />
            <Route exact path="/signup" component={SignUpFormContainer} />
        </Switch>
       
    </div>
);



export default App;