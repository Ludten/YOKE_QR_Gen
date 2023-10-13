# NestJS Movie QR Code Generator Application

The NestJS Movie QR Code Generator is a simple web application that generates QR codes for a list of random movies and displays them. It allows users to scan the QR codes and view details of the movies.
## Prerequisites

Before running this application, make sure you have the following installed:
- Node.js: https://nodejs.org/
- NestJS: https://nestjs.com/
- Prisma: https://www.prisma.io/
- PostgreSQL: https://www.postgresql.org/

## Getting Started

1. Clone the Repository:
	```bash
	git clone https://github.com/your-username/your-repo.git
	cd your-repo

2. Install Dependencies:
	```bash
	npm install

3. Database Configuration:
	- Configure your database connection in the prisma/schema.prisma file.

4. Run Migrations:
	```bash
	npx prisma migrate dev

5. Run the Application:
	```bash
	npm run start

### NOTE
	If you use a cloud-hosted database for development, you need to create the shadow database manually.
	To circumvent this issue
	```bash
	npx prisma db push

The application will start on http://localhost:3000 by default.

## Usage

1. Access the application in your web browser: http://localhost:3000.
2. The application will display QR codes for a list of 10 random movies.
3. Users can scan the QR codes to view movie details.

## Configuration

You can customize the application by modifying the configuration files and adding more features as needed.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
## Acknowledgments

Thanks to the NestJS and Prisma communities for their great tools and documentation.
