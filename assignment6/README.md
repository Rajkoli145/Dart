# Product Listing & Filter - Assignment 6

Flutter product catalog application built to practice dynamic list rendering using `ListView.builder`, custom data models, and reactive search/filtering using `setState`.

## What it does

- Dynamic product catalog with name, category, and price
- Real-time search and filter functionality by product name or category
- Clear button to quickly reset the search query
- Empty state indicator when no matching items are found
- Modular architecture separating model, UI components, screen, and entry point

## Files

- `lib/product_item.dart` - `Product` data model and reusable `ProductTile` widget
- `lib/product_list_screen.dart` - `ProductListScreen` containing search field, filter logic with `setState`, and dynamic `ListView.builder`
- `lib/main.dart` - entry point configuring MaterialApp theme and home screen

## How to run

```bash
flutter run
```

## Report

See `docs/report.md` for the complete write-up and concept breakdown.
