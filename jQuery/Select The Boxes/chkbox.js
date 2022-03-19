var $checkboxes = $('#form input[type="checkbox"]');
$checkboxes.change(function(){
 var counter = $checkboxes.filter(':checked').length;
 if(counter == 1){
 $('#result').text(counter +' box is checked');
 }
 else {
 $('#result').text(counter +' boxes are checked');
 }
})
