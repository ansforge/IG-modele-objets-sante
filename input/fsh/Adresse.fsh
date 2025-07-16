Profile: Adresse
Parent: Address
Id: Adresse
Title: "Adresse"
Description: "Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011."

* postalCode ^short = "codePostal : Code Postal ou code postal spécifique CEDEX * Code postal: Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier. * Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif)."
* city ^short = "localite : Localité ou Libellé du bureau distributeur CEDEX ** Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés. ** Libellé du bureau distributeur CEDEX. Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2); ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas."
* state ^short = "internationalDivisionTerritoriale : Pour les adresses internationales, une subdivision administrative d'un pays. Dans le cas d'une adresse étrangère, il peut être nécessaire d'identifier dans l'adresse l'état fédéré, la région, le canton, etc."
* country ^short = "internationalPays : Pour les adresses internationales, nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens."
* use ^short = "type : Indique le ou les types d'adresse tel que 'Adresse du domicile', 'Adresse professionnelle', 'Adresse de facturation', 'Adresse postale', 'Adresse géographique', etc. Cet attribut ne fait pas partie de la norme NF Z 10-011."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open




