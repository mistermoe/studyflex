class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :phone_number
      t.integer :last_question_id
    end
  end
  def self.down
    drop_table :users
  end
end
