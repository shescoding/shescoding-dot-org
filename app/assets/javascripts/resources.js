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

function incrementLike(event, target) {
  event.preventDefault();
  var form = $(target).parents("form");

  var counterEl = $(target).children()[1];
  var newCount = 1 + parseInt(counterEl.innerText, 10);
  counterEl.innerText = newCount;

  $.ajax(form.attr("action"), {
    type: "POST"
  });
}