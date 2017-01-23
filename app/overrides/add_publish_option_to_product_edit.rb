Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'add_publish_option_to_product_edit',
                     :insert_after => '[data-hook="admin_product_form_promotionable"]',
                     :text => "
    <div data-hook='admin_product_form_published'>
    <%= f.field_container :published, class: ['form-group'] do %>
              <%= f.label :publish, Spree.t(:publish) %>
              <%= f.error_message_on :published %>
              <%= f.check_box :published, class: 'form-control' %>
          <% end %>
          </div>
  ")
