class CreateDecriptions < ActiveRecord::Migration
  def change
    create_table :decriptions do |t|
      t.integer :user_id
      t.integer :quote_id
      t.text :text

      t.timestamps
    end
  end
end
