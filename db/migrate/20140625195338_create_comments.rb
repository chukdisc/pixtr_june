class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.belongs_to :user, index: true, null: false
      t.belongs_to :image, index: true, null: false

      t.timestamps
    end
  end
end
