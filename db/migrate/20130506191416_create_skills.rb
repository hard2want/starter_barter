class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :task
      t.string :user_id
    end
  end
end
