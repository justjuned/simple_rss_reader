class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
