class CreateResists < ActiveRecord::Migration
  def change
    create_table :resists do |t|
      t.string :reference
      t.integer :mic
      
      t.references :drug, index: true
      t.references :isolated, index: true

      t.timestamps null: false
    end
  end
end
