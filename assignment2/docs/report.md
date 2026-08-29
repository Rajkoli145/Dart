# Assignment 2 Report - Mock API Fetcher in Dart

## 1. What the assignment was

Build a Dart program using null safety, Future, and async/await to fetch and display mock API data, and handle null and error cases. Instead of a real API, I built a `MockApiService` that simulates a network call with a delay and fetches user records by id.

## 2. Files

- `user.dart` - the `User` model. `email` is `String?` since not everyone has one.
- `api_exception.dart` - a custom exception thrown when the mock API fails.
- `mock_api_service.dart` - `MockApiService`, one method: `fetchUser(id)` returning `Future<User?>`.
- `main.dart` - entry point. Loops through a list of ids and prints the result of each fetch.

## 3. Concepts used

**Null safety** - `email` is nullable (`String?`). `toString()` uses `email ?? "not provided"` so a missing email never prints `null`. `fetchUser` returns `Future<User?>`, so the caller has to handle a missing user too.

**Future** - `fetchUser` returns `Future<User?>`, not a plain value, since it represents a network call. `Future.delayed(Duration(seconds: 1))` fakes that delay.

**async/await** - `fetchUser`, `printUser`, and `main()` are all `async`. Each `await`s the one before it, so the fetches run one at a time instead of all at once.

**Null vs error handling** - Two different failure paths, handled differently on purpose. A missing id returns `null` - that's normal, not an error, so it's checked with `if (user == null)`. Id `99` throws `ApiException` - an actual failure, caught with `try/catch`.

## 4. Output

```
Fetching user 1...
User(id: 1, name: Alice, email: alice@example.com)

Fetching user 2...
User(id: 2, name: Bob, email: not provided)

Fetching user 3...
User(id: 3, name: Charlie, email: charlie@example.com)

Fetching user 4...
No user found with id 4

Fetching user 99...
Failed to fetch user 99: ApiException: Server did not respond

Done fetching all users.
```

![Terminal output](terminal_output.png)

## 5. What I understood

- A `Future<User?>` isn't a `User?`. You have to `await` it to get the real value - I once compared a `Future` object directly and it never matched.
- Returning `null` and throwing an exception mean different things: `null` = worked fine, nothing there. Exception = actually broke.
- `??` beats writing an `if` every time something might be null.
- `main()` can be `async` too, so you can `await` straight inside it.

## 6. Challenges

**Forgot to `await`.** First version checked `user == null` on the raw `Future`, which is never null, so it always passed and printed `Instance of 'Future<User?>'` instead of real data. Adding `await` fixed it.

**Null vs throw.** Was going to throw for every failure, including "not found." Split it instead - missing id is a normal `null`, a broken server is a thrown `ApiException`. Reads clearer in `main.dart`.

**Making the delay visible.** Without `Future.delayed`, the async part wouldn't show at all - it'd look synchronous. A 1-second delay plus awaiting each fetch in a loop makes it obvious they run one after another.

**Custom exception class.** Could've just thrown a string, but a class implementing `Exception` lets me control `toString()` and catch `ApiException` specifically if needed.

## 7. Conclusion

This assignment made the gap between a `Future` and its resolved value, and between "null" and "error," a lot more concrete. Covers all four pieces - nullable field with `??`, a `Future`-returning method, `async`/`await` at multiple levels, and separate null/error handling - tested by running it and checking every id printed what I expected.
