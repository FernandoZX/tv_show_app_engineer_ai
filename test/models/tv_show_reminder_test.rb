# == Schema Information
#
# Table name: tv_show_reminders
#
#  id             :bigint           not null, primary key
#  tv_show_id     :bigint           not null
#  user_id        :bigint           not null
#  timing_tv_show :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class TvShowReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
