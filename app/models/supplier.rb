class Supplier < ActiveRecord::Base
  
  validates :name, :address, :latitude, :longitude, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 200}
  validates :address, length: {maximum: 500}
end
