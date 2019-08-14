const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-krypton');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-krypton-white');
      } else {
        navbar.classList.remove('navbar-krypton-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
