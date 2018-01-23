class CreatePersonnages < ActiveRecord::Migration[5.1]
  def change
    create_table :personnages do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end
end
