class AddOfertaToPublication < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :oferta, :integer
  end
end
