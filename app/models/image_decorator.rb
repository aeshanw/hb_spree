Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '92x80#', # thumbs under image
    :small => '140x100>', # images on category view
    :product => '460x310>', # full product image
    :large => '600x600>'  # light box image
  }
end