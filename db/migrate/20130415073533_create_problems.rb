class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
			t.string 	:nickname
			t.string 	:title
			t.text 		:content, :null => false
			t.integer	:like, :null => false, :default => 0
			t.integer :dislike, :null => false, :default => 0

      t.timestamps
    end
  end
end
