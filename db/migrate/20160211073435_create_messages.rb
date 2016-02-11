class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :sender, index: true, foreign_key: true
      t.belongs_to :recipient, index: true, foreign_key: true
      t.belongs_to :group, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
