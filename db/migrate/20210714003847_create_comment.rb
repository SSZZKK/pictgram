class CreateComment < ActiveRecord::Migration[5.2]
  
  def change
    create_table :comments do |t|
    t.integer "user_id"
    t.integer "topic_id"
   
   end
  end
end
