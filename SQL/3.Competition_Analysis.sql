
/* Who are the current market leaders ?
*/
CREATE VIEW Marketing_leaders AS
select count(*) total_count, f.Current_brands from fact_survey_responses as f
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Current_brands;

/* What are the primary reasons consumers prefer those brands over ours ?
*/
CREATE VIEW Reason_for_other_brands AS
select reasons_for_choosing_brands,count(*) as 'count' from fact_survey_responses as f
where f.Current_brands not in ('codeX')
group by f.Reasons_for_choosing_brands
order by count desc