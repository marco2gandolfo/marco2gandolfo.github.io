/* Marco Gandolfo – site behaviour (no dependencies) */
(function () {
  "use strict";

  /* Mobile menu */
  var nav = document.getElementById("nav");
  var btn = nav && nav.querySelector(".menu-btn");
  if (btn) {
    btn.addEventListener("click", function () {
      var open = nav.classList.toggle("open");
      btn.setAttribute("aria-expanded", open ? "true" : "false");
    });
  }

  /* Home hero: the circles behave like out-of-focus discs.
     Each disc sits at a depth (--z, 0 = near, 1 = far). The focal plane follows the pointer
     across the hero, so discs at that depth sharpen and the rest blur, like pulling focus. */
  var hero = document.getElementById("hero");
  if (hero) {
    var discs = Array.prototype.slice.call(hero.querySelectorAll(".disc")).map(function (el) {
      return { el: el, z: parseFloat(getComputedStyle(el).getPropertyValue("--z")) || 0 };
    });
    var reduce = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
    var focus = reduce ? 0.3 : 1.0;   // start with the far plane in focus, then pull to the near plane
    var target = 0.3;
    var MAX_BLUR = 26;

    var apply = function () {
      for (var i = 0; i < discs.length; i++) {
        var d = Math.abs(discs[i].z - focus);
        discs[i].el.style.setProperty("--b", (Math.min(1, d * 1.6) * MAX_BLUR).toFixed(1) + "px");
      }
    };
    apply();

    if (!reduce) {
      var running = false;
      var tick = function () {
        focus += (target - focus) * 0.06;
        apply();
        if (Math.abs(target - focus) > 0.002) { requestAnimationFrame(tick); } else { running = false; }
      };
      var start = function () { if (!running) { running = true; requestAnimationFrame(tick); } };

      // one orchestrated focus pull on load
      setTimeout(start, 350);

      // afterwards the pointer moves the focal plane (left = near, right = far)
      if (window.matchMedia("(hover: hover)").matches) {
        hero.addEventListener("pointermove", function (e) {
          var r = hero.getBoundingClientRect();
          target = Math.max(0, Math.min(1, (e.clientX - r.left - r.width * 0.35) / (r.width * 0.65)));
          start();
        });
        hero.addEventListener("pointerleave", function () { target = 0.3; start(); });
      }
    }
  }

  /* Year index on News and Publications: mark the year currently in view */
  var railLinks = document.querySelectorAll(".rail-years a");
  if (railLinks.length && "IntersectionObserver" in window) {
    var byId = {};
    railLinks.forEach(function (a) { byId[a.getAttribute("href").slice(1)] = a; });
    var obs = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        if (en.isIntersecting) {
          railLinks.forEach(function (a) { a.classList.remove("is-active"); });
          var a = byId[en.target.id];
          if (a) { a.classList.add("is-active"); }
        }
      });
    }, { rootMargin: "-20% 0px -70% 0px" });
    document.querySelectorAll("section.year, section.cv-sec").forEach(function (s) { obs.observe(s); });
  }

  /* CV: "Save as PDF" opens the print dialog; the print layout hides the menus */
  document.querySelectorAll("[data-print]").forEach(function (b) {
    b.addEventListener("click", function () { window.print(); });
  });
})();
