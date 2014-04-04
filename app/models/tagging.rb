class Tagging < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :tag
end
