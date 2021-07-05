class CreateRepairs < ActiveRecord::Migration[6.1]
  def change
    create_table :repairs do |t|
      t.string :type
      t.string :location
      t.integer :requestor_user_id
      t.integer :respondor_user_id

      t.timestamps
    end
  end
end
