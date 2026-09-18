# 3-Screen Registration App with Named Routes - Assignment 7

Flutter multi-screen registration app built to practice declarative named routing, multi-field form validation (`Form`, `TextFormField`, `GlobalKey<FormState>`), and passing structured arguments across screens.

## What it does

- **3-Screen Architecture**: Connected navigation between Home, Registration Form, and Detail screens using Flutter named routes (`'/'`, `'/form'`, `'/detail'`).
- **Form Validation**:
  - Full name (required, minimum 3 characters)
  - Email address (required, regex format validation)
  - Phone number (required, 10-digit validation)
  - Password (required, minimum 6 characters with visibility toggle)
  - Confirm password (required, equality check with password)
- **Data Passing**: Packages validated user information into a `UserRegistration` data model and passes it via `Navigator.pushNamed(context, '/detail', arguments: user)`.
- **Detail View**: Displays registered user summary card with masked password and options to return to Home or edit details.

## Files

- `lib/user_data.dart` - `UserRegistration` model class for transporting form data across routes
- `lib/home_screen.dart` - `HomeScreen` entry screen with welcoming portal UI and route trigger
- `lib/form_screen.dart` - `FormScreen` with real-time validation and form submission
- `lib/detail_screen.dart` - `DetailScreen` displaying submitted data received via route settings
- `lib/main.dart` - `RegistrationApp` entry point defining MaterialApp theme and named routes map

## How to run

```bash
flutter run
```

## Report

See `docs/report.md` (and `docs/report.docx`) for the full assignment report, concept breakdown, and screen captures.
