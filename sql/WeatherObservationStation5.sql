  SELECT TOP 2 xA.city, xA.lgth
    FROM station
   CROSS APPLY ( SELECT distinct CASE WHEN len(city) = max(len(city)) OVER () THEN city
                                      WHEN len(city) = min(len(city)) OVER () THEN city
                                        END as city
                     , len(city) as lgth
                  FROM station
            ) as xA
GROUP BY xA.city, xA.lgth
ORDER BY 2 DESC, 1
