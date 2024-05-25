/*
Who prefers energy drink more ? 

*/
CREATE VIEW Prefer_EnergyDrinks AS
SELECT COUNT(*) as Count , r.gender FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by r.Gender;

/* Which age group prefers energy drink more ?
*/
CREATE VIEW Prefer_AgeGroup AS 
SELECT COUNT(*) AS COUNT, r.Age FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by r.Age;

/* Which type of marketing reaches the most youth (15-30) ?   
 */
CREATE VIEW Prefer_Marketing AS 
SELECT f.Marketing_channels, COUNT(*) AS COUNT FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
where r.age in ('15-18', '19-30')
group by f.Marketing_channels;

/*Which type of marketing prefers in each age group ?                                
 */
CREATE VIEW Prefer_Marketing_byAge AS 
SELECT f.Marketing_channels, r.age, COUNT(*) AS COUNT FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Marketing_channels, r.age;


