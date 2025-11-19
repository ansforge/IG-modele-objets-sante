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
  <button id="fsBtn" class="fs-btn" aria-pressed="false" aria-label="Plein écran">⤢</button>
</div>


<!-- CSS -->
<style>
.svg-wrap{
  position: relative;
  display: inline-block;
  max-width: 100%;
}
.svg-wrap p svg{
  display: block;
  width: 100%; /* adaptatif */
  height: auto;
}
.fs-btn{
  position: absolute;
  top: 8px;
  right: 8px;
  z-index: 10;
  padding: 6px 8px;
  border: 1px solid rgba(0,0,0,0.12);
  background: rgba(255,255,255,0.9);
  border-radius: 6px;
  cursor: pointer;
  font-size: 16px;
}
.svg-fullscreen { /* style optionnel en plein écran */
  width: 100vw !important;
  height: 100vh !important;
  max-width: none !important;
}
</style>

<!-- JS -->
<script>
(function(){
  const wrap = document.getElementById('svgWrap');
  const btn = document.getElementById('fsBtn');

  // Demande le fullscreen sur le conteneur
  async function enterFullscreen() {
    if (!document.fullscreenElement) {
      try {
        // some browsers require calling requestFullscreen on the element itself
        await wrap.requestFullscreen();
        btn.setAttribute('aria-pressed', 'true');
      } catch (err) {
        console.error('Erreur requestFullscreen:', err);
      }
    } else {
      await exitFullscreen();
    }
  }

  async function exitFullscreen() {
    try {
      if (document.fullscreenElement) {
        await document.exitFullscreen();
      }
      btn.setAttribute('aria-pressed', 'false');
    } catch (err) {
      console.error('Erreur exitFullscreen:', err);
    }
  }

  // Basculer au clic
  btn.addEventListener('click', enterFullscreen);

  // Mettre à jour le bouton si l'utilisateur quitte le fullscreen via ESC
  document.addEventListener('fullscreenchange', () => {
    const isFs = !!document.fullscreenElement;
    btn.setAttribute('aria-pressed', String(isFs));
    // Optionnel : ajouter une classe pour appliquer styles spécifiques en fullscreen
    if (isFs) wrap.classList.add('svg-fullscreen');
    else wrap.classList.remove('svg-fullscreen');
  });

  // Fallback for vendor prefixes older browsers (rare aujourd'hui)
})();
</script>



### Avantages
* ISO MOS : reprise à l'identique des schémas du MOS
* Complétement automatisé, pas d'action manuelle


### Inconvénients
* Difficulté de mise en page en passant uniquement par le PlantUML en raison du volume du schéma (beaucoup d'éléments)
* Remise en forme du schéma manuelle exclue : svg très très chronophage
