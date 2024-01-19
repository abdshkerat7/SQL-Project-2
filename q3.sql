Select distinct institution, name
From authors natural join institutions natural join conferences
Where country = 'il' and (subarea = 'db' or area = 'ai') and adjustedcount >= 2
Order by institution, name;
