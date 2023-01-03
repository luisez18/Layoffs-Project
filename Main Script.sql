SELECT company, funds_raised from layoffs.layoffs
where funds_raised <= 200;

SELECT company, total_laid_off from layoffs.layoffs
where total_laid_off <= 500;

delete from layoffs.layoffs where location = '' OR location is NULL;

delete from layoffs.layoffs where industry = '' OR industry is NULL;

delete from layoffs.layoffs where total_laid_off = '' OR total_laid_off is NULL;

delete from layoffs.layoffs where percentage_laid_off = '' OR percentage_laid_off is NULL;

delete from layoffs.layoffs where date = '' OR date is NULL;

delete from layoffs.layoffs where stage = '' OR stage is NULL;

delete from layoffs.layoffs where country = '' OR country is NULL;

delete from layoffs.layoffs where funds_raised = '' OR funds_raised is NULL;

#Altering the table with a modify querry, changing the data type from text to Integer for total_laid_off
ALTER TABLE layoffs.layoffs MODIFY total_laid_off int

#Changing the column name of Date to Date_of_layoff
ALTER TABLE layoffs.layoffs RENAME COLUMN date TO date_of_layoff;

#Asking Question: What country contained the most layoffs? 
SELECT country, total_laid_off FROM layoffs.layoffs
order by total_laid_off desc;

delete from layoffs.layoffs Where stage = 'unknown' OR '';

Alter Table layoffs.layoffs RENAME column stage to funding_stage;

# Asking Question: What country contained the most layoffs? 
SELECT country, total_laid_off FROM layoffs.layoffs
order by total_laid_off desc;

# Asking Question: Is there a correlation between the percentage laid off and the funds raised?
Select company, percentage_laid_off from layoffs.layoffs
order by funds_raised desc;

select company, funds_raised, CONCAT( percentage_laid_off * 100, '%') 
As percentage_laid_off from layoffs.layoffs
order by funds_raised desc;

# Question; What are the total layoffs by region.
Select company, location, country, total_laid_off
From layoffs.layoffs
Group By country
Order by total_laid_off desc;