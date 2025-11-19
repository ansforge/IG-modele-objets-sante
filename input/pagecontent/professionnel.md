Cette partie présente les différents concepts utilisés pour définir et caractériser un professionnel (Personne physique) et ses modalités d'exercice.

### Remarques

* Les définitions des classes et attributs de cette partie sont toujours sujettes à des ajouts en concertation avec les autorités d'enregistrement (AE) lors de l'étude de nouveaux concepts.
* La classe "SavoirFaire" et ses classes spécialisées sont décrites dans cette partie, dans un diagramme dédié.
* La classe "Diplome" et ses classes spécialisées sont décrites dans la partie "Classes Communes", dans un diagramme dédié.
* Les classes non déployées, c'est à dire celles dont les attributs sont masqués, sont décrites dans leur propre partie (ou package).

<div class="figure svg-wrap" id="svgWrap" style="width:100%; overflow-x:auto;"> 
  <p style="margin: 0; padding: 0;">
    {% include professionnel.svg %}
  </p>
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2" id="svgControls">
    <button class="btn btn-light btn-sm" id="zoomIn"><i class="bi bi-zoom-in"></i></button>
    <button class="btn btn-light btn-sm" id="zoomOut"><i class="bi bi-zoom-out"></i></button>
    <button class="btn btn-light btn-sm" id="zoomReset"><i class="bi bi-arrow-counterclockwise"></i></button>
    <button class="btn btn-light btn-sm" id="fsBtn"><i class="bi bi-arrows-fullscreen"></i></button>
  </div>
</div>

<!-- CSS -->
<style>
.svg-fullscreen {
  width: 100vw !important;
  height: 100vh !important;
  max-width: none !important;
}
#svgControls .btn {
  opacity: 0.9;
}
</style>

<!-- JS -->
<script>
(function() {
  const wrap = document.getElementById('svgWrap');
  const svg = document.getElementById('mySvg');

  let scale = 1;
  const zoomStep = 0.15;
  const minScale = 0.3;
  const maxScale = 5;

  function applyZoom() {
    svg.style.transformOrigin = "center center";
    svg.style.transform = `scale(${scale})`;
  }

  /* ---------------------------
     ZOOM PAR BOUTONS
  --------------------------- */
  document.getElementById('zoomIn').addEventListener('click', () => {
    scale = Math.min(maxScale, scale + zoomStep);
    applyZoom();
  });

  document.getElementById('zoomOut').addEventListener('click', () => {
    scale = Math.max(minScale, scale - zoomStep);
    applyZoom();
  });

  document.getElementById('zoomReset').addEventListener('click', () => {
    scale = 1;
    applyZoom();
  });

  /* ---------------------------
     ZOOM À LA MOLETTE
  --------------------------- */
  wrap.addEventListener('wheel', (e) => {
    e.preventDefault();
    const delta = e.deltaY < 0 ? zoomStep : -zoomStep;
    scale = Math.min(maxScale, Math.max(minScale, scale + delta));
    applyZoom();
  }, { passive: false });

  /* ---------------------------
     PINCH ZOOM (mobile)
  --------------------------- */
  let touchDistance = null;

  wrap.addEventListener('touchstart', (e) => {
    if (e.touches.length === 2) {
      const dx = e.touches[0].clientX - e.touches[1].clientX;
      const dy = e.touches[0].clientY - e.touches[1].clientY;
      touchDistance = Math.sqrt(dx*dx + dy*dy);
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

        scale += diff * 0.0025;  // sensibilité
        scale = Math.min(maxScale, Math.max(minScale, scale));
        applyZoom();
      }

      touchDistance = newDist;
    }
  }, { passive: false });

  /* ---------------------------
     FULLSCREEN
  --------------------------- */
  document.getElementById('fsBtn').addEventListener('click', async () => {
    if (!document.fullscreenElement) {
      await wrap.requestFullscreen();
    } else {
      await document.exitFullscreen();
    }
  });

  document.addEventListener('fullscreenchange', () => {
    wrap.classList.toggle('svg-fullscreen', !!document.fullscreenElement);
  });
})();
</script>

### Avantages
* ISO MOS : reprise à l'identique des schémas du MOS
* Complétement automatisé, pas d'action manuelle


### Inconvénients
* Difficulté de mise en page en passant uniquement par le PlantUML en raison du volume du schéma (beaucoup d'éléments)
* Remise en forme du schéma manuelle exclue : svg très très chronophage
