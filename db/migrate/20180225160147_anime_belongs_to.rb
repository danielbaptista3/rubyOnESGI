class AnimeBelongsTo < ActiveRecord::Migration[5.1]
  def change
    change_table :animes do |t|
      t.belongs_to :producteur, index: { unique: true }, foreign_key:true
      t.belongs_to :studio, index: { unique: true }, foreign_key:true
      t.belongs_to :auteur, index: { unique: true }, foreign_key:true
      t.belongs_to :genre, index: { unique: false }, foreign_key:true
    end
  end
end
