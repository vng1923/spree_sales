Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_sale_price_to_product_edit',
  :insert_after => "[data-hook='admin_product_form_price']",
  :text => "
    <div data-hook='admin_product_form_sale_price'>
      <%= f.field_container :sale_price, class: ['form-group'] do %>
        <%= f.label :sale_price, raw(Spree.t(:sale_price) ) %>
        <%= f.text_field :sale_price, :value =>
          number_to_currency(@product.sale_price, :unit => ''),
          class: 'form-control' %>
        <%= f.error_message_on :sale_price %>
      <% end %>
    </div>

    <div data-hook='admin_product_form_sale_start_date'>
      <%= f.field_container :sale_start_date do %>
        <%= f.label :sale_start_date, raw(Spree.t(:sale_start_date)) %>
        <%= f.text_field :sale_start_date, value: @product.sale_start_date, class: 'datepicker form-control' %>
      <% end %>
    </div>

    <div data-hook='admin_product_form_sale_start_date'>
      <%= f.field_container :sale_end_date do %>
        <%= f.label :sale_end_date, raw(Spree.t(:sale_end_date)) %>
        <%= f.text_field :sale_end_date, value: @product.sale_end_date, class: 'datepicker form-control' %>
      <% end %>
    </div>
  ")