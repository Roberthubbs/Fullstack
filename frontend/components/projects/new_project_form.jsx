import React from 'react'



class NewProjectForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            decription: "",
            materials: "",
            body: "",
            photoFile: undefined
        }
        this.handleSubmit = this.handleSubmit.bind(this);
    };

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e){
        e.preventDefault()
        // const project = Object.assign({}, this.state)
        const project = new FormData();
        project.append('project[description]', this.state.description)
        project.append('project[materials]', this.state.materials)
        project.append('project[body]', this.state.body)
        if (this.state.photoFile){
            project.append(project[photo], this.state.photoFile)
        }
        // this.props.createNewProject(project).then(() => this.props.history.push("/"))
    }
    
    render() {
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
                        <label className="project-labels">Project Steps
                        <br />
                            <textarea className="proj-input"
                            placeholder="Project Steps Here"
                            value={this.state.body}
                            onChange={this.update("body")}
                            >
                            </textarea>
                        </label>
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

export default NewProjectForm
