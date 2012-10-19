# == Schema Information
#
# Table name: groupings
#
#  id          :integer          not null, primary key
#  tutorial_id :integer
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Grouping < ActiveRecord::Base
  belongs_to :tutorial
  belongs_to :group
end
