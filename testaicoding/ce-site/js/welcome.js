(function () {
  var enterBtn = document.getElementById('enter-btn');
  if (!enterBtn) return;

  enterBtn.addEventListener('click', function () {
    window.location.href = 'index.html';
  });
})();
