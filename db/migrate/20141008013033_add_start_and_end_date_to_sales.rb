class AddStartAndEndDateToSales < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sale_start_date, :datetime
    add_column :spree_variants, :sale_end_date, :datetime
  end
end
