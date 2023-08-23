//navbar toggler
document.querySelector('#login-tog').addEventListener("click", () => {
    document.querySelector('.signin').classList.toggle('show-login');
})
//login toggler
document.querySelector('#login-close').addEventListener("click", () => {
    document.querySelector('.signin').classList.toggle('show-login');
})
//tools toggler
document.querySelector('#tool-toggler').addEventListener("click", () => {
    document.querySelector('.top-bar').classList.toggle('hide-top');
})

