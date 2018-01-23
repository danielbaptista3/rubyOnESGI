class CreateAnimes < ActiveRecord::Migration[5.1]
  def change
    create_table :animes do |t|
      t.string :nom
      t.string :genre
      t.string :studio
      t.string :producteur
      t.string :resume
      t.date :apparition
      t.string :statut
      t.integer :note
      t.boolean :adapteManga
      t.string :manga
      t.integer :idComment
      t.integer :idPersonnage
      t.integer :idEpisode

      t.timestamps
    end
  end
end
