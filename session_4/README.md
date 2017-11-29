# API docs

This is the API documentation of TopTip an app for keeping
the best tips.

## Register a tip

Registers a tip with the given data.

- Method: `POST`
- Endpoint: `/tips`

Request:

```
POST /tips HTTP/1.1
Content-Type: application/json

{
  "name": "La Murta",
  "address": "Carrer la Murta (Beni)",
  "message": "El esmorssar es meleta.",
  "advisor": "Sam"
}
```

Response:

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "1d6fas5be05d7bb08f9f",
  "name": "La Murta",
  "address": "Carrer la Murta (Beni)",
  "message": "El esmorssar es meleta",
  "advisor": "Sam"
}
```

## List tips

List all the stored tips.

- Method: `GET`
- Endpoint: `/tips`

Request:

```
GET /tips HTTP/1.1
```

Response:

```
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id": "1d6fas5be05d7bb08f9f",
    "name": "La Murta",
    "address": "Carrer la Murta (Beni)",
    "message": "El esmorssar es meleta",
    "advisor": "Sam"
  },
  {
    "id": "1231123123e05d7bb08f9f",
    "name": "El Terra",
    "address": "Baro de Sant Petrillo",
    "message": "Bon rotllo",
    "advisor": "Sam"
  }
]
```

## Delete tip

Deletes a tip given its id.

- Method: `DELETE`
- Endpoint: `/tips/:id`

Request:

```
DELETE /tips/1d6fas5be05d7bb08f9f HTTP/1.1
```

Response:

```
HTTP/1.1 200 OK
```

## Add information

Adds additional information to an existing tip.

- Method: `PUT`
- Endpoint: `/tips/:id`

Request:

```
PUT /tips/1d6fas5be05d7bb08f9f HTTP/1.1
Content-Type: application/json

{
  "review": "Me ha gustado mucho!"
}

```

Response:

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "1d6fas5be05d7bb08f9f",
  "name": "La Murta",
  "address": "Carrer la Murta (Beni)",
  "message": "El esmorssar es meleta",
  "advisor": "Sam",
  "review": "Me ha gustado mucho"
}
```
