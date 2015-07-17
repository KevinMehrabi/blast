class AddUidToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :UID, :string
  end
end
