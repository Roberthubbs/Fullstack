# == Schema Information
#
# Table name: steps
#
#  id         :bigint           not null, primary key
#  title      :string
#  body       :text
#  project_id :integer
#

class Step < ApplicationRecord 

validates :title, :body, presence: true

belongs_to :project,
    foreign_key: :project_id,
    class_name: :Project


end 
