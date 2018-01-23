class EpisodeBelongsToAnime < ActiveRecord::Migration[5.1]
  def change
    change_table :episodes do |t|
      t.belongs_to :anime, index: { unique: true }, foreign_key:true
    end
  end
end
