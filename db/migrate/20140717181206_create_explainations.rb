class CreateExplainations < ActiveRecord::Migration
  def change
    create_table :explainations do |t|
      t.references :word, index: true
      t.references :description, index: true

      t.timestamps
    end
  end
end
