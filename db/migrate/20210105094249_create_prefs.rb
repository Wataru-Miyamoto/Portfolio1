class CreatePrefs < ActiveRecord::Migration[6.1]
  def change
    create_table :prefs do |t|
      t.string :pref_name
      t.string :pref_code

      t.timestamps
    end
  end
end
