class AddPersonaToGuides < ActiveRecord::Migration
  def change
    add_reference :guides, :persona, index: true
  end
end
