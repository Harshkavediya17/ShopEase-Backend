# ShopEase Backend

ShopEase is a simple e-commerce application backend built using **Spring Boot, Spring Data JPA, MySQL, and REST APIs**.

The backend provides APIs for managing products, product images, and basic e-commerce functionality.

---

## Tech Stack

- Java 26
- Spring Boot 4.1.1
- Spring Web MVC
- Spring Data JPA
- Hibernate
- MySQL
- Maven
- REST APIs

---

## Project Structure

```text
src/main/java/com/example/ShopEase
│
├── controller
│   └── ProductController.java
│
├── model
│   └── Product.java
│
├── repository
│   └── ProductRepository.java
│
├── service
│   └── ProductService.java
│
└── ShopEaseApplication.java


Features
Create products
View all products
View a product by ID
Update products
Delete products
Upload product images
Replace product images
Retrieve product images
Product categories
Product availability and stock quantity
MySQL database persistence
CORS support for the frontend
Automatic database initialization using data.sql


Getting Started
1. Clone the repository : git clone https://github.com/YOUR_USERNAME/ShopEase-Backend.git
   Move into the project: cd ShopEase-Backend

2. Requirements
Make sure you have installed:

Java 26
Maven
MySQL
Git

3. Create the MySQL Database
Open MySQL and create the database: CREATE DATABASE ShopEase;

4. Configure Database Credentials
⚠️ IMPORTANT
The repository does not contain the database password.
Before running the application, configure your own database credentials.
The application uses the following environment variables:

DB_URL
DB_USERNAME
DB_PASSWORD

DB_URL=jdbc:mysql://localhost:3306/ShopEase
DB_USERNAME=root
DB_PASSWORD=your_mysql_password

IntelliJ IDEA
Go to:Run
→ Edit Configurations
→ ShopEaseApplication
→ Environment Variables
ADD:
DB_URL=jdbc:mysql://localhost:3306/ShopEase
DB_USERNAME=root
DB_PASSWORD=your_mysql_password

5. Application Properties

The project's application.properties uses environment variables:
spring.application.name=ShopEase

spring.datasource.url=${DB_URL}
spring.datasource.username=${DB_USERNAME}
spring.datasource.password=${DB_PASSWORD}

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true
spring.sql.init.mode=always

You do not need to hardcode your MySQL password into this file

6. Run the Application

Using Maven:./mvnw spring-boot:run
On Windows:.\mvnw.cmd spring-boot:run

The backend runs on: http://localhost:8080

## API Endpoints

Base URL:
http://localhost:8080/api/products

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/products | Get all products |
| GET | /api/products/{id} | Get a product by ID |
| GET | /api/products/{id}/image | Get product image |
| POST | /api/products | Add a new product with image |
| PUT | /api/products/{id} | Update product details and optionally replace image |
| DELETE | /api/products/{id} | Delete a product |

### Example

GET all products:
http://localhost:8080/api/products

Get product with ID 1:
http://localhost:8080/api/products/1

Get product image:
http://localhost:8080/api/products/1/image

### POST / PUT

POST and PUT use `multipart/form-data`:

- `product` → JSON product data
- `image` → Product image file

The image is stored in the MySQL database as binary data.

Frontend
ShopEase also has a separate React frontend.
The frontend communicates with this backend through REST APIs.
