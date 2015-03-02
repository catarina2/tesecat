class CreateGenes < ActiveRecord::Migration
  def change
    create_table :genes do |t|
      t.string :name
      t.string :sequence
      t.integer :reference
      t.string :uniprot
      t.string :symbol

	  t.references :isolated, index: true
	  
      t.timestamps null: false
    end
  end
end
