# frozen_string_literal: true

class CreateFavouriteShows < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_shows do |t|
      t.references :tv_show
      t.references :user
      t.boolean :marked

      t.timestamps
    end
  end
end
