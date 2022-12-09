var hide=true;
function ShowHideNav(){
    var navside=document.getElementById("side-navigation");
    var overlay=document.getElementById("soverlay");
      if(hide==true){
        hide=false;
        navside.classList.add("side-navigation-show");
        overlay.classList.add("soverlay-show");
      }
      else{
        hide=true;
        navside.classList.remove("side-navigation-show");
        overlay.classList.remove("soverlay-show");
      }
}


function Change() {
    var input = document.getElementById("inputsearch");

    if (input.value.trim() != "") {

        input.value = input.value.replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;").replace(/'/g, "&apos;");

        document.getElementById("inputsearch").value = input.value;

        return true;
    }
    else {
        alert("khong duoc de trong ");

        input.focus = true;

        return false
    }
}
