# Rails API Test
A simple rails api setup to test some stuff

## Adding a user
```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"users", "attributes":{"username":"Godzilla"}}}' http://localhost:3000/users
```
JSON
```json

```

## Adding a follower
```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"follows","relationships": {"following": {"data": {"type": "users", "id": 1}},"follower": {"data": {"type": "users","id": 3}}}}}' http://localhost:3000/follows
```
JSON
```json
{
  "data": {
    "type":"follows",
    "relationships": {
      "following": {
        "data": {
          "type": "users",
          "id": 1
        }
      },
      "follower": {
        "data": {
          "type": "users",
          "id": 3
       	}
      }
    }
  }
}
```

## Getting followers
```bash
curl -i -H -X GET http://localhost:3000/users/1/followers
```
## Getting following
```bash
curl -i -H -X GET http://localhost:3000/users/1/following
```
