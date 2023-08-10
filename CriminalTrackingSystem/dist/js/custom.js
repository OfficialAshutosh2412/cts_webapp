////navbar toggler
document.querySelector('#togglebtn').addEventListener("click", () => {
    document.querySelector('.navs-item').classList.toggle('show');
})
//tools toggler
document.querySelector('#tool-toggler').addEventListener("click", () => {
    document.querySelector('.top-bar').classList.toggle('hide-top');
})
