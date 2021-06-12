class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :board, foreign_key: true
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
