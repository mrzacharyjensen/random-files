const buttons = document.querySelectorAll('button');

buttons.forEach((button => {
    button.addEventListener('click', () => {
        alert(button.id);
    });
}));

const title = document.querySelector('h1');

title.addEventListener('dblclick', () => {
    alert("what");
});