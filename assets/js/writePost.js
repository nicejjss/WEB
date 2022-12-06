// function Checkpost(){
//     var tieude = document.getElementById("title");
//     var anh =document.getElementById("postimg");
//     var noidung= document.getElementById("news_content");
//     if(tieude.value.trim()=="" || anh.value.trim()=="" || noidung.value.trim()==""){
//         alert("Khong duoc de trong du lieu");
//               return false;
//     }
//     else{

//     }
// }
function Changeimg(){
    var url = document.getElementById("postimg");
    var img =URL.createObjectURL(url.files[0]);
    var display =document.getElementById("imgdisplay");
    display.src = img;
    console.log(url.files[0].name);
}