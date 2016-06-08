class CreateThs < ActiveRecord::Migration[5.0]
  def change
    create_table :ths do |t|
      t.string :name
      t.integer :sls_datum_id

      t.timestamps
    end
  end
end
