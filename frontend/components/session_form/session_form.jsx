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
        this.handleGuestSubmit = this.handleGuestSubmit.bind(this);
    }

    
    componentWillUnmount(){
        this.props.resetErrors();
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e){
        e.preventDefault();
        
        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(() => this.props.history.push("/"));
        
    }
    handleGuestSubmit(e){
        e.preventDefault();
        this.props.loginDemo({ username: "DemoUser", password: "Password" }).then(() => this.props.history.push("/"));
    }

    renderErrors() {
        
        return (
            <div>
                <ul>
                    {this.props.errors.map((error, i) => (
                        <li key={`error-${i}`} className="login-errors">
                            {error}
                        </li>
                    ))}
                </ul>
            </div>
        )
    



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
                    
                    
                      <div className="login-form">
                        <br />
                        <label className="login-label">
                            <input type="text"
                            id="fill"
                            placeholder="Username"
                            value={this.state.username}
                            onChange={this.update('username')}
                            className="login-input"/>
                        </label>
                        <label className="login-label">
                            <input type="password"
                            id="fill"
                            placeholder="Password"
                            value={this.state.password}
                            onChange={this.update('password')}
                            className="password-input"/>
                        </label>
                        <br />
                        <h2 className="impt-label">{this.renderErrors()}</h2>
                        <input className="session-form-submit" type="submit" value={this.props.formType} />  
                        <h2 className="link-change">{this.decideText()}{this.props.navLink}</h2>
                        <button className="session-form-submit" onClick={this.handleGuestSubmit} >Continue As Guest</button>
                      </div>
                </form>
                    
            </div>
            </div>
           
        );
    }
}

export default withRouter(SessionForm);