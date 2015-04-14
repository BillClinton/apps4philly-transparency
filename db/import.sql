LOAD DATA INFILE 'data.tsv' INTO TABLE `campaign_finance_data` FIELDS TERMINATED BY '\t' ENCLOSED BY '"' ESCAPED BY ''
(@col1,@col2,@col3,@col4,@col5,@col6,@col7,@col8,@col9,@col10,@col11,@col12,@col13,@col14,@col15,@col16,@col17,@col18,@col19,@col20,@col21,@col22,@col23)
set
`filer_name`=@col1,
`year`=@col2,
`cycle`=@col3,
`doctype`=@col4,
`entity_name`=@col5,
`entity_address_line_1`=@col6,
`entity_address_line_2`=@col7,
`entity_city`=@col8,
`entity_state`=@col9,
`entity_zip`=@col10,
`occupation`=@col11,
`employer_name`=@col12,
`employer_address_line_1`=@col13,
`employer_address_line_2`=@col14,
`employer_city`=@col15,
`employer_state`=@col16,
`employer_zip`=@col17,
`date`=@col18,
`amount`=@col19,
`expenditure_desc`=@col20,
`amended`=@col21,
`subdate`=@col22,
`filedby`=@col23 ;

LOAD DATA INFILE 'FY-2014-Q4.csv.txt' INTO TABLE  `professional_services_contract` FIELDS TERMINATED BY ',' ENCLOSED BY '"';

LOAD DATA INFILE 'FY2014Q4.csv.txt' INTO TABLE  `commodities_contract` FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY ''
