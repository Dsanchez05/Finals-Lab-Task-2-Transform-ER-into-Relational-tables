# Finals-Lab-Task-2-Transform-ER-into-Relational-tables

In this task, we used MySQL to convert an ER diagram into relational tables and learned how to accurately map entities and relationships into a database. Our job was to create tables for students, assignments, and submissions, capturing all necessary attributes and identifying primary and foreign keys. We also ensured that weak or dependent entities were properly represented, with relationships clearly defined between students, their submissions, and the corresponding assignments.

# These are the guide given by our instructor:

## Transforming ER Model to Relational Tables
![Screenshot 2025-04-21 050756](https://github.com/user-attachments/assets/6aaa0721-4290-46b8-a54e-03d09c541b09)

### Task 1: Create the student table
- Define username: String (VARCHAR), up to 50 characters.
  
### Task 2: Create the assignment table
- Define shortname: String (VARCHAR), up to 50 characters.
- Define due date: Date, cannot be null.
- Define url: String (VARCHAR), up to 255 characters, can be null.

### Task 3: Create the submission table
- Define username: String (VARCHAR), up to 50 characters.
- Define shortname: String (VARCHAR), up to 50 characters.
- Define version: Integer, represents the version of the submission.
- Define submit date: Date, cannot be null.
- Define data: Text.
- Set the combination of username, shortname, version as the primary key.

## Query statements

### Task - 1 Student Table Query Statements
- Primary Key: username
- Relationship: One-to-Many
- One student can have many submissions.

![Screenshot 2025-04-21 034646](https://github.com/user-attachments/assets/c61c7d6f-66dc-4b48-8a34-daa1727e6134)

### Task - 2 Assignment Table Query Statements
- Primary Key: shortname
- Relationship: One-to-Many
- One assignment can have many submissions.

![Screenshot 2025-04-21 034756](https://github.com/user-attachments/assets/43944318-433d-4677-85b2-c47e2aa42354)

### Task - 3 Submission Table Query Statements
- Primary Key: A combination of username, shortname, and version
- Relationships: Many-to-One
- Each submission belongs to one student and one assignment.

![Screenshot 2025-04-21 034910](https://github.com/user-attachments/assets/ff853137-3bc0-4dd2-8328-6b5628320578)

## Table Structures

### Task 1 - Employee Table Structure
- One student can have many submissions.
  
![Screenshot 2025-04-21 034712](https://github.com/user-attachments/assets/3bb18376-76da-4c3d-80f3-ff04c454a19a)

### Task 2 - Department Table Structure
- One assignment can have many submissions.
  
![Screenshot 2025-04-21 034813](https://github.com/user-attachments/assets/f8fe5864-84aa-4f24-9b69-2997ec49b597)

### Task 3 - Employee Department Table Structure
- Each submission belongs to one student and one assignment.
  
![Screenshot 2025-04-21 034813](https://github.com/user-attachments/assets/07431caf-be68-4f5a-8962-ce299936c1fb)

## Entity Relationship Diagram
- Relational Schema attached below

![Screenshot 2025-04-21 035342](https://github.com/user-attachments/assets/08695adf-2e40-48c7-8302-3887c06eca6e)
