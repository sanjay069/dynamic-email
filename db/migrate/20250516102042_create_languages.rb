class CreateLanguages < ActiveRecord::Migration[8.0]
  def change
    create_table :languages do |t|
      t.string :language
      t.string :country

      t.timestamps
    end
  end
end
