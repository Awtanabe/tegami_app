class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.string :title
      t.text :body
      t.integer :option
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
