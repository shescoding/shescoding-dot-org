// Functions called on resources#index
function initializeSelectedCategory(currentUrl, container) {
  var indexOfOctothorpe = currentUrl.indexOf('#');

  if (indexOfOctothorpe > -1) {
    var categoryIdIndex = indexOfOctothorpe + 1;
    var newSelectedCategory = '.filter_' + currentUrl.slice(categoryIdIndex);
    var queryString = '*[data-category="' + newSelectedCategory + '"]';
    toggleSelectedClasses(queryString);
    container.isotope({filter: newSelectedCategory});
  }
}

function toggleSelectedClasses(target) {
  $('.selected').toggleClass('selected');
  $(target).toggleClass('selected');
}

function filterSelectedCategory(event, currentUrl, target, container) {
  if (currentUrl.indexOf('resources/tags') < 0) {
    event.preventDefault();
    toggleSelectedClasses(target);
    container.isotope({filter: target.dataset.category});
  }
}

function scrollToTop(event) {
  event.preventDefault();
  $('html, body').animate({scrollTop: 0}, 'slow');
}


function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length,c.length);
        }
    }
    return "";
}


function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}


function incrementLike(event, target) {
  event.preventDefault();
  var form = $(target).parents('form');

  var resourceID = target.parentNode.parentNode.action.split('/')[4]
  console.log(resourceID);

  //no shescoding cookie object exists
  if (getCookie("_shescoding_likes") === "")
  {
    document.cookie = "_shescoding_likes  = {}";
  } 
   
  newValue = JSON.stringify({[resourceID]: true});
  setCookie("_shescoding_likes", newValue, 365); 


  // else 

  //shescoding cookie object exists

  
  //check for resourceID key
  //add shescoding resourceID and   


  var counterEl = form.find('span')[0];
  var newCount = 1 + parseInt(counterEl.innerText, 10);
  counterEl.innerText = newCount;

  if (newCount === 1) {
    var button = form.find('button');
    button.addClass('filled-heart');
  }

  $.ajax(form.attr("action"), {
    type: "POST"
  });
}

