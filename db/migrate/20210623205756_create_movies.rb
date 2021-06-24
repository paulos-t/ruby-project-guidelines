class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
        t.string :title

        timestamp
    end

  end
end
