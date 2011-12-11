$(document).ready(function() {
    $('#product-variants :radio').focus(updateSelectedStyle);
    $('#product-variants :radio').blur(updateSelectedStyle);
    $('#product-variants :radio').change(updateSelectedStyle);
})

function updateSelectedStyle() {
    $('#product-variants :radio').removeClass('focused').next().removeClass('focused');
    $('#product-variants :radio:checked').addClass('focused').next().addClass('focused');
}