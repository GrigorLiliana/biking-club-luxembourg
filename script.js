console.log("hello");

const form = document.querySelector("form");

form.addEventListener("submit", function(event){
    event.preventDefault();
    alert("Message sent successfully");
})