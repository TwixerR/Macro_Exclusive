class CreateClothes < ActiveRecord::Migration[6.1]
  def change
    create_table :clothes do |t|

      t.timestamps
    end
  end
end
