Select distinct name
From authors a1
Where not exists (
    Select conference
    From authors a2 natural join conferences c
    Where c.area='ai' and a2.name='Noam Nisan' and not exists (
        select *
        from authors a3 natural join conferences c1
        where a1.name = a3.name and c.conference = c1.conference)
    )
Order by name;