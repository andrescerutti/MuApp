class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :categoria
      t.integer :cantidad

      t.timestamps
    end
  end
end
