@categories.each do |category|
    json.set! category.id do  
        category.extract! category, :id, :name, :description
    end 
end