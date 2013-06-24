class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string     :title
      t.references :star

      t.timestamps
    end
  end
end