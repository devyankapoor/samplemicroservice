# Sample Microservice

This is a sample microservice application built with Spring Boot and MongoDB.

## Prerequisites

- Java 17
- Maven 3.6+
- MongoDB 4.0+

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/yourusername/samplemicroservice.git
cd samplemicroservice/backend
```

### Configuration

Ensure that the MongoDB server is running and accessible. Update the `application.properties` file if necessary.

```properties
# MongoDB connection details
spring.data.mongodb.uri=mongodb://localhost:27017/mydatabase

# Server port
server.port=8081
```

### Build and Run the Application

1. **Clean and install the project:**

    ```bash
    mvn clean install
    ```

2. **Run the application:**

    ```bash
    mvn spring-boot:run
    ```

### Access the Application

The application will start on the configured port (default is `8081`). You can access it at:

```
http://localhost:8081
```

## Troubleshooting

### Port Conflict

If you encounter a port conflict error, ensure that no other application is using the configured port. You can change the port in the `application.properties` file:

```properties
server.port=8081
```

### MongoDB Connection Issues

If the application cannot connect to MongoDB, ensure that MongoDB is running and accessible at the configured URI. You can start MongoDB using:

```bash
sudo systemctl start mongod
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


