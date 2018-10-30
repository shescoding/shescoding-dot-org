window.addEventListener('touchstart', addMobileClass);

function addMobileClass(){
  var allTooltipDivs = document.querySelectorAll('.the-tooltip');

  allTooltipDivs.forEach( function(tooltip) {
    tooltip.classList.add('mobile');
  });
}