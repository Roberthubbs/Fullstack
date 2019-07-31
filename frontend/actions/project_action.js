import * as ProjectAPIUtil from '../util/project_api_util';

export const RECEIVE_ALL_PROJECTS = "RECEIVE_ALL_PROJECTS";
export const RECEIVE_PROJECT = "RECEIVE_PROJECT";
export const REMOVE_PROJECT = "REMOVE_PROJECT";
export const RECEIVE_ALL_SEARCH_PROJECTS = "RECEIVE_SEARCH_PROJECTS";
export const receiveAllProjects = projects => {
    
    return { type: RECEIVE_ALL_PROJECTS,
            projects 
    }
};

export const receiveAllSearchProjects = projects => {
    return { type: RECEIVE_ALL_SEARCH_PROJECTS,
            projects 
    }
};



export const receiveProject = payload => ({
    type: RECEIVE_PROJECT,
    payload
});

export const removeProject = id => ({
    type: REMOVE_PROJECT,
    id
})

export const fetchProject = projectId => dispatch => (
    ProjectAPIUtil.fetchProject(projectId).then(project => dispatch(receiveProject(project)))
);

export const fetchProjects = (str) => dispatch => (
    ProjectAPIUtil.fetchProjects(str).then(projects => dispatch(receiveAllProjects(projects)))

);

export const createProject = project => dispatch => (
    ProjectAPIUtil.createProject(project).then(project => dispatch(receiveProject(project)))
);

export const updateProject = project => dispatch => (
    ProjectAPIUtil.updateProject(project).then(project => dispatch(receiveProject(project)))
);


export const deleteProject = id => dispatch => (
    ProjectAPIUtil.deleteProject(id).then(() => dispatch(removeProject(id)))
);

export const fetchSearchProjects = string => dispatch => {
    
    return(
    Project.APIUtil.fetchSearchProjects(string).then((projects) => dispatch(receiveAllProjects(projects)))
    )
}
