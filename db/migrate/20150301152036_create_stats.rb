class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :n_studies
      t.text :info
      
      t.references :gene, index: true
      t.references :mutation, index: true

      t.timestamps null: false
    end
  end
end
