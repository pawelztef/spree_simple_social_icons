$(document).ready(function(){

  var ext_array = ['png', 'jpg'];
  var form = $('#new_social_link');
  var file_input = $('#social_link_icon_image');
  var url_input = $('#social_link_url');
  var alt_input = $('#social_link_alt');
  var label = $('label[for="social_link_icon_image"]');
  var reset_button = $('#reset');

  form.on('change', function(e) {
    e.preventDefault();
    var file_input_ext = $('#social_link_icon_image').val().split('\.').pop();
    if(file_input_ext.length !== 0) {
      label.html('<i class="glyphicon glyphicon-save"></i>' + file_input.val().split('\\').pop());
    }
  });

  form.on('keyup', function(e) {
    e.preventDefault();
    if((check(file_input) && check(url_input)) || (check(alt_input) && check(url_input)) ) {
      $('[type="submit"]').removeAttr('disabled');
    }else{
      $('[type="submit"]').attr('disabled', 'true');
    }
  });


  reset_button.on('click', function(e) {
    e.preventDefault();
    file_input.val(null);
    url_input.val(null);
    alt_input.val(null);
    label.html('<i class="glyphicon glyphicon-save"></i>Choose file');
    $('[type="submit"]').attr('disabled', 'true');
  });

});

var check = function(tag) {
  if(tag.val().length === 0) {
    return false;
  }else{
    return true;
  }
}
