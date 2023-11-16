$('#createDataModal').on('hidden.bs.modal', function (e) {
    $('#categoryId').val('');
    $('#categoryName').val('');
    $('#categoryDescription').val('');
    $('#categoryStatus').val('true');

});
$('table .delete').click(function () {
    let getId = $(this).parent().find('#prId').val();
    $('#productIdDelete').val(getId);
});


function changeSortByProduct(){
    let sortBy = document.getElementById("sortBy").value;
    //Gọi controller
    window.location="productGetAllData?sortBy="+sortBy;
}
function changeDirectionProduct(){
    let direction = document.getElementById("direction").value;
    switch (direction) {
        // case "Default":
        //     window.location="categoryGetAllData?direction=ASC&sortBy=productId";
        //     break;
        case "ASC":
            window.location="productGetAllData?direction=" + direction + "&sortBy=";
            break;
        case "DESC":
            window.location="productGetAllData?direction=" + direction + "&sortBy=";
            break;
    }
    // window.location="productGetAllData?direction="+direction;
}