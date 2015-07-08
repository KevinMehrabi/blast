class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :current_ip

      t.timestamps null: false
    end
  end
end
