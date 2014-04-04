class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :suppliers, through: :taggings
  
  default_scope { order('name') }
end
