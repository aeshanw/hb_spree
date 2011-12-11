module Spree::BaseHelper
# human readable list of variant options
  def variant_options(v, allow_back_orders = Spree::Config[:allow_backorders], include_style = true)
    ActiveSupport::Deprecation.warn("variant_options method is deprecated, and will be removed in 0.80.0", caller)
    list = v.option_values.sort{|ov1, ov2| ov1.option_type.position <=> ov2.option_type.position}.map { |ov| "#{ov.presentation}" }.to_sentence({:words_connector => ", ", :two_words_connector => ", "})

    # We shouldn't show out of stock if the product is infact in stock
    # or when we're not allowing backorders.
    unless (allow_back_orders || v.in_stock?)
      list = if include_style
        content_tag(:span, "#{list}", :class => "out-of-stock")
      else
        content_tag(:span, "#{list}", :class => "variant-description")
      end
    end

    list
  end
end