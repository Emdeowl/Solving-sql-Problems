/*
Docs.google.com/presentation/d/1YHGG_VuAPi1XW6Mv_CEU5TskODwmu4alVH3TQWjSMHQ/edit#slide=id.g26943b007ee_2_16
*/

SELECT
    COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM
    STATION
