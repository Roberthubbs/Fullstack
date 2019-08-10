import React from 'react'
import { withRouter, Link } from 'react-router-dom';
class NewProjectForm extends React.Component {
    constructor(props){
        super(props)
        this.state = this.props.project;
        this.handleSubmit = this.handleSubmit.bind(this);
        this.state.currentUser = this.props.currentUser;
    }

    // handleSubmit(e){
    //     e.preventDefault();
        
    //     let that = this;
    //     this.props.createProject(this.state).then((project) => {
    //         console.log(project)
    //         that.props.history.push(`/loading`)
    //         }
    //     )
    // }
    handleSubmit(e){
        e.preventDefault();
        
        let that = this;
        
        this.props.createProject(this.state).then((project) => {
            that.props.history.push(`/projects/${project.payload.project.id}/edit`)
            }
        )
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }


    render() {
        if (this.state.currentUser){
            return (
                <div className="create-new-desc-only">
                    <form onSubmit={this.handleSubmit} className="new-proj-form">
                        <label className="first-create-project">First, name your project
                        <br />
                            <input type="text"
                                placeholder="Brief Description of Your Project Here"
                                value={this.state.description}
                                onChange={this.update("description")}
                                className="new-proj-desc"
                            />
                        </label>
                        <br/>
                        <input type="submit" value="Contine to Finish Fishable!" className="new-proj-button"/>
                    </form>
                </div>
            )
        } else {
            return (
                <div className="sign-in-to-continue">
                     <div className="direct-to-sign-in">  
                        <h1 className="please-sign-in">Please Sign Up or Login as a Guest to continue</h1>
                        <Link className="sign-in-portal"to="/login">
                            Sign up/ Guest portal
                        </Link>
                    </div> 
                </div>
            )
        }
    }
}

export default withRouter(NewProjectForm);
