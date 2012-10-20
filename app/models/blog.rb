# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ActiveRecord::Base
  attr_accessible :title, :author, :content, :tag_ids

  has_many :taggings
  has_many :tags, through: :taggings

  #before_save { |course| course.category = category.downcase }

  validates :title, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 20 }

  default_scope order: 'blogs.created_at DESC'

  def self.search(search)
  	if search
      find(:all, conditions: ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
