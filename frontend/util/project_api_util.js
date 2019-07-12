export const fetchProject = id => (
    $.ajax({
        method: "GET",
        url: `/api/projects/${id}`
    })
);

export const fetchProjects = () => (
    $.ajax({
        method: 'GET',
        url: `/api/projects`
    })
);

export const createProject = (payload) => (
    $.ajax({
        method: 'POST',
        url: '/api/projects',
        data: { project: payload }
        
        
    })
);


export const updateProject = (formData) => {
   
    return $.ajax({
        method: "PATCH",
        url: `/api/projects/${formData.get("project[id]")}`,
        data:  formData ,
        contentType: false,
        processData: false
    })
};

export const deleteProject = (id) => {
    return (
        $.ajax({
            url: `api/projects/${id}`,
            method: "delete"
        })
    );
};

