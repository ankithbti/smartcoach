# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  course_id  :integer
#  image      :string(255)
#  desc       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :author, :desc, :image, :title, :topic_ids
  has_many :relationships
  has_many :topics, through: :relationships

  #before_save { |course| course.category = category.downcase }

  validates :title, presence: true, length: { maximum: 100 }
  validates :author, presence: true, length: { maximum: 100 }
  validates :desc, presence: true, length: { maximum: 1000 }

  default_scope order: 'courses.created_at DESC'
end
