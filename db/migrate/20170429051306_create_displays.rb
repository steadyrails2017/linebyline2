class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :caption

      t.timestamps null: false
    end
  end
end
