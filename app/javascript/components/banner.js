import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["","mister cocktail"],
    typeSpeed: 300,
    backSpeed: 0,
    backDelay: 500,
    startDelay: 500,
    loop: false,
  });
}

export { loadDynamicBannerText };
