class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :groupings
  has_many :tutorials, through: :groupings
end
