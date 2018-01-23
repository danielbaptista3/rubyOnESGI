class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :nom
      t.string :resume
      t.string :sortie
      t.integer :idComment
      t.integer :idPersonnage
      t.integer :idAnime

      t.timestamps
    end
  end
end
