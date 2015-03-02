class CreateIsolateds < ActiveRecord::Migration
  def change
    create_table :isolateds do |t|
      t.string :name
      t.string :disease
      t.integer :n_samples
      
      t.references :organism, index: true
	  t.references :origin, index: true
	  
      t.timestamps null: false
    end
  end
end
