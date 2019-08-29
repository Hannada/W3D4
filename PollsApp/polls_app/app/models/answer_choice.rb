# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer_Choice < ApplicationRecord
  belongs_to :question, 
    class_name: :Question, 
    foreign_key: :question_id,
    primary_key: :id 
  
  has_many :responses,
    class_name: :Response, 
    foreign_key: :answer_id, 
    primary_key: :id 
end
