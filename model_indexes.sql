CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_login ON users(login_user);

CREATE INDEX idx_portfolio_user_id ON portfolio(id_user);
CREATE INDEX idx_portfolio_position ON portfolio(user_position);
CREATE INDEX idx_portfolio_salary ON portfolio(user_desired_salary);

CREATE INDEX idx_education_user_id ON education(id_user);
CREATE INDEX idx_education_institution ON education(institution_name);

CREATE INDEX idx_skills_user_id ON skills(id_user);
CREATE INDEX idx_skills_name ON skills(skill_name);

CREATE INDEX idx_languages_user_id ON languages(id_user);
CREATE INDEX idx_languages_name ON languages(language_name);

CREATE INDEX idx_employment_user_id ON employment(id_user);
CREATE INDEX idx_employment_type ON employment(employment_type);

CREATE INDEX idx_portfolio_city_position ON portfolio(user_city, user_position);
CREATE INDEX idx_education_user_specialization ON education(id_user, specialization);