class ChangePersonasQuestionsToText < ActiveRecord::Migration
  def up
  	change_column :personas, :questions, :text
  end

  def down
  	connection.execute(%q{
	    alter table personas
	    alter column questions
	    type json using cast(questions as json)
	  })
  end
end
