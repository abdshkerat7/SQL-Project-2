Select distinct institution, name
From authors natural join institutions
Where country = 'il'
Order by institution, name;
