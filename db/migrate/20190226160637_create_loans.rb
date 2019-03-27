class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :id_loan
      t.datetime :return
      t.references :equipment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
