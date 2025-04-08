### 1.4.0

- Add protected_area_parcels table, It is a clone from protected_areas but without a few fields
- Drop unused users table
- Add :wdpa_pid to protected_areas table
- Remove unused wikipedia related tables

### 1.3.0

- Add additional fields to api_users table: :gdpr_consent, :gdpr_check_due

### 1.2.0

- Add additional fields to protected_area table: `marine_type`, `verif`, `parent_iso3`

### 1.1.0

- Add additional geom count fields to country_statistics table

### 1.0.0 (start of logging)

- PP and PP-API were pointing at different, diverged branches of this module.
- Merges the refresh branch (PP's branch) into the master branch (PP-API's branch)