# frozen_string_literal: true

class CreateTvShowReminders < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_show_reminders do |t|
      t.references :tv_show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamp :timing_tv_show

      t.timestamps
    end
  end
end
