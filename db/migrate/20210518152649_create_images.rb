class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      # t.references :user_id, null: false, foreign_key: true
      # t.int :user_id
      t.oid :img

      t.timestamps
    end
  end
end
