Deface::Override.new(:virtual_path => "products/show",
                     :name => "add_email_to_friend",
                     :insert_after => "[data-hook='cart_form'], div#cart-form",
                     :partial => "products/email_link")