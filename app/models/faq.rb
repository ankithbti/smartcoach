# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  question   :string(255)
#  answer     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#

class Faq < ActiveRecord::Base
  attr_accessible :question, :answer, :order_id
  default_scope order: 'faqs.order_id ASC'
end
