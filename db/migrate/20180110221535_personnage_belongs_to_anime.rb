class PersonnageBelongsToAnime < ActiveRecord::Migration[5.1]
  def change
    change_table :personnages do |t|
      t.belongs_to :anime, index: { unique: true }, foreign_key:true
    end
  end
end
