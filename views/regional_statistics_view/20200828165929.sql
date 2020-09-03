SELECT region_id, land_area, eez_area, ts_area,
  (COALESCE(pa_land_area,0) + COALESCE(pa_marine_area,0)) AS pa_area,
  pa_land_area, pa_marine_area, pa_eez_area, pa_ts_area, jrc_regional_area,
  (
    (COALESCE(pa_land_area,0) + COALESCE(pa_marine_area,0)) /
    NULLIF(
      (land_area + COALESCE(eez_area, 0) + COALESCE(ts_area,0)),0
    ) *100
  ) AS percentage_pa_cover,
  (COALESCE(pa_land_area,0) / NULLIF(land_area,0) * 100) AS percentage_pa_land_cover,
  (COALESCE(pa_marine_area,0) / NULLIF(marine_area,0) * 100) AS percentage_pa_marine_cover,
  (COALESCE(oecms_pa_land_area,0) / NULLIF(land_area,0) * 100) AS percentage_oecms_pa_land_cover,
  (COALESCE(oecms_pa_marine_area,0) / NULLIF(marine_area,0) * 100) AS percentage_oecms_pa_marine_cover,
  (COALESCE(well_connected_area,0) / NULLIF(jrc_regional_terr_area,0) * 100) AS percentage_well_connected,
  (COALESCE(importance_area,0) / NULLIF(jrc_regional_area,0) * 100) AS percentage_importance,
  (COALESCE(pame_pa_land_area,0) / NULLIF(pa_land_area,0) * 100) AS pame_percentage_pa_land_cover,
  (COALESCE(pame_pa_marine_area,0) / NULLIF(pa_marine_area,0) * 100) AS pame_percentage_pa_marine_cover,
  CASE
    WHEN eez_area = 0 THEN
    0
    ELSE
    COALESCE(pa_eez_area,0) / NULLIF(eez_area,0) * 100
  END AS percentage_pa_eez_cover,
  CASE
    WHEN ts_area = 0 THEN
    0
    ELSE
    COALESCE(pa_ts_area,0) / NULLIF(ts_area,0) * 100
  END AS percentage_pa_ts_cover
FROM(
  SELECT r.id region_id,
  sum(pa_land_area) pa_land_area,
  sum(pa_marine_area) pa_marine_area,
  sum(oecms_pa_land_area) oecms_pa_land_area,
  sum(oecms_pa_marine_area) oecms_pa_marine_area,
  sum(pa_eez_area) pa_eez_area,
  sum(pa_ts_area) pa_ts_area,
  sum(land_area) land_area,
  sum(marine_area) marine_area,
  sum(eez_area) eez_area,
  sum(ts_area) ts_area,
  sum(jrc_country_area * percentage_well_connected / 100) well_connected_area,
  sum(jrc_country_area * percentage_importance / 100) importance_area,
  sum(jrc_country_area) jrc_regional_area,
  sum(jrc_terr_area) jrc_regional_terr_area,
  sum(pame_pa_land_area) pame_pa_land_area,
  sum(pame_pa_marine_area) pame_pa_marine_area
  FROM country_statistics cs
  JOIN countries c ON cs.country_id = c.id
  JOIN pame_statistics p ON p.country_id = c.id
  JOIN regions r on r.id = c.region_id
  GROUP BY r.id
) areas
