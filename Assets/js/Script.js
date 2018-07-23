$(document).ready(function(){
  $("#btnreporte").click(function(){

var nombre = "jesusl";
    $.ajax({
            data: { "user":nombre},
            url:   'http://localhost/care4waste/index.php/clasification_controller/get_clasification2',
            type:  'GET',
            beforeSend: function () {
              $("#mensaje").html("espere por favor");
                  console.log("espere por favor");
            },
            success:  function (data) {
                  $("#mensaje").html("");
                  console.log(data);
                  var html = "<div id='pegado'>"+"<tr>"+data[0].clasification_id+"</tr>"+"</div>";
                  $("#tb").html("#pegado");
            }
    });


  })

});

/**
*   I don't recommend using this plugin on large tables, I just wrote it to make the demo useable. It will work fine for smaller tables
*   but will likely encounter performance issues on larger tables.
*
*		<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
*		$(input-element).filterTable()
*
*	The important attributes are 'data-action="filter"' and 'data-filters="#table-selector"'
*/
