<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
[Add a brief description of this IG in English]
</p>

<!--  A décommenter lors de la publication -->

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/mos</p>
    </blockquote>
</div>
{% endif %}


<!--  A décommenter si CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
-->

### Introduction

Le MOS est un ensemble de concepts, décrits de manière homogène et neutre vis-à-vis des technologies. Il favorise l’interopérabilité native des applications en offrant une description commune et mutualisée des informations traitées dans les systèmes d’information et les échanges. Le périmètre du MOS, circonscrit au départ au secteur sanitaire, évoluera au fil de ces projets pour prendre en compte les spécificités du secteur médico-social et social.

Lors de la définition d'un composant élémentaire du MOS, une étude préalable d'alignement est effectuée, afin d'identifier les équivalences éventuelles avec d'autres initiatives ou standards internationaux tels que Fast Healthcare Interoperability Resources (FHIR) de HL7 v2, HL7 v3 ou encore Semantic Interoperability Community (SEMIC) de la Commission européenne.

Les concepts du MOS sont représentés dans un diagramme de classes UML. Il est décomposé en plusieurs parties fonctionnelles qui regroupent un ensemble de classes. Dans ces classes, certains attributs sont codifiables, ils sont donc associés à une terminologie de référence (TRE) faisant partie des NOS.

La partie composants élémentaires du MOS est partitionnée de la manière suivante (voir la vue globale présentée en figure 1) :

* professionnels, au sens des personnes physiques (modèle de données des objets issus du RPPS et d’ADELI);
* dispositifs d’authentification attribués aux personnes physiques et morales, à ce stade les cartes et les certificats (produits CPx);
* structures, au sens établissements ou personnes morales du secteur de la santé (modèle de données des objets issus du  fichier national des établissements  sanitaires et sociaux (FINESS));
* autorisations, description des activités sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels lourds autorisés;
* ressources opérationnelles des organisations internes qui portent des activités opérationnelles de toute nature et des équipements opérationnels au sein d'entités géographiques;
* accords au sens des modalités réglementaires, contractuelles ou de financement (contrat, autorisation d’exercice, agrément, etc.);
* personnes prises en charge, personnes physiques recevant des soins ou bénéficiaire de services;
* accompagnant, toutes les entités qui protègent, aident, accompagnent la personne;
* dossier, ensemble de documents se rapportant à un même sujet;
* dispositifs médicaux tels que définis par le Règlement (UE) 2017/745 du 5 avril 2017;
* agenda des personnes physiques ou des structures;
* objets communs aux domaines, c’est à dire les personnes, les adresses, les coordonnées géographiques, les lieux, les contacts, les télécommunications, etc.;
* types de données, c'est à dire le domaine de valeurs de l'attribut; par exemple, l'attribut nomUsage (nom d'usage de la personne) est un texte (type de données "Texte"), l'attribut paysNaissance (pays de naissance) est un code (type de données "Code").

Remarque générale sur les diagrammes:

La cardinalité "*" d'une association ou d'un attribut signifie "0..*".
La cardinalité "1" d'une association ou d'un attribut signifie "1..1".

{% include svg-interactive-styles.html %}

<div class="figure svg-wrap" style="width:100%;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {% include global.svg %}
  </p>
</div>


<!-- like "%Profil%" rajouté car induit une erreur si vide -->
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition'",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}


### Périmètre du projet

Définir en quelques lignes en anglais quel est le périmètre du projet

Toujours laisser l'onglet "Ressources de conformité" pour s'assurer d'une cohérence globales entre tous les IGs

### Auteurs et contributeurs

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
