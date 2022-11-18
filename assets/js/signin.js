function CheckError() {
    let txtTenTK = document.getElementById("txtTenTK").value;
    let txtMatKhau = document.getElementById("txtMatKhau").value;
    let error = document.getElementById("p");
    switch (true) {
        case (txtMatKhau == ""|| txtTenTK == ""):
            error.innerText = "*Khong duoc de trong Du Lieu";
            return false; break;
        default: return true;
    }
}