class AddPlaceToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :place, index: true, foreign_key: true
  end
end
