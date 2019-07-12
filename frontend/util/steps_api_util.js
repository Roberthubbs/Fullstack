


export const createStep = (step) => {
    return $.ajax({
        method: 'POST',
        url: `api/projects/${step.projectId}/steps`,
        data: {step: 
            {body: step.body,
            title: step.title,}
        }
    })
};