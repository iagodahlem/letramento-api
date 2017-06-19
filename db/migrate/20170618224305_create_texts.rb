class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts, id: :uuid do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :body, null: false
      t.string :data

      t.timestamps
    end
  end
end
