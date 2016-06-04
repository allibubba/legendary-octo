class CreateSlsData < ActiveRecord::Migration[5.0]
  def change
    create_table :sls_data do |t|
      t.string :name
      t.integer :org_datum_id

      t.timestamps
    end
  end
end
