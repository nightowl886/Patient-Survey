set datestyle = 'SQL,MDY'

create table "freewitch"."Hospital_Data".Tableau_File as

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


select lpad(cast(facility_id as text),6,'0') as provider_ccn,
       to_date(start_date,'MM/DD/YYYY') as start_date_converted,
	   to_date(end_date,'MM/DD/YYYY') as end_date_converted,
       hcahps.*,
	   beds.number_of_beds,
	   beds.fiscal_year_begin_date as beds_start_report_period,
	   beds.fiscal_year_end_date as beds_end_report_period
from "freewitch"."Hospital_Data".hcahps_data as hcahps

left join hospital_beds_prep as beds
on lpad(cast(facility_id as text),6,'0')= beds.provider_ccn
and beds.nth_row = 1

