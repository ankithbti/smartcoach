class Tutorial < ActiveRecord::Base
  attr_accessible :author, :desc, :image, :title, :group_ids
  has_many :groupings
  has_many :groups, through: :groupings

  #before_save { |course| course.category = category.downcase }

  validates :title, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :desc, presence: true, length: { maximum: 100 }

  default_scope order: 'tutorials.created_at DESC'
end
