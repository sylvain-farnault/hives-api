# HIVES API Documentation

## Base PATH

The base path for accessing the API is: `/api/v1/hives`

## Authentication

TODO ?

## Basic Operations

### Create Hive
- **HTTP Verb:** POST
- **URL path:** `/`
- **Body Example:**
  ```json
	{ 
		"hive": { 
			"name": "My demo hive", 
			"weight": 15000, 
			"user_id": 1 
		}
	}
  ```
- **Success Response example:**

  Status: 201 (Created)
  ```json
  {
		"id": 1,
		"name": "My demo hive", 
		"weight": 15000, 
		"user_id": 1,
		"created_at": "2024-06-06T11:49:35.490Z",
		"updated_at": "2024-06-06T11:49:35.490Z"
  }
  ```

### Get all Hives

- **HTTP Verb :** GET
- **URL :** `/`
- **Success response example**

  Status: 200 (OK)
  ```json
	[
		{
			"id": 1,
			"name": "My demo hive", 
			"weight": 15000, 
			"user_id": 1,
			"created_at": "2024-06-06T11:49:35.490Z",
			"updated_at": "2024-06-06T11:49:35.490Z"
		},
		{
			"..."
		}
	]
  ```

### Get a given Hive by his ID

- **HTTP Verb :** GET
- **URL :** `/:id`
- **Success response example**

  Status: 200 (OK)
  ```json
  {
		"id": 1,
		"name": "My demo hive", 
		"weight": 15000, 
		"user_id": 1,
		"created_at": "2024-06-06T11:49:35.490Z",
		"updated_at": "2024-06-06T11:49:35.490Z"
  }
	```

- **Error message if you provide a bad ID**

	Example if providing id `14` that does not match any record in the database:

	Status Code: 404 (Not Found)
	```json
	{
		"error": "Couldn't find Hive with 'id'=14"
	}
	```

# Frontend application
Here is a VueJS app using this API

_A link to the GitHub repository is coming..._


