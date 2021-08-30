class Comment < ApplicationRecord
  
  attr_accessor :text
  #↑よくわからないけど定義足したらエラーが消えた
  validates :user_id, presence: true
  validates :text, presence: true
  
  belongs_to :user
  belongs_to :topic
end