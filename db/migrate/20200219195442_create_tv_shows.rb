# frozen_string_literal: true

class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.timestamp :timing
      t.references :tv_channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
