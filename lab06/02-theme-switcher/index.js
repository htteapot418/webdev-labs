chgThemeBtns = ['default', 'desert', 'ocean', 'high-contrast'];

const changeTheme = (e) => document.body.className = e.currentTarget.id

chgThemeBtns.forEach(id => {
  document.getElementById(id).addEventListener('click', changeTheme)
});
