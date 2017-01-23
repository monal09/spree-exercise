Deface::Override.new(:virtual_path => 'spree/admin/products/index',
                     :name => 'add_publish_status_to_product_index',
                     :insert_before => '[data-hook="admin_products_index_header_actions"]',
                     :text => "<th><%= sort_link @search, :published, Spree.t(:publish_status) %></th>")
