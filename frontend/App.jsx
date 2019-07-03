import React from 'react';
import HelloContainer from './components/tempHomePage/hello_container';
import LogInFormContainer from './components/session_form/login_form_container';
import SignUpFormContainer from './components/session_form/signup_form_container';
import ProjectIndexContainer from './components/projects/project_index_container';
import { AuthRoute } from './util/route_util';
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
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
        </Switch>
       
    </div>
);



export default App;