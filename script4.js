// validate if js is linked to html
console.log('hello');

const toggleconst = document.querySelector('.toggle')
const showcaseconst = document.querySelector('.showcase')

toggleconst.addEventListener('click', ()=>{
    toggleconst.classList.toggle('active')
    showcaseconst.classList.toggle('active')
})

