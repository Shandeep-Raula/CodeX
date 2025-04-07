/* Where do respondents prefer to purchase energy drinks ?
*/
create view prefer_purchase as 
select count(*) as Total_people, Purchase_location FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by Purchase_location;

/* What are typical consumption situations for energy drinks among respondents ? 
*/
create view cosumption_situation as 
select Typical_consumption_situations, count(*) as 'count' FROM fact_survey_responses 
group by Typical_consumption_situations;



/* Which area of business should we focus more on our product development ? (Branding/taste/availability)
*/
create view product_development as 
SELECT count(*) as 'Total' ,Reasons_for_choosing_brands  from fact_survey_responses
where Current_brands = 'codeX'
group by Reasons_for_choosing_brands;

create view product_development_cola as 
SELECT count(*) as 'Total' ,Reasons_for_choosing_brands  from fact_survey_responses
where Current_brands in ('cola-coka' )
group by Reasons_for_choosing_brands;

/* What immediate improvements can we bring to the product ? 
*/
create view improvements_desired as 
SELECT f.Improvements_desired, COUNT(*) AS COUNT FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Improvements_desired;
