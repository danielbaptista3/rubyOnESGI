class DeleteIdColumnsFromEpisode < ActiveRecord::Migration[5.1]
  def change
    change_table :episodes do |t|
      t.remove :idComment, :idAnime, :idPersonnage
    end
  end
end
