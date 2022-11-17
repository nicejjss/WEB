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

function check_register() {
    let txtTenTK = document.getElementById("txtTenTK").value;
    let txtEmail = document.getElementById("txtEmail").value;
    let txtMatKhau = document.getElementById("txtMatKhau").value;
    let txtNLMatKhau = document.getElementById("txtNLMatKhau").value;

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

    if (txtNLMatKhau == "") {
        document.getElementById("messageErrNLMK").innerHTML = "Mật khẩu được không để trống !";
    } else
        if (txtNLMatKhau != txtMatKhau) {
            document.getElementById("messageErrNLMK").innerHTML = "Mật khẩu không trùng khớp !";
        } else {
            document.getElementById("messageErrNLMK").innerHTML = "";
        }

}