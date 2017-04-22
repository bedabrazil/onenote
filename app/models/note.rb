class Note < ApplicationRecord
  belongs_to :user
  has_many :tags_notes
  has_many :tags, through: :tags_notes
  
  has_many :users_notes
  has_many :users, through: :users_notes
  
  validates_presence_of :title, :body, :user
end
