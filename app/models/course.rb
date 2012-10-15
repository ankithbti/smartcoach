class Course < ActiveRecord::Base
  attr_accessible :author, :category, :desc, :image, :title

  before_save { |course| course.category = category.downcase }

  validates :title, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :desc, presence: true, length: { maximum: 100 }

  default_scope order: 'courses.created_at DESC'
end
