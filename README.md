# Flutter ExpansionPanelList Demo

This Flutter app demonstrates how to use the `ExpansionPanelList` widget in a clean and modular way. It allows users to expand and collapse different panels to reveal more information.

## Features

- Expand/collapse individual panels
- Custom styling for headers and body content
- Separation of logic, UI, and styles
- Uses `ExpansionPanelList` with individual expansion states
- Up arrow indicator shows only when a panel is expanded

## How It Works

- The app uses a list of `Item` objects.
- Each `Item` has a header, body, and a boolean `isExpanded`.
- The state is maintained in a `StatefulWidget` so we can expand/collapse panels interactively.
- `asMap().entries` is used to access both the index and item during panel building.
- When a panel is tapped, the `expansionCallback` toggles its `isExpanded` value.
- A trailing up-arrow icon is shown only when a panel is expanded.
