class CreateOriigins < ActiveRecord::Migration
  def change
    create_table :oriigins do |t|
      t.string :orig_t
      t.string :lab_name

      t.timestamps null: false
    end
  end
end
