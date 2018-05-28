
	  $(document).ready(function(){
	      // Activate Carousel
	      $("#myCarousel").carousel();
	      
	      // Enable Carousel Indicators
	      $(".item1").click(function(){
	          $("#myCarousel").carousel(0);
	      });
	      $(".item2").click(function(){
	          $("#myCarousel").carousel(1);
	      });
	      $(".item3").click(function(){
	          $("#myCarousel").carousel(2);
	      });
	      $(".item4").click(function(){
	          $("#myCarousel").carousel(3);
	      });
	      
	      // Enable Carousel Controls
	      $(".left").click(function(){
	          $("#myCarousel").carousel("prev");
	      });
	      $(".right").click(function(){
	          $("#myCarousel").carousel("next");
	      });
	  });

  	
	
  		$('.TAGbutton').click(function(e){
  			console.log(e);
  		});

  	

    jQuery(document).ready(function($) {
      $('.loop').owlCarousel({
        center: false,
        items: 2,
        loop: true,
        margin: 40,
        autoplay:true,
        autoplayTimeout: 2000,
        autoplayHoverPause:true,
        responsive:{
          
          100 : {
            items : 1
          },

          400 : {
            items : 2
          },

          600: {
            items : 3
          },
          
          1100: {
            items: 5
          }, 
        }
      }); 

       $('.loop1').owlCarousel({
        center: false,
        items: 1,
        loop: true,
        margin: 40,
        autoplay:true,
        autoplayTimeout: 5000,
        autoplayHoverPause:true,
        responsive: {
          600: {
            items: 1
          }, 
        }
      });   
    });
    
    var owl = $('#bandirecommend');

    owl.on('mousewheel', '.owl-stage', function (e) {
        if (e.deltaY>0) {
            owl.trigger('next.owl');
        } else {
            owl.trigger('prev.owl');
        }
        e.preventDefault();
    });
