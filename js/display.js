const btns = document.getElementsByClassName("accordion");
const pnl = document.getElementsByClassName('panel');

for (i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", handler);

    function handler() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;

        //use DOM element to operate 
        if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    }
}