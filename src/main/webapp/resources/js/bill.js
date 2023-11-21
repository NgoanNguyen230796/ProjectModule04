function changeSortByAccount(){
    let sortByAccount = document.getElementById("sortByAccount").value;
    //Gọi controller
    window.location="accountGetAllData?sortBy="+sortByAccount;
}
function changeDirectionBill(){
    let directionBill = document.getElementById("directionBill").value;
    switch (directionBill) {
        case "Default":
            window.location="billGetAllData?direction=ASC&sortBy=billId";
            break;
        case "ASC":
            window.location="billGetAllData?direction=" + directionBill+"&sortBy=created";
            break;
        case "DESC":
            window.location="billGetAllData?direction=" + directionBill+"&sortBy=created";
            break;
    }
}

$('table .show').click(function () {
    let getId = $(this).parent().find('#biId').val();
    $('#billIdOfBillDetail').val(getId);
});