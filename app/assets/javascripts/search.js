// Toggles between hiding/revealing the form to create a new saved list
function toggle_saved_list_form()
{
  if(!$('#saved_list_form').is(':visible'))
  {
    document.getElementById("saved_list_form").style.display = "block";
  }
  else
  {
    document.getElementById("saved_list_form").style.display = "none";
  }
}