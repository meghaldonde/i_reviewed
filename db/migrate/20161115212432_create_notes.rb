class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
