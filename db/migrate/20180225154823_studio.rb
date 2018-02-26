class Studio < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :nom
      t.date :dateDeCreation

      t.timestamps
    end
  end
end
