# Library System - Assignment 1

Simple Dart console program that models a library. Built for my Dart assignment to practice variables, loops, functions, and OOP with inheritance.

## What it does

- Add books to a library
- Issue a book / return a book
- Track which books are available vs issued
- A `DigitalBook` class that extends `Book` and adds a file size field
- Counts how many books are currently available

## Files

- `lib/book.dart` - the `Book` class
- `lib/digital_book.dart` - `DigitalBook`, extends `Book`
- `lib/library.dart` - the `Library` class
- `lib/book_utils.dart` - `countAvailableBooks` helper function
- `lib/main.dart` - runs everything, this is the entry point

## How to run

```
dart run lib/main.dart
```

## Report

See `docs/report.md` for the write-up on what I learned, what I struggled with, and how I fixed it, along with the program output.
