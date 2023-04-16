class CreateDeckLists < ActiveRecord::Migration[7.0]
  def change
    create_table :deck_lists do |t|

      t.timestamps
    end
  end
end
