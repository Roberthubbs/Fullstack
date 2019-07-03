# == Schema Information
#
# Table name: projects
#
#  id              :bigint           not null, primary key
#  description     :string           not null
#  body            :text             not null
#  materials       :text             not null
#  number_of_likes :integer          not null
#  author_id       :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Project < ApplicationRecord

    validates :description, :body, :author_id, :number_of_likes, presence: true


    belongs_to :author,
    foreign_key: :author_id,
    class_name: :User


    
end
