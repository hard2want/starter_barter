class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :other_user_id
      t.integer :other_skill_id
    end
  end
end
