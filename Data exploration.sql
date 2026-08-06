set datestyle = 'SQL,MDY'

with hospital_beds_prep as
(

select  lpad(cast(provider_ccn as text),6,'0') as provider_ccn,
        hospital_name,
	    to_date(fiscal_year_begin_date,'YYYY/MM/DD') as fiscal_year_begin_date,
		to_date(fiscal_year_end_date,'YYYY/MM/DD') as fiscal_year_end_date,
		number_of_beds,
		row_number() over (
             partition by provider_ccn
			 order by to_date(fiscal_year_end_date,'YYYY/MM/DD') DESC) as nth_row
from "freewitch"."Hospital_Data".hospital_beds
)


select *
from hospital_beds_prep
order by provider_ccn

	
	
select provider_ccn, count(*) as count_of_rows

from hospital_beds_prep
where nth_row = 1
group by provider_ccn
order by count(*) DESC

