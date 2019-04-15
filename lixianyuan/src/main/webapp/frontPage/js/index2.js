// Canvas Setup
var c = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
ctx.canvas.width = window.innerWidth;
ctx.canvas.height = window.innerHeight;
window.onresize = function() {
  ctx.canvas.width = window.innerWidth;
  ctx.canvas.height = window.innerHeight;
};

// Vars, Presets
part = [];
cmpx = ctx.canvas.width/2;
cmpy = ctx.canvas.height/2;

pop = 1; // 1=Push / 0=Pull
loc = 1; // 1=Linear / 0=Curved Lines
radius = 3; // Particle Radius
maxParts = 300; // Max. Particles
maxDist = 200; // Max. Connector-Line Distance
bzm = 4; // Multiplicator for Connector Curve
conWidth = 3; // Connector-Line Width
pullPow = 25; // Pull/Push Powert (inverted, less is more)

// Init Particles
function initParts() {
  for (i = 0; i < maxParts; i++) {
    rpx = Math.random() * canvas.width;
    rpy = Math.random() * canvas.height;
    rvx = Math.random() * 2 - 1;
    rvy = Math.random() * 2 - 1;

    part.push({ x: rpx, y: rpy, vx: rvx, vy: rvy });
  }
}

// Random Movement
function cdir() {
  for (i = 0; i < maxParts; i++) {
    rvx = Math.random() * 2 - 1;
    rvy = Math.random() * 2 - 1;
    part[i].vx = rvx;
    part[i].vy = rvy;
  }
}
cdiri = setInterval(cdir, 1000);

// Canvas Collision
function collision() {
  for (i = 0; i < maxParts; i++) {
    if (part[i].x < 0 + radius || part[i].x + radius > canvas.width) {
      part[i].vx = -part[i].vx;
    }
    if (part[i].y - radius < 0 || part[i].y + radius > canvas.height) {
      part[i].vy = -part[i].vy;
    }
  }
}

// get Distance P1,P2
function dist(x1, y1, x2, y2) {
  var a = x1 - x2;
  var b = y1 - y2;
  return Math.sqrt(a * a + b * b);
}

// On Mousemove
document.onmousemove = function(e) {
  cmpx = e.clientX;
  cmpy = e.clientY;
};
document.ontouchmove = function(e){
  cmpx = e.changedTouches[0].pageX;
  cmpy = e.changedTouches[0].pageY;
}

// Pull or Push
function popf() {
  pop == 0 ? (pop = 1) : (pop = 0);
}

// LMB-Hold Handling
var mouseDown = 0;
document.body.onmousedown = function() {
  mouseDown = 1;
};
document.body.onmouseup = function() {
  mouseDown = 0;
  cdir();
};
document.ontouchstart = function() {
  mouseDown = 1;
};
document.ontouchend = function() {
  mouseDown = 0;
  cdir();
};

// Animation Loop
function drawFrame() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  // Loop Particles
  for (i = 0; i < part.length; i++) {
    part[i].x += part[i].vx;
    part[i].y += part[i].vy;
    cDist = dist(cmpx, cmpy, part[i].x, part[i].y);

    // Check for distance and draw Connector
    if (cDist < maxDist) {
      opa = 1 - cDist * (100 / maxDist) / 100;
      ctx.beginPath();
      ctx.lineWidth = conWidth;
      ctx.strokeStyle = "rgba(255,255,255," + opa + ")";
      ctx.moveTo(cmpx, cmpy);
      // ctx.lineTo(part[i].x,part[i].y);
      // ctx.quadraticCurveTo(cmpx, cmpy, part[i].x, part[i].y);
      if(loc == 0){
        if (cmpy > part[i].y && cmpx > part[i].x) {
          ctx.quadraticCurveTo(
            cmpx - cDist / bzm,
            cmpy - cDist / bzm,
            part[i].x,
            part[i].y
          );
        } else if (cmpy < part[i].y && cmpx > part[i].x) {
          ctx.quadraticCurveTo(
            cmpx - cDist / bzm,
            cmpy + cDist / bzm,
            part[i].x,
            part[i].y
          );
        } else if (cmpy > part[i].y && cmpx < part[i].x) {
          ctx.quadraticCurveTo(
            cmpx + cDist / bzm,
            cmpy - cDist / bzm,
            part[i].x,
            part[i].y
          );
        } else if (cmpy < part[i].y && cmpx < part[i].x) {
          ctx.quadraticCurveTo(
            cmpx + cDist / bzm,
            cmpy + cDist / bzm,
            part[i].x,
            part[i].y
          );
        }
      } else {
        ctx.lineTo(part[i].x,part[i].y);
      }
      ctx.stroke();
      ctx.closePath();

      // Wait for Pull
      if (mouseDown) {
        disx = cmpx - part[i].x;
        disy = cmpy - part[i].y;
        if (pop == 0) {
          part[i].vx = disx / pullPow;
          part[i].vy = disy / pullPow;
          // Try += for a rotate-effect
        } else {
          part[i].vx = disx / pullPow * -1;
          part[i].vy = disy / pullPow * -1;
        }
      }
    }

    // Draw Particles
    ctx.beginPath();
    ctx.fillStyle = "hsl(" + (part[i].x + part[i].y) + ",60%,60%)";
    //ctx.shadow = 10;
    ctx.arc(part[i].x, part[i].y, radius, 0, 2 * Math.PI);
    ctx.fill();
    ctx.closePath();
  }

  collision();
  requestAnimationFrame(drawFrame);
}

initParts();
drawFrame();