# frozen_string_literal: true

# == Schema Information
#
# Table name: tv_shows
#
#  id            :bigint           not null, primary key
#  name          :string
#  timing        :datetime
#  tv_channel_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TvShow < ApplicationRecord
  belongs_to :tv_channel
end
