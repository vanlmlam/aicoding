(function () {
  var canvas = document.getElementById('fireworks');
  var ctx = canvas.getContext('2d');
  var rockets = [];
  var particles = [];
  var fireTimer = null;
  var W = 0, H = 0;

  function resize() {
    W = canvas.width = window.innerWidth;
    H = canvas.height = window.innerHeight;
  }
  window.addEventListener('resize', resize);
  resize();

  function randomColor() {
    return 'hsl(' + Math.random() * 360 + ', 100%, 60%)';
  }

  function launch(x, targetY) {
    rockets.push({
      x: x,
      y: H,
      vx: (Math.random() - 0.5) * 2,
      vy: -(8 + Math.random() * 3),
      targetY: targetY,
      color: randomColor()
    });
  }

  function explode(rocket) {
    var count = 90;
    for (var i = 0; i < count; i++) {
      var angle = (Math.PI * 2 * i) / count;
      var speed = 1.5 + Math.random() * 5;
      particles.push({
        x: rocket.x,
        y: rocket.y,
        vx: Math.cos(angle) * speed,
        vy: Math.sin(angle) * speed,
        color: rocket.color,
        life: 1,
        decay: 0.008 + Math.random() * 0.012
      });
    }
  }

  function update() {
    var i;

    for (i = rockets.length - 1; i >= 0; i--) {
      var r = rockets[i];
      r.x += r.vx;
      r.y += r.vy;
      r.vy += 0.12;
      if (r.y <= r.targetY || r.vy >= 0) {
        explode(r);
        rockets.splice(i, 1);
      }
    }

    for (i = particles.length - 1; i >= 0; i--) {
      var p = particles[i];
      p.x += p.vx;
      p.y += p.vy;
      p.vy += 0.05;
      p.vx *= 0.985;
      p.vy *= 0.985;
      p.life -= p.decay;
      if (p.life <= 0 || p.y > H) {
        particles.splice(i, 1);
      }
    }
  }

  function draw() {
    ctx.clearRect(0, 0, W, H);

    for (var i = 0; i < rockets.length; i++) {
      var r = rockets[i];
      ctx.fillStyle = r.color;
      ctx.beginPath();
      ctx.arc(r.x, r.y, 3, 0, Math.PI * 2);
      ctx.fill();
    }

    for (var j = 0; j < particles.length; j++) {
      var p = particles[j];
      ctx.globalAlpha = Math.max(p.life, 0);
      ctx.fillStyle = p.color;
      ctx.beginPath();
      ctx.arc(p.x, p.y, 2.2, 0, Math.PI * 2);
      ctx.fill();
    }
    ctx.globalAlpha = 1;
  }

  function loop() {
    update();
    draw();
    requestAnimationFrame(loop);
  }
  loop();

  var SHOW_MS = 10000;   // duration of the firework show
  var LAUNCH_MS = 450;   // delay between rocket launches

  function startShow() {
    if (fireTimer) return;
    var end = Date.now() + SHOW_MS;

    fireTimer = setInterval(function () {
      if (Date.now() >= end) {
        stopShow();
        return;
      }
      var x = W * (0.1 + Math.random() * 0.8);
      var targetY = H * (0.12 + Math.random() * 0.5);
      launch(x, targetY);
    }, LAUNCH_MS);
  }

  function stopShow() {
    if (fireTimer) {
      clearInterval(fireTimer);
      fireTimer = null;
    }
  }

  document.getElementById('firework-btn').addEventListener('click', function (e) {
    // Launch one immediately at the click position, then keep the show going.
    launch(e.clientX, H * (0.15 + Math.random() * 0.45));
    startShow();
  });
})();
