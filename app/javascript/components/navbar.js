const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-drumstore');
  window.addEventListener('scroll', () => {
    if (navbar) {
      if (window.scrollY >= window.innerHeight*0.65) {
        navbar.classList.add('navbar-drumstore-black');
        // navbar.classList.add('navbar-drumstore-black a');
      } else {
        navbar.classList.remove('navbar-drumstore-black');
        // navbar.classList.remove('navbar-drumstore-black a');
      }
    }
  });
}

export { initUpdateNavbarOnScroll };
