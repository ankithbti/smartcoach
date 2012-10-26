# == Schema Information
#
# Table name: tutorials
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  image      :string(255)
#  desc       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Tutorial < ActiveRecord::Base
  attr_accessible :author, :desc, :image, :title, :group_ids
  has_many :groupings
  has_many :groups, through: :groupings
  belongs_to :user

  #before_save { |course| course.category = category.downcase }

  validates :title, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :desc, presence: true, length: { maximum: 100 }

  default_scope order: 'tutorials.created_at DESC'
end
