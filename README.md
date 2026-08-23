# 🌌 Stargaze

Stargaze is a full-stack web application built with **Python, Flask, and MySQL**, following an **MVC architecture**.

The application allows users to register, authenticate, create and manage publications, interact with content through likes, and securely manage their own data.

This project was developed as part of my Full Stack Python certification and demonstrates backend development, relational database design, authentication, CRUD operations, validation, and deployment.

---

## 🚀 Features

- User registration and login
- Secure password hashing with Bcrypt
- Session-based authentication
- Create publications
- Edit existing publications
- Delete publications
- User ownership and permission validation
- Publication validation
- Like system
- Relational MySQL database
- Dynamic content rendered with Jinja2
- MVC project architecture
- Production deployment configuration

---

## 🛠️ Tech Stack

### Backend

- Python
- Flask
- Flask-Bcrypt
- Object-Oriented Programming
- MVC Architecture

### Database

- MySQL
- SQL
- Relational database design
- JOIN queries
- Aggregations and GROUP BY

### Frontend

- HTML5
- CSS3
- JavaScript
- Jinja2

### Tools & Deployment

- Git
- GitHub
- Pipenv
- Gunicorn
- Railway

---

## 🏗️ Project Structure

```text
stargaze/
│
├── flask_app/
│   ├── config/
│   ├── controllers/
│   │   ├── publications.py
│   │   └── users.py
│   ├── models/
│   │   ├── publication.py
│   │   └── user.py
│   ├── static/
│   │   └── css/
│   ├── templates/
│   │   ├── dashboard.html
│   │   ├── edit_publication.html
│   │   └── index.html
│   └── __init__.py
│
├── Pipfile
├── Pipfile.lock
├── Procfile
├── requirements.txt
└── server.py
```

---

## 🔐 Authentication & Security

User authentication is implemented using Flask sessions and Bcrypt password hashing.

Protected routes verify that a valid user session exists before allowing access to authenticated functionality.

Users can only edit or delete publications they own.

---

## 🗄️ Database

The application uses MySQL and relational tables for:

- Users
- Publications
- Likes

SQL queries include relational joins and aggregation to associate publications with their authors and calculate interaction data such as the number of likes.

---

## 📸 Screenshots

Screenshots and live demo will be added as the project portfolio is completed.

---

## ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/Furipe-Dono/stargaze.git
```

Enter the project directory:

```bash
cd stargaze
```

Install dependencies using Pipenv:

```bash
pipenv install
```

Activate the virtual environment:

```bash
pipenv shell
```

Configure the MySQL database and environment variables required by the application.

Run the application:

```bash
python server.py
```

---

## 🎯 What I Practiced

This project helped strengthen my understanding of:

- Flask application architecture
- MVC separation of concerns
- User authentication
- Password hashing
- Session management
- CRUD operations
- SQL relationships
- MySQL joins and aggregation
- Server-side validation
- Authorization and ownership checks
- Deployment of Flask applications

---

## 👨‍💻 Author

**Felipe Vargas**

Full Stack Python Developer

GitHub: [@Furipe-Dono](https://github.com/Furipe-Dono)
