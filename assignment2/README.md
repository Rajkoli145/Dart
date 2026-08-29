# Mock API Fetcher - Assignment 2

Dart console program that fetches user data from a mock API using Future and async/await, with null safety and error handling.

## What it does

- Fetches users by id from a mock in-memory "API" (`MockApiService`)
- Every fetch is async and has a simulated network delay
- Some users have no email - handled with a nullable `String?` field
- Fetching an id that doesn't exist returns `null`, handled without crashing
- Fetching id `99` throws a custom `ApiException` to simulate a server error, caught with try/catch

## Files

- `lib/user.dart` - the `User` model, with a nullable `email` field
- `lib/api_exception.dart` - custom exception thrown on API failure
- `lib/mock_api_service.dart` - the mock API, returns `Future<User?>`
- `lib/main.dart` - entry point, loops through a list of ids and prints the result of each fetch

## How to run

```
dart run lib/main.dart
```

## Report

See `docs/report.md` for the write-up on what I learned, what I struggled with, and how I fixed it, along with the program output.
