function check_login() {
    let txtTenTK = document.getElementById("txtTenTK").value;
    let txtEmail = document.getElementById("txtEmail").value;
    let txtMatKhau = document.getElementById("txtMatKhau").value;

    if (txtTenTK == "") {

        document.getElementById("messageErrTK").innerHTML = "Tên tài khoản không được để trống !";
    } else {
        document.getElementById("messageErrTK").innerHTML = "";
    }
    if (txtEmail == "") {
        document.getElementById("messageErrEmail").innerHTML = "Email không được để trống ";
    } else {
        document.getElementById("messageErrEmail").innerHTML = "";
    }
    if (txtMatKhau == "") {
        document.getElementById("messageErrMK").innerHTML = "Mật khẩu không được để trống !";
    } else {
        document.getElementById("messageErrMK").innerHTML = "";
    }

}
function CheckError() {
    let txtTenTK = document.getElementById("txtTenTK").value;
    let txtEmail = document.getElementById("txtEmail").value;
    let txtMatKhau = document.getElementById("txtMatKhau").value;
    let txtLMatKhau = document.getElementById("txtNLMatKhau").value;
    let error = document.getElementById("p");
    //var reEmail = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    //var rePass = /^[a-z0-9A-Z]{8,}$/;
    //var reName = /^[a-z0-9A-Z]{3,16}$/;

    switch (true) {
        //case (!reName.test(txtTenTK)): error.innerText = "Tên đăng nhập không đúng định dạng ";
        //    return false; break;
        ////check email : phải có @ , @ không được đứng đầu, phải có 1 dấu chấm, phải có ít nhất 1 ký tự giữa @ và . , phải có ít nhất 1 ký tự sau dấu . , không có khoảng trắng 
        //case (!reEmail.test(txtEmail)): error.innerText = "*Email không đúng định dạng ; VD : Thang17062002@gmail.com";
        //    return false; break;
        //case (!rePass.test(txtMatKhau)): error.innerText = "*Mật khẩu tối thiếu 8 ký tự , ít nhất một chữ cái và một số";
        //    return false; break;
        case (txtMatKhau == "" || txtEmail == "" || txtTenTK == "" || txtLMatKhau == ""):
            error.innerText = "*Khong duoc de trong Du Lieu";
            return false; break;
        case (txtMatKhau !== txtLMatKhau):
            error.innerText = "*Nhap lai mat khau khong chinh xac";
            return false; break;
        default: return true;
    }
}