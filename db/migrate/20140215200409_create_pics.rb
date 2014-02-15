class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|    	
    	t.string :title
    	t.text	 :message
    	t.string :who
    	t.timestamps
    end
  end
end
