class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
        t.string :name
        t.string :birthday
        t.string :hometown
        t.string :alma_mater
        t.integer :salary
    end
  end
end
