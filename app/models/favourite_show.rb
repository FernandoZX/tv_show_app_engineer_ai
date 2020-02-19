# frozen_string_literal: true

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

class FavouriteShow < ApplicationRecord
  validates :tv_show_id, uniqueness: { scope: :user_id,
                                       message: 'You already marked as favourite' }
end
