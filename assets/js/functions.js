function save_profile(){
    var error = 0;
     var cus_phone = $('#cus_phone').val();
     var cus_email = $('#cus_email').val().trim();
     var cus_name = $('#cus_name').val().trim();
     var save="save";
     console.log(cus_email,cus_name,cus_phone);
     if (cus_phone === "") {
    $('#cus_phone_err').html('Phone Name can not be empty');
        $("#cus_phone").css("border-color","red");
        error = 1;
    }  
    if(cus_email === ""){
        $('#cus_email_err').html('Email name can not be empty');
        $("#cus_email").css("border-color","red");
        error = 1;
    }
    if(cus_name === ""){
        $('#cus_name_err').html('Name number can not be empty');
        $("#cus_name").css("border-color","red");
        error = 1;
    }   
   
    console.log(error);
if(error===0) {
    
     $.ajax({
url: 'https://typecase.in/ajax/save_account',
type: 'POST',
data: {
  save: save,
  cus_phone: cus_phone,
  cus_email: cus_email,
  cus_name: cus_name
  
},
success: function(data) {
    Toastify({
         duration: 3000,
      text: "Profile Updated Successfully",
      className: "info",
      style: {
        background: "linear-gradient(to right, #00b09b, #96c93d)",
      }
    }).showToast();
    $('.serr').html(data);
}
});
}
} 

function change_pass(){
    var error = 0;
     var opass = $('#opass').val();
     var pass = $('#pass').val().trim();
     var cpass = $('#cpass').val().trim();
     var save="save";
     console.log(cus_email,cus_name,cus_phone);
     if (cus_phone === "") {
    $('#opass').html('Please enter your old password');
        $("#op_err").css("border-color","red");
        error = 1;
    }  
    if(cus_email === ""){
        $('#pass').html('Please enter new password');
        $("#p_err").css("border-color","red");
        error = 1;
    }
    if(cus_name === ""){
        $('#cpass').html('Confirm password can not be empty');
        $("#op_err").css("border-color","red");
        error = 1;
    }   
   
    console.log(error);
if(error===0) {
    
     $.ajax({
url: 'https://typecase.in/ajax/change-pass',
type: 'POST',
data: {
  save: save,
  pass: pass,
},
success: function(data) {
    Toastify({
         duration: 3000,
      text: "Password changed Successfully",
      className: "info",
      style: {
        background: "linear-gradient(to right, #00b09b, #96c93d)",
      }
    }).showToast();
    $('.serr').html(data);
}
});
}
} 

function saveData(){
var fname = $('#fname').val();
var lname = $('#lname').val().trim();
var address = $('#address').val().trim();
var town = $('#city').val().trim();
var zipcode = $('#zip').val().trim();
var state = $('#state').val().trim();
var phone = $('#phone').val().trim();
var add_info = $('#additional').val().trim();
var add="address";
$.ajax({
url: 'https://typecase.in/ajax/save_address',
type: 'POST',
data: {
  add: add,
  fname: fname,
  lname: lname,
  address: address,
  town: town,
  zipcode: zipcode,
  state: state,
  phone: phone,
  add_info: add_info,
},
success: function(data) {
     $('.serr').html(data);
}
});


}

function addToCart(e) {
    var id = $(e).closest(".product-cart-wrap").attr("data-id");
    var uid = $(e).closest(".product-cart-wrap").attr("data-uid");       
    var action="fetch_data";
    var qty=1;
    console.log("added",id,uid,qty);
    $.ajax({
        url: "https://typecase.in/carts",
        method: "POST",
        data: {
            action: action,
            uid: uid,
            pid: id,
            qty: 1 ,           
        },
        // 
        success: function(data) {
             Toastify({
                 duration: 5000,
              text: "Add to cart successfully",
              className: "info",
              style: {
                background: "linear-gradient(to right, #00b09b, #96c93d)",
              }
            }).showToast();
            $('.cart-dropdown-wrap').html(data);
            var count="count";
             var uid = $(e).closest(".product-cart-wrap").attr("data-uid");  
            $.ajax({
            url: "https://typecase.in/Backup/SK-Cafe/cart_count.php",
            method: "POST",
            data: {
                count: count,
                uid: uid,
                          
            },
        // 
        success: function(data) {
            $('.count_cart').html(data);
        }
    });
        }
    });
}
 function addCart(e) {
    var quantity = parseInt($(e).closest(".product_data_id").find(".product-quantity_val").val());
    var product_id = $(e).closest(".product_data_id").attr("data-id");
    var action="fetch_data";
    console.log(quantity,);
    // var qty=$("input.qty-val").val();
    
    console.log("added",quantity,product_id);
    $(e).html("Added");
    $(e).attr("disabled","disabled").css("opacity",".5");
    $.ajax({
        url: "https://typecase.in/ajax/carts",
        method: "POST",
        data: {
            action: action,
            product_id: product_id,
            quantity: quantity
        },
        // 
        success: function(data) {
            Toastify({
              duration: 5000,                    
              text: "Add to cart successfully.",
              className: "info",
              style: {
                background: "linear-gradient(to right, #00b09b, #96c93d)",
              }
            }).showToast();
            $('.cart-items').html(data);
            
            var count="count";
            $.ajax({
            url: "https://typecase.in/ajax/cart_count",
            method: "POST",
            data: {
                count: count,
            },
        // 
        success: function(data) {
            $('.count_cart').html(data);
        }
    });
        }
    });
}
function removeCart(e) {
    var pid = $(e).closest(".shopping-cart-delete").attr("data-id");
    
    var remove="remove_data";
    
    console.log("removed",pid);
    $.ajax({
        url: "https://typecase.in/ajax/carts",
        method: "POST",
        data: {
            remove: remove,
            // uid: uid,
            pid: pid,
        },
        // 
        success: function(data) {
            Toastify({
                 duration: 5000,
              text: "Cart Removed successfully",
              className: "info",
              style: {
                background: "linear-gradient(to right, #00b09b, #96c93d)",
              }
            }).showToast();
            $('.cart-items').html(data);
            var count="count";
             var uid = $(e).closest(".product-cart-wrap").attr("data-uid");  
            $.ajax({
            url: "https://typecase.in/ajax/cart_count",
            method: "POST",
            data: {
                count: count,
            },
        // 
        success: function(data) {
            $('.count_cart').html(data);
        }
    });
        }
    });
}

// ---------------------------------------------------------Product Filter----------------------------------------------

// $(document).ready(function() {
    
    function filter_data() {
    $("body").append(loader).css("overflow","hidden").css("padding-right","17px");
    $(".loader").addClass("fixed");
    $('.filter_data');
    var catname=$('.filter_data').attr("catname");
    var popular=$('.filter_data').attr("popular");
    var scid=$('.filter_data').attr("scid");
    var action = 'fetch_data';
    var minimum_price = $('#min_price_hide').val();
    var maximum_price = $('#max_price_hide').val();
    var collection = get_filter('collection');
    var size = get_filter('size');
    var color = get_filter('color');
    var range = get_filter('range');
    var sort = $('#sort').val();
    
    // var minimum_price = get_filter('min_value');
    // var maximum_price = get_filter('max_value');
    // console.log(collection,size,color);
    $.ajax({
        url: "https://typecase.in/ajax/fetch.php",
        method: "POST",
        data: {
            catname:catname,
            popular:popular,
            scid:scid,
            action: action,
            collection: collection,
            size: size,
            color:color,
            range:range,
            minimum_price: minimum_price,
            maximum_price: maximum_price,
        },
        success: function(data) {
            $('.filter_data').html(data);
            $(".loader").remove();
            $("body").css("overflow","").css("padding-right","");
        }
    });
    }
    
    function get_filter(class_name) {
    var filter = [];
    $('.' + class_name + ':checked').each(function() {
    filter.push($(this).val());
    });
    return filter;
    }
    
    $('.filter_all').click(function() {
    filter_data();
    });
    
    $(".js-range-slider").ionRangeSlider();
    $(".js-range-slider").on("change", function () {
    var $inp = $(this);
    var v = $inp.prop("value"); // input value in format FROM;TO
    var from = $inp.data("from"); // input data-from attribute
    var to = $inp.data("to"); // input data-to attribute
    $("input.min_value").val(from);
    $("input.max_value").val(to);
    console.log(from, to);
    filter_data();
    });
    
// --------------------------------------------------------------------------Product Color Variant----------------------------------------------------😎Vikas Sejwar❤

function color_variant(e){
    var this_id = $(e);
    var cid = $(e).attr("id");
    var vid = $(e).attr("variant");
    $(e).closest(".product-box").append(loader);
    console.log(vid);
    $.ajax({
        url: "https://typecase.in/ajax/color-variant.php",
        method: "POST",
        data: {
            cid:cid,
            vid:vid,
        },
        success: function(data) {
            $(e).closest("article.list-product").attr("data-id",cid);
            $(e).closest(".product-box").html(data);
            $(".loader").remove();
        }
    });
}

// -----------------------------------------------------------------------------Product Detiail Variation-------------------------------------------------

function pcolor_variant(e){
    var this_id = $(e);
    var cid = $(e).attr("id");
    var vid = $(e).attr("variant");
    $("body").append(loader).css("overflow","hidden").css("padding-right","17px");
    $(".loader").addClass("fixed");
    console.log(vid);
    $.ajax({
        url: "https://typecase.in/ajax/product-detail-variant.php",
        method: "POST",
        data: {
            cid:cid,
            vid:vid,
        },
        success: function(data) {
            // $(e).closest("article.list-product").attr("data-id",cid);
            $(".vairant_section").html(data);
            $(".loader").remove();
            $("body").css("overflow","").css("padding-right","");
        }
    });
}
// ---------------------------------------------------------------------------------Register Page------------------------------------------------------------
    $('#register').click(function () {
        var error=1;
        var name = $('#username').val();
        var phone = $('#mobile').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var cpassword = $('#cpassword').val();
        var register="register";
        if(name===''){
            $('#nameerr').html('Please Enter the Name');
            error=0;
            console.log("name");
        }
        if(email===''){
            $('#emailerr').html('Please Enter the Name');
            error=0;
        }
        if(phone===''){
            $('#phoneerr').html('Please Enter the Phone Number');
            error=0;
        }
        if(password===''){
            $('#passerr').html('Please Enter the Password');
            error=0;
        }
        if(error===1){
            $.ajax({
                type: 'POST',
                url: 'ajax/register.php',
                data: { 
                    email: email,
                    name: name,
                    phone: phone,
                    password: password,
                    register: register,
                    },
                success: function (response) {
                    $('#message').html(response);
                }
            });
        }
    });
function checkmobile() {
    if (!$.isNumeric($("#mobile").val())) {
        $("phoneerr").html("only number is allowed");
        return false;
    } else if ($("#mobile").val().length != 10) {
        $("#phoneerr").html("10 digit required");
        return false;
    }
    else {
        $("#phoneerr").html("");
        return true;
    }
}
$('#mobile').on('input', function () {
        checkmobile();
    });
$('#username').on('input', function () {
        $('#nameerr').html('');
});
$('#email').on('input', function () {
        $('#emailerr').html('');
});
$('#password').on('input', function () {
        $('#passerr').html('');
});
