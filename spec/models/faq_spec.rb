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

require File.dirname(__FILE__) + '/../spec_helper'

describe Faq do
  it "should be valid" do
    Faq.new.should be_valid
  end
end
