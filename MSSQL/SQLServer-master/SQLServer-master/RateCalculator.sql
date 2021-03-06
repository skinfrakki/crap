/*

Calculates the rate of change

*/

CREATE FUNCTION RateCalculator (@new DECIMAL(18,4),@old DECIMAL(18,4))
RETURNS DECIMAL(18,4)
AS
BEGIN
	RETURN ((@new - @old)/@old) * 100
END

/* Gross Domestic Product Example:

If the United States GDP was 13.18 trillion in 2010, and in 2011, it was 13.44 trillion how much did the GDP grow or shrink by?*/

SELECT dbo.RateCalculator(13.44,13.18)
-- Answer: 1.9727% growth