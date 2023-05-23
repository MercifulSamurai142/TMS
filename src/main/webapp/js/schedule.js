var slotdetail=[
    {
        "slot":document.getElementById('slot0'),
        "purpose":document.getElementById('purpose0'),
        "priority":document.getElementById('priority0')
    },
    {
        "slot":document.getElementById('slot1'),
        "purpose":document.getElementById('purpose1'),
        "priority":document.getElementById('priority1')
    },
    {
        "slot":document.getElementById('slot2'),
        "purpose":document.getElementById('purpose2'),
        "priority":document.getElementById('priority2')
    },
    {
        "slot":document.getElementById('slot3'),
        "purpose":document.getElementById('purpose3'),
        "priority":document.getElementById('priority3')
    },
    {
        "slot":document.getElementById('slot4'),
        "purpose":document.getElementById('purpose4'),
        "priority":document.getElementById('priority4')
    },
    {
        "slot":document.getElementById('slot5'),
        "purpose":document.getElementById('purpose5'),
        "priority":document.getElementById('priority5')
    },
    {
        "slot":document.getElementById('slot6'),
        "purpose":document.getElementById('purpose6'),
        "priority":document.getElementById('priority6')
    },
    
];


var form=document.getElementById('form');
var slot_select =document.getElementById('slot');
var purpose_select =document.getElementById('purpose');
var priority_select =document.getElementById('priority');
var slotvalue=document.getElementById('slotvalue');
var index=0;

var form=document.getElementById('form');
var selectdate=document.getElementById('selectdate');
var editdate=document.getElementById('editdate');

function select(index){
    form.style.display='block';
    slot_select.innerHTML=slotdetail[index].slot.innerHTML;
    purpose_select.value=slotdetail[index].purpose.innerHTML;
    slotvalue.value=index;
    editdate.value=selectdate.value;
    //priority_select.value='';
}