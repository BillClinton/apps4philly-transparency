

select a.vendor, count(a.id) as contributions, sum(b.amount) as total, sum(b.amount)/count(a.id) as avg
 FROM  `campaign_finance_contract` a
 JOIN `campaign_finance_data` b
 ON a.id = b.id
 GROUP BY a.vendor
 order by total desc LIMIT 10

