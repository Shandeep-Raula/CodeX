
/* What do people think our brand ? (Overall Rating)
*/
create view overall_rating as 
select count(*) as Total_People, Taste_experience as 'Rating' FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
where f.Current_brands = 'codeX'
group by Taste_experience;

/* Which cities do we need to focus more ? (Tier 1 Cities)
*/
create view focus_city as
select count(*) as 'total' , c.City, c.Tier FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
inner join dim_cities as c on c.City_ID = r.City_ID
where f.Current_brands = 'codeX'
group by c.city,c.Tier;


