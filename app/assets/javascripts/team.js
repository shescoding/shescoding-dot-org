$(function() {
    var rowLength = 4;
    var $numTeamMembers = $(".team-member").size();
    var lastRow = $numTeamMembers - $numTeamMembers % rowLength;
    console.log($numTeamMembers, lastRow);
    $(".team-member" ).each(function( index ) {
        index ++;
        // console.log( index + ": " + $( this ).text() );
        // if the index is less than lastRow, give it 12/4 in the class name
        // if the index is >= lastRow, give it 12/($numTeamMembers % rowLength)
        if (index <= lastRow) {
            console.log($(this));
            var numInThisRow = 12/rowLength;
            $(this).addClass("col-md-"+numInThisRow)
            // console.log(index, 12/4);
        } else {
            var numInThisRow = 12/($numTeamMembers % rowLength);
            $(this).addClass("col-md-"+numInThisRow)
            // console.log (index, 12/($numTeamMembers % rowLength))
        }
    });
});
