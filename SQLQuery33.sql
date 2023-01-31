SELECT location, date, hospital_beds_per_thousand,life_expectancy,population_density
FROM covid.dbo.CovidVaccinations
ORDER BY 1,2

SELECT *
FROM covid.dbo.CovidVaccinations

--TOTAL VACCINNATED  VS TOTAL CARDIOVASC DEATH RATE


SELECT location, date, total_vaccinations,cardiovasc_death_rate, (total_vaccinations/cardiovasc_death_rate)* 100 AS cardiosac_deathPercenage
FROM covid.dbo.CovidVaccinations
WHERE location like 'Nigeria'
ORDER BY 1,2


--total vaccination vs population

SELECT location, date, total_vaccinations,population_density, (total_vaccinations/population_density)* 100 AS vaccinatedPercenage
FROM covid.dbo.CovidVaccinations
--WHERE location like 'Nigeria'
ORDER BY 1,2


--contries with highest hospital bed per thousand
SELECT location, population_density, MAX(total_vaccinations),population_density, (total_vaccinations/population_density)* 100 AS vaccinatedPercenage
FROM covid.dbo.CovidVaccinations
--WHERE location like 'Nigeria'
ORDER BY 1,2
