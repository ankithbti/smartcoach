# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  user_type       :integer
#  sub_plan        :integer
#  user_desc       :text
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name,:password, :password_confirmation,:user_type,:sub_plan,:user_desc
  has_secure_password
  has_many :courses, dependent: :destroy
  has_many :o_classes, :class_name => "O_Classe"
  has_many :tutorials, dependent: :destroy
  has_many :blogs, dependent: :destroy

  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token


  validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
	uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }

 private
	def create_remember_token
	  self.remember_token = SecureRandom.urlsafe_base64
	end

end
