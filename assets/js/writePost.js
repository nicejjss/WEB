function Checkpost(){
    var tieude = document.getElementById("title").value.trim();
    var anh =document.getElementById("postimg");
    var noidung= document.getElementById("news_content").value.trim();
    switch(true){
        case(tieude==""): alert("Khong dc de trong tieu de"); return false;break;
        case(anh.value==""): alert("Phai co Anh"); return false;break;
        case(noidung==""): alert("Khong dc de trong noi dung"); return false;break;
        default: {
            tieude = tieude.replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;").replace(/'/g,"&apos;");
            document.getElementById("title").value = tieude;
     
            noidung = noidung.replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;").replace(/'/g,"&apos;");
            document.getElementById("news_content").value = noidung;
             return true;
        }
    }
    // if(tieude=="" || anh.value=="" || noidung==""){
    //     alert("Khong duoc de trong du lieu!!!");
    //         return false;
    // }
    // else{
       
    // }
}
function Changeimg(){
    var url = document.getElementById("postimg");
    var img =URL.createObjectURL(url.files[0]);
    var display =document.getElementById("imgdisplay");
    display.src = img;
    console.log(url.files[0].name);
}