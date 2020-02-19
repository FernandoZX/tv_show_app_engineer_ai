class CreateTvChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_channels do |t|
      t.string :name

      t.timestamps
    end
  end
end
