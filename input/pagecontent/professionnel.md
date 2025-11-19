Cette partie présente les différents concepts utilisés pour définir et caractériser un professionnel (Personne physique) et ses modalités d'exercice.

### Remarques

* Les définitions des classes et attributs de cette partie sont toujours sujettes à des ajouts en concertation avec les autorités d'enregistrement (AE) lors de l'étude de nouveaux concepts.
* La classe "SavoirFaire" et ses classes spécialisées sont décrites dans cette partie, dans un diagramme dédié.
* La classe "Diplome" et ses classes spécialisées sont décrites dans la partie "Classes Communes", dans un diagramme dédié.
* Les classes non déployées, c'est à dire celles dont les attributs sont masqués, sont décrites dans leur propre partie (ou package).

<div class="figure svg-wrap" id="svgWrap" style="width:100%; overflow-x:auto;"> 
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2" id="svgControls">
    <button class="btn btn-light btn-sm" id="zoomIn" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm" id="zoomOut" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm" id="zoomReset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm" id="fsBtn" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {% include professionnel.svg %}
  </p>
</div>

<!-- CSS -->
<style>
.svg-fullscreen {
  position: fixed !important;
  top: 0 !important;
  left: 0 !important;
  width: 100vw !important;
  height: 100vh !important;
  max-width: none !important;
  z-index: 9999 !important;
  background: white !important;
  margin: 0 !important;
}
#svgControls {
  z-index: 10000;
}
#svgControls .btn {
  opacity: 0.9;
  box-shadow: 0 2px 4px rgba(0,0,0,0.2);
}
#svgControls .btn:hover {
  opacity: 1;
}
.svg-wrap {
  position: relative;
  cursor: grab;
  user-select: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.svg-wrap.grabbing {
  cursor: grabbing;
}
.svg-wrap.grabbing * {
  user-select: none !important;
  -webkit-user-select: none !important;
}
.svg-wrap svg {
  transition: transform 0.1s ease-out;
  display: block;
  margin: 0 auto;
  pointer-events: none;
}
</style>

<!-- JS -->
<script>
(function() {
  // Attendre que le DOM soit complètement chargé
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

  function init() {
    const wrap = document.getElementById('svgWrap');
    if (!wrap) return;

    // Trouver le SVG inclus (peu importe son ID)
    const svg = wrap.querySelector('svg');
    if (!svg) {
      console.warn('SVG non trouvé dans #svgWrap');
      return;
    }

    let scale = 1;
    let translateX = 0;
    let translateY = 0;
    const zoomStep = 0.15;
    const minScale = 0.3;
    const maxScale = 5;
    const panSpeed = 0.6; // Facteur de vitesse pour ralentir le déplacement (1 = normal, 0.5 = 2x plus lent)

    let isPanning = false;
    let startX = 0;
    let startY = 0;

    function applyTransform() {
      svg.style.transformOrigin = "center center";
      svg.style.transform = `translate(${translateX}px, ${translateY}px) scale(${scale})`;
    }

    /* ---------------------------
       ZOOM PAR BOUTONS
    --------------------------- */
    document.getElementById('zoomIn').addEventListener('click', () => {
      scale = Math.min(maxScale, scale + zoomStep);
      applyTransform();
    });

    document.getElementById('zoomOut').addEventListener('click', () => {
      scale = Math.max(minScale, scale - zoomStep);
      applyTransform();
    });

    document.getElementById('zoomReset').addEventListener('click', () => {
      scale = 1;
      translateX = 0;
      translateY = 0;
      applyTransform();
    });

    /* ---------------------------
       ZOOM À LA MOLETTE
    --------------------------- */
    wrap.addEventListener('wheel', (e) => {
      e.preventDefault();
      const delta = e.deltaY < 0 ? zoomStep : -zoomStep;
      scale = Math.min(maxScale, Math.max(minScale, scale + delta));
      applyTransform();
    }, { passive: false });

    /* ---------------------------
       PAN (déplacement à la souris)
    --------------------------- */
    wrap.addEventListener('mousedown', (e) => {
      // Ignorer si clic sur les boutons de contrôle
      if (e.target.closest('#svgControls')) return;

      // Ignorer si ce n'est pas le bouton gauche
      if (e.button !== 0) return;

      e.preventDefault();
      isPanning = true;
      // Ajuster le point de départ en fonction du panSpeed
      startX = e.clientX - (translateX / panSpeed);
      startY = e.clientY - (translateY / panSpeed);
      wrap.classList.add('grabbing');
    });

    document.addEventListener('mousemove', (e) => {
      if (!isPanning) return;
      e.preventDefault();
      // Appliquer le facteur de vitesse pour ralentir le mouvement
      const deltaX = (e.clientX - startX) * panSpeed;
      const deltaY = (e.clientY - startY) * panSpeed;
      translateX = deltaX;
      translateY = deltaY;
      applyTransform();
    });

    document.addEventListener('mouseup', (e) => {
      if (isPanning) {
        isPanning = false;
        wrap.classList.remove('grabbing');
      }
    });

    // Gérer le cas où la souris sort de la fenêtre pendant le drag
    document.addEventListener('mouseleave', () => {
      if (isPanning) {
        isPanning = false;
        wrap.classList.remove('grabbing');
      }
    });

    /* ---------------------------
       PINCH ZOOM (mobile)
    --------------------------- */
    let touchDistance = null;
    let lastTouchX = 0;
    let lastTouchY = 0;

    wrap.addEventListener('touchstart', (e) => {
      if (e.touches.length === 2) {
        const dx = e.touches[0].clientX - e.touches[1].clientX;
        const dy = e.touches[0].clientY - e.touches[1].clientY;
        touchDistance = Math.sqrt(dx*dx + dy*dy);

        lastTouchX = (e.touches[0].clientX + e.touches[1].clientX) / 2;
        lastTouchY = (e.touches[0].clientY + e.touches[1].clientY) / 2;
      } else if (e.touches.length === 1) {
        lastTouchX = e.touches[0].clientX;
        lastTouchY = e.touches[0].clientY;
      }
    });

    wrap.addEventListener('touchmove', (e) => {
      if (e.touches.length === 2) {
        e.preventDefault();

        const dx = e.touches[0].clientX - e.touches[1].clientX;
        const dy = e.touches[0].clientY - e.touches[1].clientY;
        const newDist = Math.sqrt(dx*dx + dy*dy);

        if (touchDistance) {
          const diff = newDist - touchDistance;
          scale += diff * 0.005;
          scale = Math.min(maxScale, Math.max(minScale, scale));
          applyTransform();
        }

        touchDistance = newDist;
      } else if (e.touches.length === 1 && scale > 1) {
        e.preventDefault();
        const touchX = e.touches[0].clientX;
        const touchY = e.touches[0].clientY;

        translateX += touchX - lastTouchX;
        translateY += touchY - lastTouchY;
        applyTransform();

        lastTouchX = touchX;
        lastTouchY = touchY;
      }
    }, { passive: false });

    wrap.addEventListener('touchend', () => {
      touchDistance = null;
    });

    /* ---------------------------
       FULLSCREEN
    --------------------------- */
    document.getElementById('fsBtn').addEventListener('click', async () => {
      try {
        if (!document.fullscreenElement) {
          await wrap.requestFullscreen();
        } else {
          await document.exitFullscreen();
        }
      } catch (err) {
        console.error('Erreur fullscreen:', err);
      }
    });

    document.addEventListener('fullscreenchange', () => {
      wrap.classList.toggle('svg-fullscreen', !!document.fullscreenElement);
    });
  }
})();
</script>

### Avantages
* ISO MOS : reprise à l'identique des schémas du MOS
* Complétement automatisé, pas d'action manuelle


### Inconvénients
* Difficulté de mise en page en passant uniquement par le PlantUML en raison du volume du schéma (beaucoup d'éléments)
* Remise en forme du schéma manuelle exclue : svg très très chronophage
