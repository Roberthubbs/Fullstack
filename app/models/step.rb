class Step < ApplicationRecord 

validates :title, :body, presence: true

belongs_to :project,
    foreign_key: :project_key,
    class_name: :Project


end 