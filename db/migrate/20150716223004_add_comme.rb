class AddComme < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :messages
      t.timestamps null: false
    end
  end
end
