class DeleteIdAndMangaColumnsFromAnime < ActiveRecord::Migration[5.1]
  def change
    change_table :animes do |t|
      t.remove :idComment, :idEpisode, :idPersonnage, :manga, :adapteManga, :genre, :studio, :producteur
    end
  end
end
