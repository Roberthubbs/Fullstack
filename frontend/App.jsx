import React from 'react';
import HelloContainer from './components/tempHomePage/hello_container';
import LogInFormContainer from './components/session_form/login_form_container';
import SignUpFormContainer from './components/session_form/signup_form_container';
import ProjectIndexContainer from './components/projects/project_index_container';
import { AuthRoute } from './util/route_util';
// import ProjectItemContainer from './components/projects/project_item_container';
import ProjectShowContainer from './components/projects/project_show_container';
import CategoryIndexContainer from './components/categories/category_index_container';
import NewProjectContainer from './components/projects/new_project_container';
import CategoryShowContainer from './components/categories/category_show_container';
import EditProjectContainer from './components/projects/edit_project_container';
import LoadingProjectContainer from './components/projects/loading_proj_container';
import StepFormContainer from './components/steps/create_step_container'
import {
    Route, 
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';
import LoadingProjectForm from './components/projects/loading_proj_form';

const App = () => (
    <div>
        <HelloContainer />
        
        <div className="bottom-header">
        <div className="left-side-nav">
            <img src="fishablesIcon.png" className="logo-small" />
            <h1 className="site-title">fishables</h1>
        </div>
           <div className="right-side-links">
                <Link className="cat-link" to="/categories">Categories</Link>
                <Link className="create-link"to="/project/create">Create New Project</Link>
            </div> 
        </div>

       
        <Switch>
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
            <Route exact path="/projects/:projectId" component={ProjectShowContainer} />
            <Route exact path="categories/projects/:projectId" component={ProjectShowContainer} />
            <Route exact path="/categories/:categoryId" component={CategoryShowContainer} />
            <Route exact path="/" component={ProjectIndexContainer} />
            <Route exact path="/project/create" component={NewProjectContainer} />
            <Route exact path="/categories" component={CategoryIndexContainer} />
            <Route exact path="/loading" component={LoadingProjectContainer} />
            <Route path="/projects/:projectId/edit" component={EditProjectContainer} />
            <Route path="/projects/:projectId/steps" component={StepFormContainer} />
        </Switch>
        <div className="perm-bottom-border">
       <footer >
            <img src="fishablesIcon.png" className="logo-larger" />
       </footer>
        </div> 
    </div>
);



export default App;