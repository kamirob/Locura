class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :trademark
      t.boolean :availability

      t.timestamps
    end
  end
end
