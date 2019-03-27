class AddStateToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :state, :string
  end
end
