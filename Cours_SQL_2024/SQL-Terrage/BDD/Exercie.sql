/* 1- Afficher le nombre de commerciaux */ 
SELECT COUNT(*) AS nombre_commercial, service 
FROM employes
WHERE service = 'commercial'

/* 2- Afficher le coût des commerciaux sur une année */
SELECT SUM(salaire*12) FROM employes 

SELECT SUM(salaire * 12) AS cout_annuel_commerciaux
FROM employes
WHERE fonction = 'Commercial';

/* 3- Afficher le salaire moyen par service */
SELECT MIN(salaire)
FROM employes

/* 4- Afficher le nombre de recrutement sur l'année 2010 */
SELECT COUNT(*) AS nombre_recrutements_2010
FROM employes
WHERE YEAR(date_embauche) = 2010;

/* 5- Augmenter le salaire pour chaque employé de 100€ */
-- UPDATE POUR mettre à jour 
UPDATE employes
SET salaire = salaire + 100;

/* 6- Afficher le nombre de service */
SELECT COUNT(DISTINCT service) AS nombre_service 
FROM employes

/* 7- Afficher 10 employés à partir de l'enregistrement 10 */
SELECT * FROM employes LIMIT 10 OFFSET 10

/*  8- Afficher les informations de l'employé du service commercial gagnant le salaire le plus élevé */
SELECT *
FROM employes 
WHERE service = 'commercial' 
ORDER BY salaire LIMIT 1

/* 9- Afficher l'employé ayant été embauché en dernier */
SELECT *
FROM employes 
ORDER BY date_embauche DESC LIMIT 1;













