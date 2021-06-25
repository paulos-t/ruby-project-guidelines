class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
        t.string :name
        t.integer :salary
        t.string :alma_mater
    end
  end
end
