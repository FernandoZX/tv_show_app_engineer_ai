# == Schema Information
#
# Table name: tv_channels
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TvChannel < ApplicationRecord
  has_many :tv_shows, dependent: :destroy
  
end
