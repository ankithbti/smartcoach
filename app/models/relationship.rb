# == Schema Information
#
# Table name: relationships
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Relationship < ActiveRecord::Base
  belongs_to :course
  belongs_to :topic
end
