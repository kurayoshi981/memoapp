$(document).ready(function() {
  var $pb = $('.progress .progress-bar');
  $('#m-multi-trigger-0').click(function() {
    $pb.attr('data-transitiongoal', 0).progressbar({display_text: 'center'});
  });
  $('#m-multi-trigger-50').click(function() {
    $pb.attr('data-transitiongoal', 50).progressbar({display_text: 'center'});
  });
  $('#m-multi-trigger-100').click(function() {
    $pb.attr('data-transitiongoal', 100).progressbar({display_text: 'center'});
  });
});
