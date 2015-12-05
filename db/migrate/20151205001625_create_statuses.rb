class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.boolean :space_status

      t.timestamps null: false
    end
  end
end
