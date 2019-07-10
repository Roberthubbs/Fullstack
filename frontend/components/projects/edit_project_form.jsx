import React from 'react'
import { withRouter } from "react-router-dom";
import CreateStepForm from '../steps/create_step_container';

class EditProjectForm extends React.Component {
    constructor(props){
        super(props)
        this.state = this.props.project;
        this.state.clicked = false;
        this.handleStepSubmit = this.handleStepSubmit.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this);
        this.clickedX = this.clickedX.bind(this);
        this.appendProject = this.appendProject.bind(this);
        
    };

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    clickedX(){
        this.setState({clicked: true})
    }

    handleStepSubmit(){
        const myFormData = this.appendProject();
        e.preventDefault();
        myFormData.append('project[steps]', this.state.steps)
    }
    appendProject(){
        const { description, materials, photo }= this.state;
        const formDataNew = new FormData();
        formDataNew.append('project[description]', this.state.description)
        formDataNew.append('project[materials]', this.state.materials)
        formDataNew.append('project[photo]', this.state.photo)
        // formDataNew.append('project[steps]', this.state.steps)
        formDataNew.append("project[id]", this.state.id);
        return formDataNew;
    }

    handleSubmit(e){
        
        const myFormData = this.appendProject();
        e.preventDefault();
        // const project = Object.assign({}, this.state)
        // if (this.props.authorId){
        return this.props.updateProject(this.state).then(() => this.props.history.push(`/`))
        // }
        // this.props.updateProject(thi).then(() => this.props.history.push("/"))
    }
    
    render() {
        if (this.state.clicked === false) {
        return (
            <div className="new-project-form">
                {/* <form onSubmit={this.handleStepSubmit}>
                    <label className="project-labels">Add Step
                        <br />
                        {/* <textarea className="proj-input"
                            placeholder="Project Steps Here"
                            value={this.state.steps}
                            onChange={this.update("steps")}
                            >
                            </textarea> */}
                        {/* <CreateStepForm /> */}
                    {/* </label> */}
                {/* </form> */} 
                <form onSubmit={this.handleSubmit} className="project-form-box">
                    <h2 className="new-project-title">Create New Project</h2>
                    <div className="new-project-inputs">
                        <label className="project-labels">Description:
                        <br />
                            <input type="text"
                            placeholder="Brief Description of Your Project Here"
                            value={this.state.description}
                            onChange={this.update("description")}
                            className="new-proj-desc"
                            />
                        </label>
                        <div className="form-clear">
                            <img className="small-clear-icon"src="./fishablesIcon.png" />
                            <p className="small-clear-text">Welcome to fishables project creator! Just follow the form and you'll have a new project in no time</p>
                            <button className="close-clear-button" onClick={this.clickedX}>X</button>
                        </div>
                        <br /> 
                        <label className="project-labels">Project Materials
                        <br />
                            <textarea className="proj-materials-input"
                                placeholder="Materials Here"
                                value={this.state.materials}
                                onChange={this.update("materials")}
                            >
                            </textarea>
                        </label>
                        
                        <label className="project-labels">Photo
                        <br />
                            <input type="file"
                                value={this.state.photo}
                                onChange={this.update("photoFile")}
                                className="project-image-box" />
                        </label>
                        <input className="project-form-submit" type="submit" value="Create New Project!" />
                    </div>
                </form>
            </div>
        )} else {
            return (
                <div className="new-project-form">
                    <form onSubmit={this.handleSubmit} className="project-form-box">
                        <h2 className="new-project-title">Create New Project</h2>
                        <div className="new-project-inputs">
                            <label className="project-labels">Description:
                        <br />
                                <input type="text"
                                    placeholder="Brief Description of Your Project Here"
                                    value={this.state.description}
                                    onChange={this.update("description")}
                                    className="new-proj-desc"
                                />
                            </label>
                            <br />
                            <label className="project-labels">Project Materials
                        <br />
                                <textarea className="proj-materials-input"
                                    placeholder="Materials Here"
                                    value={this.state.materials}
                                    onChange={this.update("materials")}
                                >
                                </textarea>
                            </label>
                            <label className="project-labels">Add Step
                            <br />
                                {/* <textarea className="proj-input"
                            placeholder="Project Steps Here"
                            value={this.state.steps}
                            onChange={this.update("steps")}
                            >
                            </textarea> */}
                                <CreateStepForm />
                            </label>
                            {/* <select className="category-select">
                                <option onSelect={this.setState({categoryId: Lures.id})}>Lures</option> 
                            </select>  */}
                            <label className="project-labels">Photo
                                <br />
                                <input type="file"
                                    value={this.state.photoFile}
                                    onChange={this.update("photoFile")}
                                    className="project-image-box" />
                            </label>
                            <input className="project-form-submit" type="submit" value="Create New Project!" />
                        </div>
                    </form>
                </div>
            )
        }
    }
}

export default withRouter(EditProjectForm)
