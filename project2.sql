use etl;
select*from movies_sql;

-- 1.Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select movie_name from movies_sql where genre='drama';

-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select movie_name from movies_sql where lead_star='aamir khan';

-- 3.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select movie_name from movies_sql where director='ram gopal verma';

-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select movie_name from movies_sql where number_of_screens>1000;

-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset.
select movie_name from movies_sql where revenue>700000000;

-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset
select movie_name from movies_sql where budget<100000000;

-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
select movie_name from movies_sql where (revenue - budget) < 0;

-- 8.Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
select movie_name,(revenue - budget) as profit from  movies_sql;

-- 9.Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
select movie_name,(budget - revenue) as loss from movies_sql where (budget - revenue) > 0;

-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset
select movie_name from movies_sql where release_period='holiday';

-- 11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
select movie_name from movies_sql where lead_star='akshay kumar' and director='priyadarshan';

-- 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select movie_name from movies_sql where movie_name like'a%';

-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset
select movie_name from movies_sql where movie_name like'%a';

-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select movie_name from movies_sql where movie_name like '_a%';

-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
select movie_name from movies_sql where music_director=' amit trivedi';

-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset
select movie_name from movies_sql where genre='comedy' and lead_star='akshay kumar';

-- 17. Retrieve the names of movies and star name starring khan in the dataset.
select movie_name , lead_star from movies_sql where lead_star like '%khan%';

-- 18. Retrieve all the information of movies race and race2 in the dataset.
select *from movies_sql where movie_name in ('race','race 2');

-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select movie_name from movies_sql where genre='thriller';

-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select movie_name ,budget from movies_sql where budget order by budget desc;

-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select movie_name,budget from movies_sql where budget order by budget desc limit 5;

-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select movie_name,revenue from movies_sql where revenue order by revenue desc limit 10;

-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
select movie_name from movies_sql where lead_star ='salman khan' order by lead_star desc limit 5;

-- 24. Retrieve the names of top 5 floped movies in the dataset.
select movie_name,(budget- revenue) as loss from  movies_sql where movie_name  and revenue< budget order by loss desc limit 5;

-- 25. Retrieve the names of top 5 hit movies in the dataset.
select movie_name,revenue,budget,(revenue / budget) AS return_on_investment from movies_sql where movie_name order by return_on_investment desc limit 5;

