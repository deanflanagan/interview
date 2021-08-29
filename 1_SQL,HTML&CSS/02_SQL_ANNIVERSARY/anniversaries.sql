

-- First make table called tenure with the extract there
CREATE TABLE anniversaries (
		CONSTRAINT fk_id
      FOREIGN KEY(id) 
	  REFERENCES beautemp(id),
        date_joined_company  references beautemp(date_joined_company)
);


SELECT *, date_part('year', CURRENT_DATE) - EXTRACT(YEAR FROM date_joined_company) as one 
FROM beautemp
WHERE EXTRACT(MONTH FROM date_joined_company) = 7
ORDER BY date_joined_company;

-- Then the query for july only

SELECT *, date_part('year', CURRENT_DATE)  as one 
FROM beautemp
WHERE EXTRACT(MONTH FROM date_joined_company) = 7
ORDER BY date_joined_company;

