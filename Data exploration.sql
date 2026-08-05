set datestyle = 'SQL,MDY'

select  provider_ccn,
        hospital_name,
	    to_date(fiscal_year_begin_date,'YYYY/MM/DD') as fiscal_year_begin_date,
		to_date(fiscal_year_end_date,'YYYY/MM/DD') as fiscal_year_end_date,
		number_of_beds
from "freewitch"."Hospital_Data".hospital_beds

