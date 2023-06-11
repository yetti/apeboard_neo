class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :subject, null: false
      t.string :name, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :url
      t.string :password
      t.text :message, null: false

      t.timestamps
    end
  end
end
