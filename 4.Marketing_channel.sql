/* Which marketing channel can be used to reach more customers ?
*/
CREATE VIEW Marketing_channel AS 
SELECT COUNT(*) AS COUNT, f.Marketing_channels FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Marketing_channels


CREATE VIEW Marketing_strategies AS
SELECT COUNT(*) AS COUNT, f.Marketing_channels FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
where f.current_brands = 'CodeX'
group by f.Marketing_channels;