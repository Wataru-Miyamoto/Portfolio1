class CreateDrafts < ActiveRecord::Migration[6.1]
  def change
    create_table :drafts do |t|
      t.string :name
      t.string :title
      t.string :period
      t.string :content
      t.string :target
      t.string :counter
      t.string :link
      t.boolean :emergency
      t.boolean :primary_sector
      t.boolean :other_sector
      t.boolean :emigration
      t.boolean :senior
      t.boolean :parenting
      t.boolean :other
      t.string :select
      t.string :comment
      t.string :draft_approver_id
      t.string :draft_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
