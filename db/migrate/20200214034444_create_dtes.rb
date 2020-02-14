class CreateDtes < ActiveRecord::Migration[5.2]
  def change
    create_table :dtes do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
