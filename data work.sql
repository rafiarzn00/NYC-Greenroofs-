-- Green roofs in each borough 
SELECT COUNT(borough) FROM GreenRoofData WHERE borough = 'BX'; 
-- 78  

SELECT COUNT(borough) FROM GreenRoofData WHERE borough = 'MN';
-- 459 

SELECT COUNT(borough) FROM GreenRoofData WHERE borough = 'QN'; 
-- 47 

SELECT COUNT(borough) FROM GreenRoofData WHERE borough = 'BK'; 
-- 129  

 SELECT COUNT(borough) FROM GreenRoofData WHERE borough = 'SI';
-- 4  


-- The total green roof area for each borough 
SELECT
    borough,
    SUM(gr_area) AS total_green_roof_area
FROM
    GreenRoofData
GROUP BY
    borough;
    
    SELECT
    borough,
    AVG(prop_gr) AS avg_proportion_green_roof
FROM
    GreenRoofData
GROUP BY
    borough;
    
    SELECT
    borough,
    COUNT(*) AS num_green_roofs,
    AVG(gr_area) AS avg_green_roof_area
FROM
    GreenRoofData
GROUP BY
    borough;
    
    SELECT
    borough,
    SUM(gr_area) AS total_green_roof_area
FROM
    GreenRoofData
GROUP BY
    borough
ORDER BY
    total_green_roof_area DESC; 

SELECT
    cnstrct_yr,
    AVG(gr_area) AS avg_green_roof_area,
    AVG(prop_gr) AS avg_proportion_green_roof
FROM
    GreenRoofData
GROUP BY
    cnstrct_yr;

SELECT
    cnstrct_yr,
    AVG(gr_area) AS avg_green_roof
FROM
    GreenRoofData
GROUP BY
    cnstrct_yr
ORDER BY
    AVG(gr_area) DESC
LIMIT 10;

SELECT
    borough,
    AVG(CASE WHEN gr_area > 0 THEN heightroof ELSE NULL END) AS avg_height_with_green_roofs,
    AVG(CASE WHEN gr_area = 0 THEN heightroof ELSE NULL END) AS avg_height_without_green_roofs
FROM
    GreenRoofData
GROUP BY
    borough;
    
    SELECT
    cnstrct_yr,
    AVG(gr_area) AS avg_green_roof_area
FROM
    GreenRoofData
WHERE
    cnstrct_yr IS NOT NULL
GROUP BY
    cnstrct_yr
ORDER BY
    cnstrct_yr;
    
-- Hypothesis 1: Borough Impact on Green Roof Area **
-- Test for differences in average green roof area among boroughs

SELECT borough,
       COUNT(*) AS num_greenroofs,
       AVG(gr_area) AS avg_greenroof_area
FROM GreenRoofData
GROUP BY borough;

-- Hypothesis 2: Construction Year and Green Roof Area
-- Test for correlation between construction year and green roof area

SELECT cnstrct_yr,
       COUNT(*) AS num_greenroofs,
       AVG(gr_area) AS avg_greenroof_area
FROM GreenRoofData
GROUP BY cnstrct_yr
ORDER BY cnstrct_yr desc;

-- Hypothesis 3: Proportion of Green Roof Area by Borough **
-- Test for differences in average proportion of green roof area to building area among boroughs

SELECT borough,
       COUNT(*) AS num_greenroofs,
       AVG(prop_gr) AS avg_proportion
FROM GreenRoofData
GROUP BY borough;

-- Hypothesis 4: Spatial Distribution and Building Height
-- Test for relationship between spatial distribution and height of associated buildings

SELECT heightroof,
       COUNT(*) AS num_greenroofs,
       AVG(gr_area) AS avg_greenroof_area
FROM GreenRoofData
GROUP BY heightroof;

-- Hypothesis 5: Temporal Change in Green Roof Area
-- Test for temporal trend in average green roof area over different construction years

SELECT cnstrct_yr,
       COUNT(*) AS num_greenroofs,
       AVG(gr_area) AS avg_greenroof_area
FROM GreenRoofData
GROUP BY cnstrct_yr
ORDER BY cnstrct_yr;

SELECT
    borough,
    fid,
    COUNT(*) AS greenroofs_count
FROM
    GreenRoofData
WHERE
    cnstrct_yr BETWEEN 2000 AND 2016
GROUP BY
    borough,
    fid;

SELECT
    bin,
    AVG(gr_area/bldg_area) AS avg_proportion_green_roof_area
FROM
    GreenRoofData
GROUP BY
    bin;
    
SELECT
    borough,
    AVG(gr_area) AS avg_green_roof_area
FROM
    GreenRoofData
GROUP BY
    borough;
    
SELECT
    cnstrct_yr,
    AVG(gr_area) AS avg_green_roof_area
FROM
    GreenRoofData
GROUP BY
    cnstrct_yr;
    
    SELECT
    COUNT(DISTINCT bin) 
FROM
    GreenRoofData
WHERE
    cnstrct_yr = 2011;

