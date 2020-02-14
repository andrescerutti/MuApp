class AddDemandaToPublication < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :demanda, :integer
  end
end
