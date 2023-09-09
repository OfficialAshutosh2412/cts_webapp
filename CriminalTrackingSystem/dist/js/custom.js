//navbar toggler
document.querySelector('#login-tog').addEventListener("click", () => {
    document.querySelector('.signin').classList.toggle('show-login');
})
//tools toggler
document.querySelector('#tool-toggler').addEventListener("click", () => {
    document.querySelector('.top-bar').classList.toggle('hide-top');
})
//preloader
var load=document.getElementById("preloader");
function myfunction() {
    load.style.display="none"
}

