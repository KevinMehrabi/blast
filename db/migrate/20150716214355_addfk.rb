class Addfk < ActiveRecord::Migration
  def change
    add_foreign_key :comments :places
  end
end
