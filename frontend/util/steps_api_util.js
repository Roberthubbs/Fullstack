export const createStep = projectId => (
    $.ajax({
        method: 'POST',
        url: `api/projects/${projectId}/steps`
    })
);