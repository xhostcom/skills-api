class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.string :title, null: false, default: ""
      t.string :author, null: false, default: ""
      t.text :content, null: false, default: ""

      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
