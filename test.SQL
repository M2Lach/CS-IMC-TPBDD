SELECT *
FROM tJob j 
JOIN tFilm f ON j.idFilm=f.idFilm
WHERE f.primaryTitle = 'Shattered'