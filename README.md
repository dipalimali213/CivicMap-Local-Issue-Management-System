<h1 align="center">🏙️ CivicMap</h1>
<h3 align="center">Spring Boot Based Civic Issue Management Platform</h3>

<p align="center">
Role-Based Issue Reporting & Resolution System for Citizens and Local Authorities
</p>

---

## 🚀 About The Project

CivicMap is a full-stack Spring Boot MVC web application that enables citizens to digitally report local civic issues and allows authorities to manage and resolve them efficiently.

The system follows a structured layered architecture and implements role-based authentication for secure operations.

---

# 🛠️ Tech Stack

<p align="center">

<img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white"/>
<img src="https://img.shields.io/badge/Spring_Boot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white"/>
<img src="https://img.shields.io/badge/Spring_MVC-6DB33F?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Spring_Data_JPA-59666C?style=for-the-badge"/>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white"/>
<img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/>
<img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white"/>

</p>

---

# 🏗️ System Architecture

```
Client (Browser)
        ↓
Spring Boot Controller Layer
        ↓
Service Layer (Business Logic)
        ↓
Repository Layer (Spring Data JPA)
        ↓
MySQL Database
```

### 🔹 Architecture Pattern
- MVC (Model-View-Controller)
- Layered Enterprise Architecture
- Role-Based Access Control

---

# 🗄️ ER Diagram (Conceptual Design)

### Entities

🔹 Citizen  
- contact_id (PK)  
- name  
- email  
- address  
- password  

🔹 Authority  
- contact_id (PK)  
- name  
- department  
- email  
- password  

🔹 Admin  
- email (PK)  
- password  

🔹 Issue  
- issue_id (PK)  
- citizen_contact (FK)  
- issue_type  
- latitude  
- longitude  
- description  
- date  
- status  

### Relationships

- One Citizen ➜ Reports Multiple Issues  
- One Authority ➜ Manages Multiple Issues  
- Admin ➜ Controls Authorities  

---

# 🔐 Core Features

## 👤 Citizen Module
✔ Register  
✔ Login  
✔ Report Issue  
✔ Track Status  

## 🏛 Authority Module
✔ Login  
✔ View Assigned Issues  
✔ Update Issue Status  

## 🛠 Admin Module
✔ Add Authority  
✔ Delete Authority  
✔ View Authorities  
✔ View Citizens  
✔ Monitor All Issues  

---

# 🔄 Issue Workflow

```
Citizen Reports Issue
        ↓
Issue Stored (Pending)
        ↓
Authority Reviews
        ↓
Status Updated
        ↓
Citizen Tracks Resolution
```

---

# 📸 Application Screenshots

📁 Place images inside: `screenshots/`

### 🏠 Home Page
![Home](screenshots/Home Page.png)

### 🔐 Admin Login
![Admin Login](screenshots/Admin Login Page.png)

### 🛠 Admin Dashboard
![Admin Dashboard](screenshots/Admin Home Page.png)

### ➕ Add Authority
![Add Authority](screenshots/Add Authority.png)

### 🗑 Delete Authority
![Delete Authority](screenshots/Delete Authority.png)

### 👥 View Authorities
![View Authority](screenshots/View Authority.png)

### 👤 Citizen Registration
![Citizen Register](screenshots/Citizen Register Page.png)

### 🔐 Citizen Login
![Citizen Login](screenshots/Citizen Login Page.png)

### 🏠 Citizen Dashboard
![Citizen Home](screenshots/Citizen Home Page.png)

### 📍 Report Issue
![Report Issue](screenshots/Report Issue Page.png)

### 📊 View All Issues
![View All Issues](screenshots/View All Issue.png)

### 📌 Reported Issue Status
![Reported Issue](screenshots/Reported Issue.png)

### 🏢 Authority Login
![Authority Login](screenshots/Authority Login Page.png)

### 🏠 Authority Dashboard
![Authority Home](screenshots/Authority Home Page.png)

---

# ⚙️ Installation Guide

## 1️⃣ Clone Repository

```bash
git clone https://github.com/your-username/CivicMap-SpringBoot.git
```

---

## 2️⃣ Setup Database

```sql
CREATE DATABASE civicdb;
```

Import:
```
civicdb.sql
```

---

## 3️⃣ Configure application.properties

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/civicdb
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

---

## 4️⃣ Run Application

```bash
mvn spring-boot:run
```

Access:
```
http://localhost:8081/
```

---

# 📂 Project Structure

```
CivicMap-SpringBoot
│
├── src/
├── civicdb.sql
├── pom.xml
├── screenshots/
└── README.md
```

---

# 🚀 Future Enhancements

- Spring Security (JWT)
- Google Maps Integration
- Email Notifications
- Admin Analytics Dashboard
- Docker Deployment
- Cloud Hosting

---

# 👩‍💻 Developed By

**Dipali Mali**  
Java | Spring Boot | Full Stack Developer  

---

# ⭐ Support

If you found this project useful, please give it a ⭐ on GitHub!
