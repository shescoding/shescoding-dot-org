class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :type
      t.text :content
      t.string :level
      t.integer :like

      t.belongs_to :guide, index: true

      t.timestamps
    end
  end
end
