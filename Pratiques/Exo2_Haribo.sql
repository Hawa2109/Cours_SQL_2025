------------------------------------------------------------------ Pratiques 2

/* -1 Afficher les 4 premiers stagiaires qui ont les yeux marron */
SELECT *
FROM stagiaires
WHERE yeux = 'marron' 
LIMIT 4 ;

/* -2 Afficher les 4 premiers stagiaires qui ont les yeux marron et en triant les prénoms dans l'ordre alphabétique */
SELECT *
FROM stagiaires
WHERE yeux = 'marron' 
ORDER BY prenom ASC LIMIT 4 ;

/* -3 Compter le nombre de stagiaires */
SELECT COUNT(*) AS nombre_stagiaires
FROM stagiaires;

/* -4 Compter le nombre de stagiaires hommes mais en changeant le nom de la colonne de résultat par *nb_stagiaires_H* */
SELECT COUNT(*) AS nb_stagiaires_H
FROM stagiaires
WHERE genre = 'm';

/* -5 Compter le nombre de couleurs des yeux différentes */
SELECT COUNT(DISTINCT  yeux) 
FROM stagiaires


/* -6 Afficher le prénom et les yeux du stagiaire qui a l'id_stagiaire le plus petit */ 
SELECT prenom, yeux
FROM stagiaires
ORDER BY id_stagiaires ASC
LIMIT 1;

/* -7 Afficher les stagiaires qui ont les yeux bleu et vert */
SELECT *
FROM stagiaires
WHERE yeux IN ('bleu', 'vert');

/* -8 A l'inverse maintenant, afficher les stagiaires qui n'ont pas les yeux bleu ni vert */ 
SELECT *
FROM stagiaires
WHERE yeux NOT IN ('bleu', 'vert');

/* -9 Afficher combien de bonbons ont été consommés au total */
SELECT SUM(quantite) AS total_bonbons
FROM mange_bonbon;

/* -10 Afficher les saveurs des bonbons (sans doublons) */
SELECT DISTINCT saveur 
FROM bonbons;

/* -11 Afficher le prénom et les yeux du stagiaire qui a l'id le plus grand /!\ c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête)  */
SELECT prenom, yeux
FROM stagiaires
WHERE id_stagiaires = (
    SELECT MAX(id_stagiaires)
    FROM stagiaires
);

/* -12 récupérer tous les stagiaires qui ont mangé des bonbons */ 
SELECT *
FROM stagiaires
WHERE id_stagiaires IN (
    SELECT id_stagiaires
    FROM mange_bonbon);

/* -13 Afficher le prénom du stagiaire, le nom du bonbon, la date de consommation pour tous les stagiaires qui ont mangé au moins une fois */


/* -14 Récupérez les informations sur les stagiaires qui ont mangé plus d'un seul bonbon */ 
SELECT *
FROM stagiaires
WHERE id_stagiaires IN (
    SELECT id_stagiaires
    FROM mange_bonbon
    WHERE quantite > 1
);

/* -15 Afficher le nombre de consommation de *Tagada* */
SELECT COUNT(*) AS nb_consommation_tagada
FROM bonbons
WHERE saveur = 'Tagada';


/* -16 Afficher cette fois le total de "tagada" consommées */ 
SELECT SUM(bonbons_manges) AS total_tagada
FROM bonbons
WHERE saveur = 'Tagada';

/* -17 Afficher le prénom du stagiaire qui a mangé le plus de bonbons */ 