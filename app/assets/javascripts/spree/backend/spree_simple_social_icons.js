$(document).ready(function(){

  var ext_array = ['png', 'jpg'];
  var file_input = $('#social_link_icon_image');
  var url_input = $('#social_link_url');
  var label = $('label[for="social_link_icon_image"]');
  var reset_button = $('#reset');
  var msg_con = $('#val_msg');
  var msg = "<p>You try to save incorrect data</p>";

  file_input.on('change', function(e) {
    e.preventDefault();
    if((file_input.val().length !== 0)&&(url_input.val().length !== 0)) {
      var file_input_ext = $('#social_link_icon_image').val().split('\.').pop();
        label.html('<i class="glyphicon glyphicon-save"></i>' + file_input.val().split('\\').pop());
        $('[type="submit"]').removeAttr('disabled');
    }
  });

  url_input.on('keyup', function() { 
    if((file_input.val().length !== 0)&&(url_input.val().length !== 0)) {
      $('[type="submit"]').removeAttr('disabled');
    }
  });

  $('[data-toggle="popover"]').popover();

  reset_button.on('click', function(e) {
    e.preventDefault();
    $('#social_link_icon_image').val(null);
    $('#social_link_url').val(null);
    label.html('<i class="glyphicon glyphicon-save"></i>Choose file');
    $('[type="submit"]').attr('disabled', 'true');
  });

});

