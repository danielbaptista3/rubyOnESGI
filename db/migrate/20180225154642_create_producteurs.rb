class CreateProducteurs < ActiveRecord::Migration[5.1]
  def change
    create_table :producteurs do |t|
      t.string :nom

      t.timestamps
    end
  end
end
