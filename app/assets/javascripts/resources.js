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

//getCookie function taken from http://www.w3schools.com/js/js_cookies.asp
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

//setCookie function taken from http://www.w3schools.com/js/js_cookies.asp
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function createNewCookie(target, resourceID){
  document.cookie = "_shescoding_likes = {}";
  newValue = JSON.stringify({[resourceID]: true});
  setCookie("_shescoding_likes", newValue, 365);
  incrementLikeinDb(target);
}

function processLike(event, target){
  event.preventDefault();
  resourceID = target.parentNode.parentNode.action.split('/').slice(-3)[0]
  if (getCookie("_shescoding_likes") === ""){
    createNewCookie(target, resourceID);
  } 
  else {
    updateExistingCookie(target, resourceID);
  };
};

function updateLikeInDb(target, direction) {
  updateLikesHtmlNumber(target, direction);
  let form = $(target).parents('form');
  let incrementUrl = form.attr("action").substring(0, form.attr("action").length-1) + direction;
  $.ajax(incrementUrl, {
    type: "POST"
  });
}

function updateExistingCookie(target, resourceID){
  let direction;
  var oldCookie = getCookie("_shescoding_likes");
  var newCookie = JSON.parse(oldCookie);
  //if resourceId does not exist in the cookie (not liked yet) add it to the cookie and increment the like
  if (!(newCookie.hasOwnProperty(resourceID))){
    newCookie[resourceID] = true;
    direction = 1;
  } else {
    //if resource id does exist in the cookie (liked), remove that resource id from cookie
    delete newCookie[resourceID];
    direction = -1;
  }
  newValue = JSON.stringify(newCookie);
  setCookie("_shescoding_likes", newValue, 365);
  updateLikeInDb(target, direction); 
}

function updateLikesHtmlNumber(target, direction){
  let form = $(target).parents('form');
  var counterEl = form.find('span')[0];
  var button = form.find('button');
  var newCount = parseInt(counterEl.innerText, 10) + direction;
  
  if (newCount >= 0){
    counterEl.innerText = newCount;
  }

  if (newCount === 0) {
    button.removeClass('filled-heart');
    button.addClass('heart');
  }

  if (newCount === 1) {
    button.addClass('filled-heart');
  } 
}

