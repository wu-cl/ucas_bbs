class CreateHomelandTopicVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :homeland_topic_votes do |t|
      t.integer :topic_id, null:false
      t.string :votename, null:false
      t.text :description
      t.integer :approval, null:false, default: 0
      t.integer :opposite, null:false, default: 0
      t.integer :user_id, null:false

      t.timestamps
    end

    add_index :homeland_topic_votes, :topic_id
  end
end
