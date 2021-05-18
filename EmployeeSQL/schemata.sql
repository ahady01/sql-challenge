-- Create Tables
-- Table: public.departements
DROP TABLE IF EXISTS public.departements;
CREATE TABLE public.departements
(
    dept_no character varying NOT NULL,
    dept_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departements_pkey PRIMARY KEY (dept_no)
)
TABLESPACE pg_default;
ALTER TABLE public.departements
    OWNER to postgres;


-- Table: public.dept_emp
DROP TABLE IF EXISTS public.dept_emp;
CREATE TABLE public.dept_emp
(
    emp_no character varying NOT NULL,
    dept_no character varying COLLATE pg_catalog."default" NOT NULL
)
TABLESPACE pg_default;
ALTER TABLE public.dept_emp
    OWNER to postgres;


-- Table: public.dept_manager
DROP TABLE IF EXISTS public.dept_manager;
CREATE TABLE public.dept_manager
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    emp_no character varying COLLATE pg_catalog."default" NOT NULL
)
TABLESPACE pg_default;
ALTER TABLE public.dept_manager
    OWNER to postgres;
	
		
-- Table: public.employees
DROP TABLE IF EXISTS public.employees;
CREATE TABLE public.employees
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    emp_title_id character varying COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
    sex character varying COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)
TABLESPACE pg_default;
ALTER TABLE public.employees
    OWNER to postgres;


-- Table: public.salaries
DROP TABLE IF EXISTS public.salaries;
CREATE TABLE public.salaries
(
    emp_no integer NOT NULL,
    salary integer NOT NULL
)

TABLESPACE pg_default;
ALTER TABLE public.salaries
    OWNER to postgres;
	
	
-- Table: public.titles
DROP TABLE IF EXISTS public.titles;
CREATE TABLE public.titles
(
    title_id character varying NOT NULL,
    title character varying NOT NULL
)
TABLESPACE pg_default;
ALTER TABLE public.titles
    OWNER to postgres;
	



-- View table columns and datatypes
SELECT * FROM departements;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

--Copy data from CSV files

--COPY public."departements" FROM 'departments' DELIMITER ',' CSV HEADER;
