module Spree
  Product.class_eval do
    delegate_belongs_to :master, :sale_price
    delegate_belongs_to :master, :sale_start_date
    delegate_belongs_to :master, :sale_end_date
  end
end