import CreateStepForm from './create_step_form';
import { connect } from 'react-redux';
import { createStep } from '../../actions/step_actions';
const mapStateToProps = (state) => {
    return ({
        projectId: state.entities.projects[ownProps.match.params.projectId],
    })
};


const mapDispatchToProps = dispatch => ({
    createStep: projectId => dispatch(createStep(projectId))
});

export default connect(null, mapDispatchToProps)(CreateStepForm);