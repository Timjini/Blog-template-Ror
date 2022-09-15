// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"




// //Navbar hamburger button

// const button = document.querySelector('#menu-button');
// const menu = document.querySelector('#menu');


// button.addEventListener('click', () => {
//   menu.classList.toggle('hidden');
// });


// //CARDS ANIMATION
// const observer = new IntersectionObserver((entries) => {
//   entries.forEach((entry) => {
//       console.log(entry)
//       if (entry.isIntersecting){
//           entry.target.classList.add('show');
//       } else {
//           entry.target.classList.remove('show');
//       }
//   }); 
// });


// const hiddenElements = document.querySelectorAll('.hidden');
// hiddenElements.forEach((el) => observer.observe(el));


//Make textarea expendable
// function getScrollHeight(elm){
//   var savedValue = elm.value
//   elm.value = ''
//   elm._baseScrollHeight = elm.scrollHeight
//   elm.value = savedValue
// }

// function onExpandableTextareaInput({ target:elm }){
//   // make sure the input event originated from a textarea and it's desired to be auto-expandable
//   if( !elm.classList.contains('autoExpand') || !elm.nodeName == 'trix-editor' ) return
  
//   var minRows = elm.getAttribute('data-min-rows')|0, rows;
//   !elm._baseScrollHeight && getScrollHeight(elm)

//   elm.rows = minRows
//   rows = Math.ceil((elm.scrollHeight - elm._baseScrollHeight) / 16)
//   elm.rows = minRows + rows
// }


// // global delegated event listener
// document.addEventListener('input', onExpandableTextareaInput)
