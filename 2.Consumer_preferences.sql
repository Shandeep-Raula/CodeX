/* What are preferred ingredients of energy drinks among respondents?
*/
CREATE VIEW Prefer_Ingredient AS 
SELECT f.Ingredients_expected,COUNT(*) AS total_count FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Ingredients_expected;

/*What packaging preferences do respondents have for energy drinks ?
 */
CREATE VIEW Prefer_packaging AS
SELECT COUNT(*) AS total_count,f.Packaging_preference,r.age FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Packaging_preference, r.age;




