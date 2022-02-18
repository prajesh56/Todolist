class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.belongs_to :user, null: false
      t.string :task, null: false
    end
  end
end
