Select distinct name
From authors
Except
Select distinct name
From authors natural join conferences
Where year >= 1990 or area !='systems'
Order by name;