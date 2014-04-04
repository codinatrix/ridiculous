class Supplier < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  has_many :taggings
  has_many :tags, through: :taggings
  
  validates :name, :address, :latitude, :longitude, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 200}
  validates :address, length: {maximum: 500}
end
