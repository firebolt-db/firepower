with busiest_days as ( 
  select visitdate, count(*) 
  from uservisits 
  group by 1 
  order by 2 desc limit 10 
  ) 
  select countrycode, avg(length(searchword)) 
  from uservisits 
  where visitdate in (select visitdate from busiest_days) 
  group by countrycode;
