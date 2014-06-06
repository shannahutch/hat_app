class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
