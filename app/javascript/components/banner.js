import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Great Cocktails", "Pick one"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
