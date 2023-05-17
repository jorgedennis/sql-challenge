CREATE TABLE Departments (
    dept_no VARCHAR(50),
    dept_name VARCHAR(50),
    primary key (dept_no)
);

CREATE TABLE Dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(50)    NOT NULL,
    foreign key (dept_no) references Departments (dept_no),
    FOREIGN KEY (emp_no) references Employees (emp_no)
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(50)  NOT NULL,
    emp_no INTEGER	NOT NULL,
    foreign key (dept_no) references Departments (dept_no),
	foreign key (emp_no) references Employees (emp_no),
	primary key (dept_no, emp_no)
);

CREATE TABLE Employees (
    emp_no INTEGER,
    emp_title_id VARCHAR(50),
    birth_date DATE,
    first_name TEXT,
    last_name TEXT,
    sex TEXT,
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) references Titles (title_id)
);

CREATE TABLE Salaries (
    emp_no INTEGER,
    salary INTEGER,
    foreign key (emp_no) references Employees (emp_no),
	PRIMARY KEY (emp_no)
);

CREATE TABLE Titles (
    title_id VARCHAR(50),
    title TEXT,
    Primary key (title_id)
);
