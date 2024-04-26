SELECT max(visitdate) as "latest_visit" 
  FROM uservisits 
  WHERE (visitdate >= '2036-02-28' AND visitdate <= DATE_ADD('DAY', 1, '2036-02-28'));
