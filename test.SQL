SELECT a.primaryName, a.idArtist,  f.primaryTitle, f.idFilm
FROM tArtist a
JOIN tJob j ON a.idArtist = j.idArtist
JOIN tFilm f ON f.idFilm = j.idFilm
GROUP BY a.idArtist, a.primaryName, f.idFilm, f.primaryTitle
HAVING COUNT(DISTINCT j.category) > 1;