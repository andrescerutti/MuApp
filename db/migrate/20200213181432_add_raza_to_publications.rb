class AddRazaToPublications < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :raza, :string
  end
end
