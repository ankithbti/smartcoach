# == Schema Information
#
# Table name: blogs
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  author       :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  content      :text
#  ispublished  :integer          default(0)
#  releasemonth :string(255)      default("December")
#  image        :string(255)
#  user_id      :integer
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Blog do
  it "should be valid" do
    Blog.new.should be_valid
  end
end
