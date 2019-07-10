import React from 'react'

class NewProjectForm extends React.Component {
    constructor(props){
        super(props)
        this.state = this.props.project;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e){
        debugger;
        e.preventDefault();
        this.props.createProject(this.state).then(() => this.props.history.push(`/projects/${this.state.id}/edit`))
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }


    render() {
        
        return (
            <div className="create-new-desc-only">
                <form onSubmit={this.handleSubmit}>
                    <label className="first-create-project">First, name your project
                         <input type="text"
                            placeholder="Brief Description of Your Project Here"
                            value={this.state.description}
                            onChange={this.update("description")}
                            className="new-proj-desc"
                        />
                    </label>
                    <input type="submit" value="Contine to Finish Fishable!"/>
                </form>
            </div>
        )
    }
}

export default NewProjectForm;
