import React from 'react';
import { withRouter } from 'react-router-dom';
class CreateStepForm extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            title: '',
            body: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);

    }

    handleSubmit(){
        e.preventDefault();
        debugger;
        this.props.createStep(projectId).then(() => this.props.history.push(`projects/${this.props.projectId}/edit`))
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }
    
    
    render() {
        
        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <label className="step-title">
                        <input type="text"
                            placeholder="Step Title Here"
                            value={this.state.title}
                            onChange={this.update("title")}
                            className="step-title-input"
                        />
                    </label>
                    <br /> 
                    <label className="step-body">
                        <textarea
                            placeholder="Step"
                            value={this.state.body}
                            onChange={this.update("body")}
                            className="step-body-input"
                        />
                    </label>
                    <br />
                    <input type="submit" value="Create Step" className="step-submit"/>
                </form>
            </div>
        )
    }
}


export default withRouter(CreateStepForm)
