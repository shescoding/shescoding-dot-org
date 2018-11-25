// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/* Testimonial Section of front page */

  // Returns height of the longest testimonial
  function getLongestTestimonialHeight() {
    var longestHeight = 0;
    var height;
    $('.item').each(function() {
      // removes previous height added with code
      if($(this).attr('style')) {
        $(this).removeAttr( 'style' );
      }
      if ($(this).hasClass('active')) {
        height = $(this).outerHeight();
      } else {
        // Bootstrap puts display: none; on carousel items not currently 
        // shown which will have a height of 0 and temporarily cloning
        // item is the best way to get its actual height after ruling out
        // other options.
        var clonedItem = $(this).clone();
        clonedItem.css("visibility", "hidden");
        $('.carousel-inner').append(clonedItem);
        height = clonedItem.outerHeight();
        clonedItem.remove()  
      }

      if (height > longestHeight) {
        longestHeight = height;
      }
    });
    return longestHeight;
  } 
  
  // Set other testimonial heights to equal height of the longest one
  function setTestimonialHeights(height) {
    $('.item').each(function() {
      if ($(this).height() < height) {      
          $(this).height(height);
      }
    })
  }
  
  setTestimonialHeights(getLongestTestimonialHeight());
  var resizeWindowTimer;
  // When the browser window is done being resized, recalculate longest
  // testimonial height and set other testimonials' heights to be equal
  // to it.
  $(window).resize(function() {
    clearTimeout(resizeWindowTimer);
    resizeWindowTimer = setTimeout(function() {
      setTestimonialHeights(getLongestTestimonialHeight());
    }, 250);
  });
