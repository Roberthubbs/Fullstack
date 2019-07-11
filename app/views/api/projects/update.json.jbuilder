json.project do 
    json.partial! 'api/projects/project', project: @project 
end

if @project.photo.attachment
    json.photo url_for(@project.photo)
end
  