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
    switch (true) {
        case (txtMatKhau == "" || txtEmail == "" || txtTenTK == "" || txtLMatKhau == ""):
            error.innerText = "*Khong duoc de trong Du Lieu";
            return false; break;
        case (txtMatKhau !== txtLMatKhau):
            error.innerText = "*Nhap lai mat khau khong chinh xac";
            return false; break;
        default: return true;
    }
}