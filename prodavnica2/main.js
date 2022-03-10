$(document).ready(function() {
	autor();
	izdavac();
	proizvod();
	function autor(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {autor:1},
			success: function(data){
				$("#get_autor").html(data);
			}
		})
	}
	function izdavac(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {izdavac:1},
			success: function(data){
				$("#get_izdavac").html(data);
			}
		})
	}
	function proizvod(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {getProizvod:1},
			success: function(data){
				$("#get_proizvod").html(data);
			}
		})
	}
	$("body").delegate(".autor","click",function(event){
		event.preventDefault();
		var aid=$(this).attr('aid');		
			$.ajax({
			url : "action.php",
			method : "POST",
			data : {get_selected_Autor:1,autor_id:aid},
			success: function(data){
				$("#get_proizvod").html(data);
			}
		})
	})
	$("body").delegate(".selectIzdavac","click",function(event){
		event.preventDefault();
		var iid=$(this).attr('iid');
			$.ajax({
			url : "action.php",
			method : "POST",
			data : {selectIzdavac:1,izdavac_id:iid},
			success: function(data){
				$("#get_proizvod").html(data);
			}
		})		
	})
	$("#search_btn").click(function(){
		var tag=$("#search").val();
		if (tag!="") {
			$.ajax({
			url : "action.php",
			method : "POST",
			data : {search:1,tag:tag},
			success: function(data){
				$("#get_proizvod").html(data);
			}
			})
		}
	})
	$("#signup_button").click(function(event){
		event.preventDefault();
		$.ajax({
			url : "register.php",
			method : "POST",
			data : $("form").serialize(),
			success: function(data){
				$("#signup_msg").html(data);			}
		})
	})
	$("#login").click(function(event){
		event.preventDefault();
		var email = $("#email").val();
		var pass = $("#password").val();
		$.ajax({
			url	:	"login.php",
			method:	"POST",
			data	:	{userLogin:1,userEmail:email,userPassword:pass},
			success	: function(data){
				if (data== "true") {
					window.location.href="profile.php";
				}
			}
		})
	})
	cart_count();
	$("body").delegate("#knjiga","click",function(event){
		event.preventDefault();
		var k_id=$(this).attr('kid');
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {dodavanjeKnjige:1,knjigaId:k_id},
			success : function(data){
				$("#product_msg").html(data);
				cart_count();
			}
		})
	})
	cart_container();
	function cart_container(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {get_cart_product:1},
			success : function(data){
				$("#cart_product").html(data);
			}
		})
		cart_count();
	}
	function cart_count(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {cart_count:1},
			success : function(data){
				$(".badge").html(data);
			}
		})
	}
	$("#cart_container").click(function(event){
		event.preventDefault();
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {get_cart_product:1},
			success : function(data){
				$("#cart_product").html(data);
			}
		})
	})
	cart_checkout();
	function cart_checkout(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {cart_checkout:1},
			success : function(data){
				$("#cart_checkout").html(data);
			}
		})
	}
	$("body").delegate(".qty","keyup",function(){ 
		var pid=$(this).attr("pid");
		var qty=$("#qty-"+pid).val();
		var price=$("#price-"+pid).val();
		var total=qty * price;
		$("#total-"+pid).val(total);
	})
	$("body").delegate(".remove","click",function(event){
		event.preventDefault();
		var pid=$(this).attr("remove_id");
		var oid=$(this).attr("order_id");
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {removeFromCart:1,removeId:pid, orderId:oid},
			success : function(data){
				$("#cart_msg").html(data);
				cart_checkout();				
			}
		})
	})
	$("body").delegate(".update","click",function(event){ 
		event.preventDefault();
		var pid=$(this).attr("update_id");
		var qty=$("#qty-"+pid).val();
		var price=$("#price-"+pid).val();
		var total=$("#total-"+pid).val();		
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {updateProdactFromCart:1,updateId:pid,qty:qty,price:price,total:total},
			success : function(data){
				$("#cart_msg").html(data);
				cart_checkout();
			}
		})
	})
	page();
	function page(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {str:1},
			success :function(data){
				$("#obelezavanje_strana").html(data);
			}
		})
	}
	$("body").delegate("#strana","click",function(){
		var bs=$(this).attr("strana"); 
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {getProizvod:1,setStrana:1,stranaBroj:bs},
			success : function(data){
				$("#get_proizvod").html(data);
			}
		})
	})
	$("#prikazSveKnjige_btn").click(function(){
		$.ajax({
			url : "action.php",
			method : "POST",
			data : {getProizvod:1},
			success : function(data){
				$("#get_proizvod").html(data);
			}
		})
	})
})