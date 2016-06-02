class CreateOrgs < ActiveRecord::Migration[5.0]
  def change
    create_table :orgs do |t|
      t.string :title
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
