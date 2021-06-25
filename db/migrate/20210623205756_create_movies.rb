class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
        t.string :name
        t.integer :year_released
    end
  end
end
