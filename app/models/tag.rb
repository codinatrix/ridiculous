class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :suppliers, through: :taggings
  
  # Fails silently. Reasoning: The only failed input is a duplicate or blank.
  # The user doen't need to be told to delete duplicate or blank from input.
  validates :name, uniqueness: true
  validates :name, presence: true
  
  default_scope { order('name') }
end
