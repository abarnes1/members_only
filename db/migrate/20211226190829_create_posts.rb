class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.timestamps

      t.text :message, null: false
      t.belongs_to :user, foreign_key: true, null: false
    end
  end
end
