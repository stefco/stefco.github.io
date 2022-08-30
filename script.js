const copyText = e => {
    const t = e.target
    navigator.clipboard.writeText(t.textContent);
    t.style.backgroundColor = 'yellow';
    setTimeout(() => { t.style.backgroundColor = ''; }, 100);
};
[...document.querySelectorAll(".code")].forEach(t => t.addEventListener('click', copyText));
[...document.querySelectorAll("code")].forEach(t => t.addEventListener('click', copyText));
[...document.querySelectorAll("a .code")].forEach(t => t.removeEventListener('click', copyText));
[...document.querySelectorAll("a code")].forEach(t => t.removeEventListener('click', copyText));
