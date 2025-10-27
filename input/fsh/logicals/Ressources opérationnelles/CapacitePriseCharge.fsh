Logical: CapacitePriseCharge
Parent: $Base
Id: CapacitePriseCharge
Title: "CapacitePriseCharge"
Description: "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise."
* ^status = #draft
* . ^short = "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise."
* . ^definition = "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise."
* affectationTemporaire 0..1 Coding "L’affectation temporaire permet de réserver tout ou partie des lits d’une zone d’hébergement pour des patients selon qu’ils soient –ou non- concernés par une pathologie (Covid+, Covid-, …) ou un évènement (catastrophe naturelle, attentat, …)." "L’affectation temporaire permet de réserver tout ou partie des lits d’une zone d’hébergement pour des patients selon qu’ils soient –ou non- concernés par une pathologie (Covid+, Covid-, …) ou un évènement (catastrophe naturelle, attentat, …)."
* affectationTemporaire from https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite?vs (preferred)