<script type="text/javascript">
$btn.on('click', function(){
  razorpay.createPayment(data);

  razorpay.on('payment.success', function(resp) {
   
   alert("hello");
   header("Location: cartaction.php");
  razorpay.on('payment.error', function(resp){alert(resp.error.description)}); 

})

</script>
