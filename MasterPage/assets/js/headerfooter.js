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