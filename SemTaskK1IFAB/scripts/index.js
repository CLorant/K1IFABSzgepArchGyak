function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
}

const toggler = document.getElementsByClassName("navbar-toggler")[0];

function openCloseToggler() {
    if (toggler.id == "closed") {
        toggler.id = "open";
    }
    else {
        toggler.id = "closed";
    }
}