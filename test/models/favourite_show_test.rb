# == Schema Information
#
# Table name: favourite_shows
#
#  id         :bigint           not null, primary key
#  tv_show_id :bigint
#  user_id    :bigint
#  marked     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FavouriteShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
