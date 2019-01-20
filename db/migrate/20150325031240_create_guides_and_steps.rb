class CreateGuidesAndSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :title
      t.string :alias
      t.string :description
      t.integer :likes

      t.timestamps
    end

    create_table :steps do |t|
      t.string :type
      t.text :content
      t.string :level
      t.integer :likes

      t.timestamps
    end

    create_table :guides_steps, id: false do |t|
      t.belongs_to :guide, index: true
      t.belongs_to :step, index: true
    end
  end
end
