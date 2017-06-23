class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts, id: :uuid do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :body, null: false
      t.string :data
      t.belongs_to :user, type: :uuid, null: false, index: true

      t.timestamps
    end
  end
end
