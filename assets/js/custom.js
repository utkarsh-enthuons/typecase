/*! lazysizes - v5.1.2 */
!function(a,b){var c=b(a,a.document);a.lazySizes=c,"object"==typeof module&&module.exports&&(module.exports=c)}("undefined"!=typeof window?window:{},function(a,b){"use strict";var c,d;if(function(){var b,c={lazyClass:"lazyload",loadedClass:"lazyloaded",loadingClass:"lazyloading",preloadClass:"lazypreload",errorClass:"lazyerror",autosizesClass:"lazyautosizes",srcAttr:"data-src",srcsetAttr:"data-srcset",sizesAttr:"data-sizes",minSize:40,customMedia:{},init:!0,expFactor:1.5,hFac:.8,loadMode:2,loadHidden:!0,ricTimeout:0,throttleDelay:125};d=a.lazySizesConfig||a.lazysizesConfig||{};for(b in c)b in d||(d[b]=c[b])}(),!b||!b.getElementsByClassName)return{init:function(){},cfg:d,noSupport:!0};var e=b.documentElement,f=a.Date,g=a.HTMLPictureElement,h="addEventListener",i="getAttribute",j=a[h],k=a.setTimeout,l=a.requestAnimationFrame||k,m=a.requestIdleCallback,n=/^picture$/i,o=["load","error","lazyincluded","_lazyloaded"],p={},q=Array.prototype.forEach,r=function(a,b){return p[b]||(p[b]=new RegExp("(\\s|^)"+b+"(\\s|$)")),p[b].test(a[i]("class")||"")&&p[b]},s=function(a,b){r(a,b)||a.setAttribute("class",(a[i]("class")||"").trim()+" "+b)},t=function(a,b){var c;(c=r(a,b))&&a.setAttribute("class",(a[i]("class")||"").replace(c," "))},u=function(a,b,c){var d=c?h:"removeEventListener";c&&u(a,b),o.forEach(function(c){a[d](c,b)})},v=function(a,d,e,f,g){var h=b.createEvent("Event");return e||(e={}),e.instance=c,h.initEvent(d,!f,!g),h.detail=e,a.dispatchEvent(h),h},w=function(b,c){var e;!g&&(e=a.picturefill||d.pf)?(c&&c.src&&!b[i]("srcset")&&b.setAttribute("srcset",c.src),e({reevaluate:!0,elements:[b]})):c&&c.src&&(b.src=c.src)},x=function(a,b){return(getComputedStyle(a,null)||{})[b]},y=function(a,b,c){for(c=c||a.offsetWidth;c<d.minSize&&b&&!a._lazysizesWidth;)c=b.offsetWidth,b=b.parentNode;return c},z=function(){var a,c,d=[],e=[],f=d,g=function(){var b=f;for(f=d.length?e:d,a=!0,c=!1;b.length;)b.shift()();a=!1},h=function(d,e){a&&!e?d.apply(this,arguments):(f.push(d),c||(c=!0,(b.hidden?k:l)(g)))};return h._lsFlush=g,h}(),A=function(a,b){return b?function(){z(a)}:function(){var b=this,c=arguments;z(function(){a.apply(b,c)})}},B=function(a){var b,c=0,e=d.throttleDelay,g=d.ricTimeout,h=function(){b=!1,c=f.now(),a()},i=m&&g>49?function(){m(h,{timeout:g}),g!==d.ricTimeout&&(g=d.ricTimeout)}:A(function(){k(h)},!0);return function(a){var d;(a=!0===a)&&(g=33),b||(b=!0,d=e-(f.now()-c),d<0&&(d=0),a||d<9?i():k(i,d))}},C=function(a){var b,c,d=99,e=function(){b=null,a()},g=function(){var a=f.now()-c;a<d?k(g,d-a):(m||e)(e)};return function(){c=f.now(),b||(b=k(g,d))}},D=function(){var g,l,m,o,p,y,D,F,G,H,I,J,K=/^img$/i,L=/^iframe$/i,M="onscroll"in a&&!/(gle|ing)bot/.test(navigator.userAgent),N=0,O=0,P=0,Q=-1,R=function(a){P--,(!a||P<0||!a.target)&&(P=0)},S=function(a){return null==J&&(J="hidden"==x(b.body,"visibility")),J||!("hidden"==x(a.parentNode,"visibility")&&"hidden"==x(a,"visibility"))},T=function(a,c){var d,f=a,g=S(a);for(F-=c,I+=c,G-=c,H+=c;g&&(f=f.offsetParent)&&f!=b.body&&f!=e;)(g=(x(f,"opacity")||1)>0)&&"visible"!=x(f,"overflow")&&(d=f.getBoundingClientRect(),g=H>d.left&&G<d.right&&I>d.top-1&&F<d.bottom+1);return g},U=function(){var a,f,h,j,k,m,n,p,q,r,s,t,u=c.elements;if((o=d.loadMode)&&P<8&&(a=u.length)){for(f=0,Q++;f<a;f++)if(u[f]&&!u[f]._lazyRace)if(!M||c.prematureUnveil&&c.prematureUnveil(u[f]))aa(u[f]);else if((p=u[f][i]("data-expand"))&&(m=1*p)||(m=O),r||(r=!d.expand||d.expand<1?e.clientHeight>500&&e.clientWidth>500?500:370:d.expand,c._defEx=r,s=r*d.expFactor,t=d.hFac,J=null,O<s&&P<1&&Q>2&&o>2&&!b.hidden?(O=s,Q=0):O=o>1&&Q>1&&P<6?r:N),q!==m&&(y=innerWidth+m*t,D=innerHeight+m,n=-1*m,q=m),h=u[f].getBoundingClientRect(),(I=h.bottom)>=n&&(F=h.top)<=D&&(H=h.right)>=n*t&&(G=h.left)<=y&&(I||H||G||F)&&(d.loadHidden||S(u[f]))&&(l&&P<3&&!p&&(o<3||Q<4)||T(u[f],m))){if(aa(u[f]),k=!0,P>9)break}else!k&&l&&!j&&P<4&&Q<4&&o>2&&(g[0]||d.preloadAfterLoad)&&(g[0]||!p&&(I||H||G||F||"auto"!=u[f][i](d.sizesAttr)))&&(j=g[0]||u[f]);j&&!k&&aa(j)}},V=B(U),W=function(a){var b=a.target;if(b._lazyCache)return void delete b._lazyCache;R(a),s(b,d.loadedClass),t(b,d.loadingClass),u(b,Y),v(b,"lazyloaded")},X=A(W),Y=function(a){X({target:a.target})},Z=function(a,b){try{a.contentWindow.location.replace(b)}catch(c){a.src=b}},$=function(a){var b,c=a[i](d.srcsetAttr);(b=d.customMedia[a[i]("data-media")||a[i]("media")])&&a.setAttribute("media",b),c&&a.setAttribute("srcset",c)},_=A(function(a,b,c,e,f){var g,h,j,l,o,p;(o=v(a,"lazybeforeunveil",b)).defaultPrevented||(e&&(c?s(a,d.autosizesClass):a.setAttribute("sizes",e)),h=a[i](d.srcsetAttr),g=a[i](d.srcAttr),f&&(j=a.parentNode,l=j&&n.test(j.nodeName||"")),p=b.firesLoad||"src"in a&&(h||g||l),o={target:a},s(a,d.loadingClass),p&&(clearTimeout(m),m=k(R,2500),u(a,Y,!0)),l&&q.call(j.getElementsByTagName("source"),$),h?a.setAttribute("srcset",h):g&&!l&&(L.test(a.nodeName)?Z(a,g):a.src=g),f&&(h||l)&&w(a,{src:g})),a._lazyRace&&delete a._lazyRace,t(a,d.lazyClass),z(function(){var b=a.complete&&a.naturalWidth>1;p&&!b||(b&&s(a,"ls-is-cached"),W(o),a._lazyCache=!0,k(function(){"_lazyCache"in a&&delete a._lazyCache},9)),"lazy"==a.loading&&P--},!0)}),aa=function(a){if(!a._lazyRace){var b,c=K.test(a.nodeName),e=c&&(a[i](d.sizesAttr)||a[i]("sizes")),f="auto"==e;(!f&&l||!c||!a[i]("src")&&!a.srcset||a.complete||r(a,d.errorClass)||!r(a,d.lazyClass))&&(b=v(a,"lazyunveilread").detail,f&&E.updateElem(a,!0,a.offsetWidth),a._lazyRace=!0,P++,_(a,b,f,e,c))}},ba=C(function(){d.loadMode=3,V()}),ca=function(){3==d.loadMode&&(d.loadMode=2),ba()},da=function(){if(!l){if(f.now()-p<999)return void k(da,999);l=!0,d.loadMode=3,V(),j("scroll",ca,!0)}};return{_:function(){p=f.now(),c.elements=b.getElementsByClassName(d.lazyClass),g=b.getElementsByClassName(d.lazyClass+" "+d.preloadClass),j("scroll",V,!0),j("resize",V,!0),a.MutationObserver?new MutationObserver(V).observe(e,{childList:!0,subtree:!0,attributes:!0}):(e[h]("DOMNodeInserted",V,!0),e[h]("DOMAttrModified",V,!0),setInterval(V,999)),j("hashchange",V,!0),["focus","mouseover","click","load","transitionend","animationend"].forEach(function(a){b[h](a,V,!0)}),/d$|^c/.test(b.readyState)?da():(j("load",da),b[h]("DOMContentLoaded",V),k(da,2e4)),c.elements.length?(U(),z._lsFlush()):V()},checkElems:V,unveil:aa,_aLSL:ca}}(),E=function(){var a,c=A(function(a,b,c,d){var e,f,g;if(a._lazysizesWidth=d,d+="px",a.setAttribute("sizes",d),n.test(b.nodeName||""))for(e=b.getElementsByTagName("source"),f=0,g=e.length;f<g;f++)e[f].setAttribute("sizes",d);c.detail.dataAttr||w(a,c.detail)}),e=function(a,b,d){var e,f=a.parentNode;f&&(d=y(a,f,d),e=v(a,"lazybeforesizes",{width:d,dataAttr:!!b}),e.defaultPrevented||(d=e.detail.width)&&d!==a._lazysizesWidth&&c(a,f,e,d))},f=function(){var b,c=a.length;if(c)for(b=0;b<c;b++)e(a[b])},g=C(f);return{_:function(){a=b.getElementsByClassName(d.autosizesClass),j("resize",g)},checkElems:g,updateElem:e}}(),F=function(){!F.i&&b.getElementsByClassName&&(F.i=!0,E._(),D._())};return k(function(){d.init&&F()}),c={cfg:d,autoSizer:E,loader:D,init:F,uP:w,aC:s,rC:t,hC:r,fire:v,gW:y,rAF:z}});

$(".menu__item--has-children").on("mouseover",function(){
    var id = "#"+$(this).attr("id");
    $(id + ">.menu__dropdown").addClass("show").addClass("visible");
    $(id + ">.menu__dropdown").slideDown(300);
})
$(".menu__item--has-children").on("mouseleave",function(){
    var id = "#"+$(this).attr("id");
    $(id + ">.menu__dropdown").removeClass("show").removeClass("visible");
    $(id + ">.menu__dropdown").slideUp(300);
})

// Navigation started...
function left_open(e){
    $("body").addClass("w-100").addClass("position-fixed").addClass("left-0").addClass("overflow-hidden");
    $(".popup").addClass("active").addClass("show");
    var data_js="#"+$(e).attr("data-js-popup-button");
    $(data_js).addClass("show").addClass("visible");
}

$(".has_subchild a").on("click",function(){
    var number=$(this).attr("data-parent");
    $(".menu__level-01").attr("data-mobile-level",number);
    $(".popup-navigation__button").attr("data-js-popup-navigation-button","back");
    $(this).parent().find(".menu__level-0"+number).addClass("show");
})

function nav_close(){
    $("body").addClass("w-100").removeClass("position-fixed").removeClass("left-0").removeClass("overflow-hidden");
    $(".popup").removeClass("active").removeClass("show");
    $(".popup__body").each(function(){
        $(this).removeClass("show").removeClass("visible");
    });
    $(".popup-navigation__button").attr("data-js-popup-navigation-button","close");
    $(".menu__level-01").attr("data-mobile-level",1);
    console.log("working...")
}
function nav_back(){
    var number = $(".popup .menu__level-01").attr("data-mobile-level");
    var new_number = number-1;
    $(".popup .menu__level-01").attr("data-mobile-level",new_number);
    if(new_number>0){
        $(".popup .menu__level-0"+number).removeClass("show");
    }
    if(new_number==1){
        $(".popup-navigation__button").attr("data-js-popup-navigation-button","close");
    }
}
$("i.popup-navigation__close").on("click",nav_close);
$(".popup .search__close").on("click",nav_close);
$("i.popup-navigation__back").on("click",nav_back);

// back to top
$('a.footer__back-to-top').click(function () {
    $("html, body").animate({scrollTop: 0}, 600);
    return false;
});

// search function
$(".header__btn-search").on("click",function(){
    left_open(this);
})

// wishlist
$(".header__btn-wishlist").on("click",function(){
    left_open(this);
})

// // cart
// $(".header__btn-cart").on("click",function(){
//     left_open(this);
// })
// compare-full
$(".header__btn-compare").on("click",function(){
    left_open(this);
})

// wishlist-full
$(".popup-wishlist__buttons a").on("click",function(){
    nav_close();
    left_open(this);
})

// filter_sidebar
$(".collection-control__button-sidebar").on("click",function(){
    left_open(this);
})
// left sidebar open/close
$(".layer-navigation__head").each(function(){
    $(this).on("click",function(){
        $(this).toggleClass("open");
        $(this).next().slideToggle()
    })
})

// header height started...
function header_height(){
    var height = $(".header__content.header__content--sticky").innerHeight();
    $(".header__spacer.header__spacer--d.header__spacer--visible").css("height",height+"px");
}
header_height();
$(window).resize(header_height);

// footer accordion
function accordion(){
    $(".accordion-mob .accordion-item span").on("click",function(){
        $(this).parent().next().slideToggle();
    })
}
accordion();

// product detail page slider 
var swiper = new Swiper(".mySwiper", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
    breakpoints: {
        0: {
            slidesPerView: 3,
        },
        768: {
            slidesPerView: 4,
        },
        1024: {
            slidesPerView: 6,
        }
    },
    thumbs: {
        swiper: swiper2,
    },
});
var swiper2 = new Swiper(".mySwiper2", {
    spaceBetween: 10,
    navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
    },
    thumbs: {
        swiper: swiper,
    },
});

// write review
function openReview(){
    $(".review-form").slideToggle();
}

// related product slider 
var swiper = new Swiper(".related-product", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        768: {
            slidesPerView: 2,
        },
        1024: {
            slidesPerView: 4,
        }
    },
});

// function leftsidebar
function left_sidebar(){
    $(".left-sidebar").addClass("active");
    $("body").append("<div class='modal-overlay' onclick='overlay_remove()'></div>");
}
function overlay_remove(){
    $(".left-sidebar").removeClass("active");
    $("body .modal-overlay").remove();
}
$(".left-sidebar span.close").on("click",function(){
    $(".left-sidebar").removeClass("active");
    $("body .modal-overlay").remove();
})

/*----------------------------
   Cart Plus Minus Button
------------------------------ */
// removecart
function removeCart(e){
    $(e).closest(".cart-box").remove();
}
// product detail page cart value update function starts
function dec(e){
    var val = $(e).next("input").val();
    if(isNaN(val)|| val == undefined || val == 1){
        var Newval = 1;
    }
    else{
        var Newval = val - 1;
    }
    $(e).next("input").val(Newval);
    var price = $(".cart-box .cart-content .pro-price span").text();
}
function inc(e){
    var val = $(e).prev("input").val();
    console.log(val);
    if(isNaN(val)|| val == undefined || val < 1){
        var Newval = 1;
    }
    else{
        var Newval = parseInt(val) + 1;
    }
    $(e).prev("input").val(Newval);
}
function inc_dec(e){
    var val = $(e).val();
    console.log(val);
    if(isNaN(val)|| val == undefined || val < 1){
        var Newval = 1;
        $(e).val(Newval);
    }
}
function cartUpdate(){
    var counting, mrp, subtotal = 0, shipping, total = 0;
    $(".cart-box .cart-content").each(function(){
        counting = $(this).find(".cart-plus-minus-box").val();
        mrp = parseInt($(this).find(".pro-price span").text());
        valueTotal = counting * mrp;
        subtotal = subtotal + valueTotal;
        // console.log(counting, mrp, subtotal)
    })
    shipping = parseInt($(".shipping span i").text());
    if(isNaN(shipping)|| shipping == undefined){
        shipping = 0;
    }
    $(".summary-box .subtotal span i").text(subtotal);
    total = subtotal + shipping;
    $(".summary-box .total span b").text("₹"+total);
}
cartUpdate();
$(".cart-plus-minus .inc").on("click",cartUpdate);
$(".cart-plus-minus .dec").on("click",cartUpdate);
$(".cart-plus-minus .cart-plus-minus-box").on("change",cartUpdate);
var loader = '<div class="loader"><div class="loader-inner"><img src="https://typecase.in/assets/images/preloader.svg" alt=""></div></div>';

$(".xyz").on("click",function(){
    $(".xy").append(loader);
    $(".loader").remove();
})
function color_img(e){
    var id = $(e).attr("id");
    $(e).closest(".product-box").append(loader);
    console.log(id)
    // $(".loader").remove();
}


// form validation function started...
var errorvariable = 1;
function NAME(){
  var ID=$("#fname");
  var name_val = ID.val().trim();
  var regName = /^[a-zA-Z ]{3,64}$/;
  if(name_val == null || name_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Name is required.");
    errorvariable =0;
  }else if(!regName.test(name_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid name.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Name verified successfully.");
  }
}
function lastName(){
  var ID=$("#lname");
  var name_val = ID.val().trim();
  var regName = /^[a-zA-Z ]{3,64}$/;
  if(name_val == null || name_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Last name is required.");
    errorvariable =0;
  }else if(!regName.test(name_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid last name.");
    errorvariable =0;
  }else{
      $(ID).nextAll("span.error").css("display","block").css("color","green").html("First name verified successfully.");
  }
}
function phone(){
  var ID = $("#phone");
  var phone_val = $(ID).val().trim();
  var regName = /^[0-9]{10}$/;
  if(phone_val == null || phone_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Phone number is required.");
    errorvariable =0;
    $("button#send_otp").attr("disabled","disable");
  }
  else if(!regName.test(phone_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid mobile number.");
    errorvariable =0;
    $("button#send_otp").attr("disabled","disable");
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Phone number verified successfully.");
    $("button#send_otp").removeAttr("disabled");
  }
}
function send_otp(){
  phone();
  if(errorvariable === 1){
    var ID = $("#phone");
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("OTP send succesfully.");
    $(this).attr("disabled","disable");
    $(ID).attr("disabled","disable");
    setTimeout(function() {
      $(ID).nextAll("span.error").css("display","block").css("color","#727272").html("Didn't received OTP? <a id='send_again' onclick='send_otp()'>Resend now</a>");}, 30000
    );
  }
}
function otp(){
  var ID = $("#otp");
  var phone_val = $(ID).val().trim();
  var regName = /^[0-9]{6}$/;
  if(phone_val == null || phone_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("OTP is required.");
    errorvariable =0;
  }else if(!regName.test(phone_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid OTP.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","none").css("color","green").html("OTP verified successfully.");
  }
}
function email(){
  var ID = $("#email");
  var email_val = $(ID).val().trim();
  var regName = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  if(email_val == null || email_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Email ID is required.");
    errorvariable =0;
  }else if(!regName.test(email_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid Email ID.");
    errorvariable =0;
  }else{
      $(ID).nextAll("span.error").css("display","block").css("color","green").html("Email ID verified successfully.");
  }
}
function age(){
  var ID = $("#age");
  var phone_val = $(ID).val().trim();
  var regName = /^[0-9]{2,3}$/;
  if(phone_val == null || phone_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Age is required.");
    errorvariable =0;
  }else if(!regName.test(phone_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid age.");
    errorvariable =0;
  }
  else if(phone_val<18){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Minimum required age is 18 years.");
    errorvariable =0;
  }
  else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Age verified successfully.");
  }
}
function zip(){
  var ID = $("#zip");
  var phone_val = $(ID).val().trim();
  var regName = /^[0-9]{6}$/;
  if(phone_val == null || phone_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Pincode is required.");
    errorvariable =0;
  }else if(!regName.test(phone_val)){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please enter valid pincode.");
    errorvariable =0;
  }
  else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Pincode verified successfully.");
  }
}
function state(){
  var ID = $("#state");
  var val = $(ID).children("option:selected").attr("disabled");
  if(val == "disabled"){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please select a state.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("State selected successfully.");
  }
}
function city(){
  var ID = $("#city");
  var name_val = ID.val().trim();
  if(name_val == null || name_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("City is required.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("City verified successfully.");
  }
}
function district(){
  var ID = $("#district");
  var name_val = ID.val().trim();
  if(name_val == null || name_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("district is required.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("District verified successfully.");
  }
}
function address(){
  var ID = $("#address");
  var name_val = ID.val().trim();
  if(name_val == null || name_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("district is required.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("District verified successfully.");
  }
}
function location2(){
  var ID = $("#location");
  var val = $(ID).children("option:selected").attr("disabled");
  if(val == "disabled"){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please select a location.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Location selected successfully.");
  }
}
function date(){
  var ID = $("#date");
  var val = $(ID).children("option:selected").attr("disabled");
  if(val == "disabled"){
    errorvariable =0;
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please select a date.");
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Date selected successfully.");
  }
}
function time(){
  var ID = $("#time");
  var val = $(ID).children("option:selected").attr("disabled");
  if(val == "disabled"){
    errorvariable =0;
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Please select a time.");
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Time selected successfully.");
  }
}
function checkbox(){
  var ID=$("#checkbox");
  if(val == "disabled"){
    errorvariable =0;
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Checkbox is required.");
  }else{
    $(ID).nextAll("span.error").css("display","none");
  }
}
function password(){
  var ID = $("#password");
  var phone_val = $(ID).val().trim();
  var regName = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
  if(phone_val == null || phone_val== ""){
    $(ID).parent().nextAll("span.error").css("display","block").css("color","red").html("Password is required.");
    errorvariable =0;
  }else if(phone_val.length < 8){
    $(ID).parent().nextAll("span.error").css("display","block").css("color","red").html("Password must be at least 8 characters long.");
    errorvariable =0;
  }else if(!regName.test(phone_val)){
    $(ID).parent().nextAll("span.error").css("display","block").css("color","red").html("Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character.");
    errorvariable =0;
  }else{
    $(ID).parent().nextAll("span.error").css("display","block").css("color","green").html("Password verified successfully.");
  }
}
function confirm_password(){
  var ID = $("#confirm_password");
  var pass_val = $("#password").val();
  var phone_val = $(ID).val().trim();
  if(phone_val == null || phone_val== ""){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("Confirm Password is required.");
    errorvariable =0;
  }else if(phone_val !== pass_val){
    $(ID).nextAll("span.error").css("display","block").css("color","red").html("The password doesnot match to confirm password.");
    errorvariable =0;
  }else{
    $(ID).nextAll("span.error").css("display","block").css("color","green").html("Confirm Password verified successfully.");
  }
}
$("#pass_show").on("click",function(){
  var e = $(this);
  var type = $(this).parent().parent().prev(".form-control").attr("type");
  if(type=="password"){
      e.find("i").removeClass("fa-eye").addClass("fa-eye-slash");
      e.parent().parent().prev(".form-control").attr("type","text");
  }else{
      e.find("i").removeClass("fa-eye-slash").addClass("fa-eye");
      e.parent().parent().prev(".form-control").attr("type","password");
  }
})
$(".checkout-submit").on('click',function(){
    $("form.checkout-form button.submit").trigger("click");
})



var iframe_src = $('.video-slide').attr('href');
var youtube_video_id = iframe_src.match(/youtube\.com.*(\?v=|\/embed\/)(.{11})/).pop();
if (youtube_video_id.length == 11) {
    var video_thumbnail = 'https://img.youtube.com/vi/'+youtube_video_id+'/0.jpg';
    $(".video-slide-image").attr("data-src",video_thumbnail);
    console.log(video_thumbnail);
}