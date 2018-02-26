class CreateGenre < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :nom
      t.string :description
    end
  end
end
