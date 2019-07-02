import React from 'react';
import { withRouter } from 'react-router-dom';


class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e){
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    renderErrors(){
        return(
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    decideText(){
        if (this.props.formType === 'login'){
            return "New to fishables? "
        } else {
            return "Returning User? "
        }
    };

    render(){
        return (
            <div className="background-image-signup">
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-box">
                    <h2 className="title-login"></h2>
                    <br />
                    {this.props.formType}  
                    {this.renderErrors()}
                      <div className="login-form">
                        <br />
                        <label className="login-label">Username:
                            <input type="text"
                            value={this.state.username}
                            onChange={this.update('username')}
                            className="login-input"/>
                        </label>
                        <label className="login-label">Password:
                            <input type="password"
                            value={this.state.password}
                            onChange={this.update('password')}
                            className="login-input"/>
                        </label>
                        <br />
                        <input className="session-form-submit" type="submit" value={this.props.formType} />
       
                        <h2 className="link-change">{this.decideText()}{this.props.navLink}</h2>
                      </div>
                </form>
            </div>
            </div>
        );
    }
}

export default withRouter(SessionForm);