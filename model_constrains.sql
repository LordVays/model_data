ALTER TABLE users ADD CONSTRAINT chk_registration_date  CHECK (data_registration <= CURRENT_DATE);
ALTER TABLE portfolio ADD CONSTRAINT chk_user_phone CHECK (user_phone ~ '^\+?[0-9\s\-\(\)]+$');
ALTER TABLE portfolio ADD CONSTRAINT chk_salary_positive CHECK (user_desired_salary > 0);
ALTER TABLE portfolio ADD CONSTRAINT chk_user_gender CHECK (user_gender IN ('Мужской', 'Женский'));
ALTER TABLE languages  ADD CONSTRAINT chk_proficiency_level CHECK (proficiency_level IN ('A1', 'A2', 'B1', 'B2', 'C1', 'C2', 'родной'));