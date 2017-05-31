class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :settings
      t.json :preferences

      t.timestamps
    end
  end
end
