import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login } from '../../actions/session_actions';
import SessionForm from './session_form';
import { signup } from '../../actions/session_actions';
import { resetErrors } from '../../actions/session_actions';

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'Signup',
        navLink: <Link to="/login">Login</Link>
    };
};

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signup(user)),
        loginDemo: (user) => dispatch(login(user)),
        resetErrors: () => dispatch(resetErrors())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);