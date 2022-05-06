const targetElements = document.querySelectorAll('.content, h1');

const getFontSizePx = (e) => parseFloat(getComputedStyle(e).fontSize);
const setFontSizePx = (e, size) => e.style.fontSize = size + 'px';

const makeBigger = () => {
  targetElements.forEach(e => setFontSizePx(e, getFontSizePx(e) + 2));
};

const makeSmaller = () => {
  targetElements.forEach(e => setFontSizePx(e, getFontSizePx(e) - 2));
};

document.querySelector('#a1').addEventListener('click', makeBigger);
document.querySelector('#a2').addEventListener('click', makeSmaller);
