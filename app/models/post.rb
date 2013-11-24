class Post < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user
  
  def question?
    self.description.include?("?")
  end
end
