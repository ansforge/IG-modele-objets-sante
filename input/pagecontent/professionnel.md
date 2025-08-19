Cette partie présente les différents concepts utilisés pour définir et caractériser un professionnel (Personne physique) et ses modalités d'exercice.

### Remarques

* Les définitions des classes et attributs de cette partie sont toujours sujettes à des ajouts en concertation avec les autorités d'enregistrement (AE) lors de l'étude de nouveaux concepts.
* La classe "SavoirFaire" et ses classes spécialisées sont décrites dans cette partie, dans un diagramme dédié.
* La classe "Diplome" et ses classes spécialisées sont décrites dans la partie "Classes Communes", dans un diagramme dédié.
* Les classes non déployées, c'est à dire celles dont les attributs sont masqués, sont décrites dans leur propre partie (ou package).

<div class="figure" style="width:100%; overflow-x:auto;">
  <p style="margin: 0; padding: 0;">
    {% include professionnel.svg %}
  </p>
</div>

# Test diagramme mermaid

Le diagramme est faux, il s'agit juste d'un test pour valider la fonctionnalité.

<div class="mermaid">
classDiagram
    %% === Classes principales ===
    class Professionnel {
        +idPP : Identifiant [0..1]
        +idNat_PP : Identifiant [0..1]
        +personne : PersonnePhysique [0..1]
        +diplomeObtenu : Diplome [1]
        +adresseCorrespondance : Adresse [1]
        +telecommunication : Telecommunication [*]
        +boiteLettreMSS : BoiteLettreMSS [*]
        +metadonnee : Metadonnee [0..1]
    }

    class ExerciceProfessionnel {
        +civiliteExercice : Code [0..1]
        +nomExercice : Texte [0..1]
        +prenomExercice : Texte [0..1]
        +typeProfession : Code [1]
        +categorieProfession : Code [0..1]
        +codeProfession : Code [1]
        +dateEffetExercice : Date [0..1]
        +dateFinExercice : Date [0..1]
        +departementRemp : Code [0..1]
        +boiteLettreMSS : BoiteLettreMSS [*]
        +metadonnee : Metadonnee [0..1]
    }

    class SituationExercice {
        +role : Code [0..1]
        +typeRole : Code [0..1]
        +modeExercice : Code [0..1]
        +numeroAM : Identifiant [0..1]
        +dateDebutActivite : Date [0..1]
        +dateFinActivite : Date [0..1]
        +sectionOrdre : Code [0..1]
        +sousSectionOrdre : Code [0..1]
        +typeActivitePrincipale : Code [0..1]
        +statutPS_SSA : Code [0..1]
        +telecommunication : Telecommunication [*]
        +adresseSE : Adresse [1]
        +boiteLettreMSS : BoiteLettreMSS [*]
        +metadonnee : Metadonnee [0..1]
    }

    class SituationOperationnelle {
        +identifiantSituationOperationnelle : Identifiant [0..1]
        +modeExerciceOC : Code [0..1]
        +competenceSpecifique : Code [*]
        +precisionHoraire : Horaire [0..1]
        +secteurConventionnement : Code [0..1]
        +optionContractuelleSousAncienneIndicateur : Code [0..1]
        +carteVitaleAcceptee : Indicateur [0..1]
        +telecommunication : Telecommunication [0..1]
        +metadonnee : Metadonnee [0..1]
    }

    class OffreOperationnelle
    class CarteProfessionnel
    class Certificat
    class NoteLiaison
    class EntiteGeographique
    class Diplome
    class Adresse
    class Telecommunication
    class BoiteLettreMSS
    class Metadonnee
    class PersonnePriseCharge
    class AutorisationExercice
    class RendezVous
    class Agenda

    class InscriptionOrdre {
        +ordre : Code [0..1]
        +dateDebutInscription : Date [0..1]
        +dateRadiation : Date [0..1]
        +statutInscription : Code [0..1]
        +conseilDepartemental : Code [0..1]
        +metadonnee : Metadonnee [0..1]
    }

    class SavoirFaire {
        +typeSavoirFaire : Code [0..1]
        +dateReconnaissance : Date [0..1]
        +dateAbandon : Date [0..1]
        +metadonnee : Metadonnee [0..1]
    }

    class AttributionParticuliere {
        +attributionParticuliere : Code [0..1]
        +dateDebutReconnaissance : Date [0..1]
        +dateAbandon : Date [0..1]
        +metadonnee : Metadonnee [0..1]
    }

    class NiveauFormation {
        +diplome : Diplome [0..1]
        +natureCycleFormation : Code [0..1]
        +niveauFormationAcquis : Code [0..1]
        +anneeUniversitaire : Code [0..1]
        +dateFin : Date [0..1]
        +metadonnee : Metadonnee [0..1]
    }

    %% === Relations ===
    Professionnel "1" --> "1..*" ExerciceProfessionnel
    ExerciceProfessionnel "1" --> "0..1" SituationExercice
    ExerciceProfessionnel "1" --> "0..1" SituationOperationnelle
    ExerciceProfessionnel "1" --> "0..1" OffreOperationnelle
    Professionnel "1" --> "0..1" NoteLiaison
    Professionnel "1" --> "0..*" InscriptionOrdre
    Professionnel "1" --> "0..*" SavoirFaire
    Professionnel "1" --> "0..*" AttributionParticuliere
    Professionnel "1" --> "0..*" NiveauFormation
    Professionnel "1" --> "0..1" CarteProfessionnel
    CarteProfessionnel "1" --> "0..1" Certificat
    ExerciceProfessionnel "1" --> "0..1" EntiteGeographique
    Agenda "1" --> "0..*" RendezVous
    Professionnel "1" --> "0..1" AutorisationExercice
    Professionnel "1" --> "0..1" PersonnePriseCharge

</div>