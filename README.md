#One Stop Transparency Shop

One Stop Transparency Shop was an idea submitted for the Apps for Philly Democracy hackathon, March 27th-29th, 2015.  The goal was to provide a searchable site linking campaign donations and lobbying data to resulting city contracts.

While the city contract data was readily available and in a convenient format, the same could not be said for the campaign finance records.  The data was scattered across many files in a multi-level directory structure.  We found one zip file that purported to be a collation of all this data, but there were many formatting errors in this file which made a full valid import impossible in the available time.

There is currently a project from CfA Philly Brigade that aims to clean up the campaign finance data and make it more accessible.

## Data links

### City Contracts
 - OpenDataPhilly Professional Services Contract Data: https://www.opendataphilly.org/dataset/professional-services-contract-data
 - OpenDataPhilly Commodities Contract Data: https://www.opendataphilly.org/dataset/commodity-contract-data

### Campaign Finance Records
 - OpenDataPhilly Campaign Finance Records: https://www.opendataphilly.org/dataset/campaign-finance-records
 - Records in ftp directory structure:  ftp://ftp.phila-records.com/

## Database schema

   Three tables were created to hold the available data.  Tables were created for Professional Services and Commodity Contract data and for campaign finance data.  A relation table was also created in an attempt to link the contract tables with the campaign finance table.

Table creation SQL can be found in db/create.sql
Import scripts can be found in db/import.sql

