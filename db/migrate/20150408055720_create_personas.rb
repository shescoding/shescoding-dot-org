class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.string :color
      t.text :description
      t.json :questions

      t.timestamps
    end
  end
end
