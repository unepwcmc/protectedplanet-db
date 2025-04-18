SELECT c.id,
  r.id AS region_id,
  r.name AS region_name,
  c.name AS name,
  iso_3 AS iso,
  COALESCE(percentage_pa_land_cover,0) AS percentage_pa_land_cover,
  COALESCE(percentage_pa_marine_cover,0) AS percentage_pa_marine_cover,
  COALESCE(percentage_oecms_pa_land_cover,0) AS percentage_oecms_pa_land_cover,
  COALESCE(percentage_oecms_pa_marine_cover,0) AS percentage_oecms_pa_marine_cover,
  COALESCE(percentage_well_connected,0) AS percentage_well_connected,
  COALESCE(percentage_importance,0) AS percentage_importance,
  COALESCE(pame_percentage_pa_land_cover,0) AS pame_percentage_pa_land_cover,
  COALESCE(pame_percentage_pa_marine_cover,0) AS pame_percentage_pa_marine_cover,
  'country' AS obj_type
FROM countries c
JOIN regions r ON r.id = c.region_id
JOIN country_statistics cs ON cs.country_id = c.id
LEFT JOIN pame_statistics ps ON ps.country_id = c.id

UNION

SELECT region_id AS id,
  region_id AS region_id,
  r.name AS region_name,
  r.name AS name,
  r.iso AS iso,
  percentage_pa_land_cover,
  percentage_pa_marine_cover,
  percentage_oecms_pa_land_cover,
  percentage_oecms_pa_marine_cover,
  percentage_well_connected,
  percentage_importance,
  pame_percentage_pa_land_cover,
  pame_percentage_pa_marine_cover,
  'region' AS obj_type
FROM regional_statistics_view rs
JOIN regions r ON rs.region_id = r.id
