# Lattice Innovations Assignment

Must to install node.js and xampp(Or MySQL Server).

## Setup

Open your terminal (cmd, powershell, git bash)
Clone this repository by :

```
git clone https://github.com/Gaurimusmade/lattice-innovations-assignment.git
```

Enter to the repository folder :

```
cd lattice-innovations-assignment
```

Install all required dependencies using `npm` or you can also use` yarn`:

```
npm install or yarn install
```

**You can either use MySQL Server.Here is database setup for XAMPP.**

## Setup Database

1.**Start XAMPP**

- Launch XAMPP Control Panel.
- Start the Apache and MySQL services.

2.**Open PhpMyAdmin**
-Open your web browser and navigate to [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).

3.**Create Database**

- Click on the "New" button on the left sidebar.
- Enter a name for your database (e.g., `lattice-innovations`).
- Choose `utf8mb4_general_ci` as the collation.
- Click "Create."

4.**Import SQL file**

- Select the newly created database from the left sidebar.
- Click on the "Import" tab.
- Select the provided SQL file (`lattice-innovations.sql`).
- Click "Go" to import the SQL file.

5.**Setup .env file** according to your local settings.

```
PORT = 5001 // choose the port for server to run
TOKEN_SECRET = "your secret string"
DB_USER = "root" //your MySQL username
DB_HOST = "localhost"
DB_DATABASE = "lattice-innovations" //the database name you choose in 3rd step
DB_PASSWORD = "" //password of your MySQL database

```

## How to use

Now it's time to use API endpoints.

1. Import "Lattice-Innovations.postman_collection.json" file to postman(find in cloned folder).
2. setup port variable in postman according to your settings.
3. start node.js server

```
npm start
```

4. Refer below API documentation for simplicity.

### POST /api/patients/register

Register a new user.

- **Method:** POST
- **Endpoint:** /api/patients/register

#### Request Body

| Field           | Type   | Description            |
| --------------- | ------ | ---------------------- |
| name            | string | Patient's name         |
| address         | string | Patient's address      |
| email           | string | Patient's email        |
| phone_number    | string | Patient's phone number |
| password        | string | Patient's password     |
| photo           | string | Patient's photo        |
| psychiatrist_id | int    | Psychiatrist id        |

#### Response

Upon successful registration, the API will return a response with status code 201 and the following JSON data:

```json
{
  "message": "Patient registration successful"
}
```

## GET /api/hospital/:hospitalId

Retrieve a list of all users.

- **Method:** GET
- **Endpoint:** /api/hospital/:hospitalId
- **Authentication required**

#### Response

Upon successful retrieval, the API will return a response with status code 200 and the following JSON data:

```json
{
  "hospitalName": "hospital_name",
  "totalPsychiatrists": "psychiatrists_count",
  "totalPatients": "total_patients_count",
  "PsychiatristDetails": [
    {
      "id": "psychiatrists_id",
      "name": "psychiatrists_name",
      "patientCount": "patients_count"
    }
  ]
}
```

### Technologies Used

- Node.js
- Express
- MySQL

#### Thank you
