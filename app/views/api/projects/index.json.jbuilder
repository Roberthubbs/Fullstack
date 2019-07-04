@projects.each do |project|
    json.set! project.id do 
        json.extract! project, :id, :description, :body, :materials, :author_id, :number_of_likes
    end
end 