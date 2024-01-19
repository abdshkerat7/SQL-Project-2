Select name, year
From authors natural join conferences
Where institution = 'Hebrew University of Jerusalem' and subarea='ml'
Intersect
Select name, year
From authors natural join conferences
Where institution = 'Hebrew University of Jerusalem' and subarea='vision'
Order by name, year;
