class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :mail, null: false, default: ""
      t.string :password, null: false, default: ""
      t.string :password_confirmation, null: false, default: ""
      t.boolean :admin, null: false, default: false
      t.boolean :editor, null: false, default: false

      t.timestamps
    end
  end
end
