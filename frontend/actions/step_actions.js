// export const RECEIVE_STEPS = "RECEIVE_STEPS";
import * as StepAPIUtil from '../util/steps_api_util';

export const RECEIVE_STEP = 'RECEIVE_STEP';

export const receiveStep = step => ({
    type: RECEIVE_STEP,
    step
})
export const createStep = (step) => dispatch => (
    StepAPIUtil.createStep(step).then(step => dispatch(receiveStep(step)))
);
