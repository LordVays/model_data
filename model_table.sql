CREATE TABLE users (
    id_user SERIAL PRIMARY KEY,
    login_user VARCHAR(50) NOT NULL UNIQUE,
    password_user VARCHAR(255) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    data_registration DATE NOT NULL,
    profile_photo BYTEA,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE portfolio (
    id_portfolio SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES users(id_user),
    user_phone VARCHAR(20),
    user_city VARCHAR(50),
    user_gender VARCHAR(10),
    user_birth_date DATE,
    user_citizenship VARCHAR(50),
    user_marital_status VARCHAR(30),
    user_position VARCHAR(50),
    user_desired_salary INT,
    user_employment_type VARCHAR(30),
    user_additional_info TEXT,
    user_hobbies TEXT
);

CREATE TABLE education (
    id_education SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES users(id_user),
    institution_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL
);

CREATE TABLE skills (
    id_skill SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES users(id_user),
    skill_name VARCHAR(50) NOT NULL
);

CREATE TABLE languages (
    id_language SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES users(id_user),
    language_name VARCHAR(30) NOT NULL,
    proficiency_level VARCHAR(20) NOT NULL
);

CREATE TABLE employment (
    id_employment SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES users(id_user),
    employment_type VARCHAR(30) NOT NULL,
    work_schedule VARCHAR(30) NOT NULL
);