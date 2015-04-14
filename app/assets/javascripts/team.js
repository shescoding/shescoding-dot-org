$(function() {
    var rowLength = 4;
    var $numTeamMembers = $(".team-member").size();
    var lastRow = $numTeamMembers - $numTeamMembers % rowLength;

    $(".team-member" ).each(function( index ) {
        index ++;
        if (index <= lastRow) {
            var numInThisRow = 12/rowLength;
            $(this).addClass("col-md-"+numInThisRow);
        } else {
            var numInThisRow = 12/($numTeamMembers % rowLength);
            $(this).addClass("col-md-"+numInThisRow);
        }
    });

    var $numAdvisors = $(".advisor").size();
    var lastRowAdvisors = $numAdvisors - $numAdvisors % rowLength;

    $(".advisor" ).each(function( index ) {
        index ++;
        if (index <= lastRowAdvisors) {
            var numInThisRow = 12/rowLength;
            $(this).addClass("col-md-"+numInThisRow);
        } else {
            var numInThisRow = 12/($numAdvisors % rowLength);
            $(this).addClass("col-md-"+numInThisRow);
        }
    });
});
