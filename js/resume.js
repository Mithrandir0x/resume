
$(function(){
  $('.obfuscatedField').each(function(i, e){
    var $e = $(e);
    var $ph = $(e).find('.placeholder');
    var $c = $e.find('.content');
    var content = Tea.decrypt($c.text(), 'resume');
    $c.remove();

    $ph.on('click', function(){
      var $this = $(this);
      $ph.remove();
      $e.html(content);
      $e.addClass('revealed');
    });

    $e.css('display', 'block');
  });
});
