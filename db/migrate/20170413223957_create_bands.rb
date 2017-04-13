class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :member
      t.string :genre
      t.string :introduction

      t.timestamps
    end
  end
end
