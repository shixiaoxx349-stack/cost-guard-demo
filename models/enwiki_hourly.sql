select
    datehour,
    sum(views) as views
from `bigquery-public-data.wikipedia.pageviews_2021`
where datehour >= timestamp('2021-06-01')
  and datehour <  timestamp('2021-06-02')
  and views > 0
group by datehour
order by datehour
