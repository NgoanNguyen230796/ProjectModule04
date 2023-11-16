function changeSortByAccount(){
    let sortBy = document.getElementById("sortBy").value;
    //Gọi controller
    window.location="accountGetAllData?sortBy="+sortBy;
}
function changeDirectionAccount(){
    let direction = document.getElementById("direction").value;
    switch (direction) {
        case "Default":
            window.location="accountGetAllData?direction=ASC&sortBy=accId";
            break;
        case "ASC":
            window.location="accountGetAllData?direction=" + direction;
            break;
        case "DESC":
            window.location="accountGetAllData?direction=" + direction;
            break;
    }
}