Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_sale_price_to_product_edit',
  :insert_after => "erb[loud]:contains('text_field :price')",
  :text => "
    <%= f.field_container :sale_price do %>
      <%= f.label :sale_price, raw(Spree.t(:sale_price) ) %>
      <%= f.text_field :sale_price, :value =>
        number_to_currency(@product.sale_price, :unit => '') %>
      <%= f.error_message_on :sale_price %>
    <% end %>

    <%= f.field_container :sale_start_date do %>
      <%= f.label :sale_start_date, raw(Spree.t(:sale_start_date)) %>
      <%= f.text_field :sale_start_date, value: @product.sale_start_date, class: 'datepicker' %>
    <% end %>

    <%= f.field_container :sale_end_date do %>
      <%= f.label :sale_end_date, raw(Spree.t(:sale_end_date)) %>
      <%= f.label :sale_end_date, raw(Spree.t(:sale_end_date)) %>
      <%= f.text_field :sale_end_date, value: @product.sale_end_date, class: 'datepicker' %>
    <% end %>
  ")
