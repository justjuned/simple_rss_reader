class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.datetime :published
      t.integer :feed_id

      t.timestamps
    end
  end
end
