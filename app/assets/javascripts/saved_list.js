// author: Brett Bush

// Transforms 'show' page into a printable page and opens print prompt
function saved_list_print_page()
{

  to_saved_list_print_layout();

  // Hide non-printable elements, prompt for printing, display non-printable elements
  // Code provided by: Professor St. Clair (North Central College)
  $('.noprint').hide();
  window.print();
  $('.noprint').show();

  undo_saved_list_print_layout();
}

// Transforms 'show' page into a printable format
function to_saved_list_print_layout()
{
  // Create table border
  var table = document.getElementsByClassName("saved_list_table");
  table[0].style.border = "1px solid black";

  // Create table entry borders
  var th = document.getElementsByClassName("saved_list_td");
  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "1px solid black";
  }

  // Display the current date and time in a hidden header
  document.getElementById("print_date").innerHTML = Date();
}

// Transform 'show' page from printable format back to regular format
function undo_saved_list_print_layout()
{
  // Remove table border
  var table = document.getElementsByClassName("saved_list_table");
  table[0].style.border = "none";

  // Remove table entry borders
  var th = document.getElementsByClassName("saved_list_td");
  for(var i = 0; i < th.length; i++)
  {
    th[i].style.border = "none";
  }

  // Erase current date and time
  document.getElementById("print_date").innerHTML = "";
}