SELECT a.primaryName
FROM tJob j
JOIN tArtist a ON a.idArtist = j.idArtist
WHERE j.category IN ('actor', 'actress', 'acted in')
GROUP BY a.idArtist, a.primaryName
HAVING COUNT(DISTINCT j.idFilm) > 1;
