const edit_button = document.getElementById('edit-button');
const save_button = document.getElementById('save-button');
const edit_form   = document.getElementById('edit-form');
const display_form= document.getElementById('display-form');
edit_button.addEventListener('click',startEdit);
function startEdit(){
    display_form.style.display="none";
    edit_form.style.display="block";
}