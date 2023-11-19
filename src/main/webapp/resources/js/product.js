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
    let sortByProduct = document.getElementById("sortByProduct").value;
    //Gọi controller
    window.location="productGetAllData?sortBy="+sortByProduct;
}
function changeDirectionProduct(){
    let directionProduct = document.getElementById("directionProduct").value;
    let sortByProduct = document.getElementById("sortByProduct").value;
    switch (directionProduct) {
        // case "Default":
        //     window.location="categoryGetAllData?direction=ASC&sortBy=productId";
        //     break;
        case "ASC":
            window.location="productGetAllData?direction=" + directionProduct + "&sortBy="+sortByProduct;
            break;
        case "DESC":
            window.location="productGetAllData?direction=" + directionProduct + "&sortBy="+sortByProduct;
            break;
    }
    // window.location="productGetAllData?direction="+direction;
}