@projects.each do |project|
    json.set! project.id do 
       json.partial! project, project: project
        
        if project.photo.attachment
            
            json.photo url_for(project.photo)
        end
        
    end
end 