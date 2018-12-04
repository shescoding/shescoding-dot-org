window.addEventListener('touchstart', addMobileClass);

function addMobileClass(){
  let allTooltipDivs = document.querySelectorAll('.the-tooltip');
  let allDescriptions = document.querySelectorAll('.tooltip-description');

  allTooltipDivs.forEach( (tooltip)=> {
    // tooltip.classList.add('mobile');
    tooltip.classList.add('mobile');
  });

  window.removeEventListener('touchstart', addMobileClass);
}