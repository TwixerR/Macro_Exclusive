class CreateKosiarkas < ActiveRecord::Migration[6.1]
  def change
    create_table :kosiarkas do |t|

      t.timestamps
    end
  end
end
