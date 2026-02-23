
# 🚀 GitPeek

> A UIKit-based iOS app that lets users search GitHub profiles, view followers, and explore user details with clean architecture and modern networking.

Built completely programmatically using **UIKit**, **Diffable Data Source**, and **async image caching** — no storyboards (except LaunchScreen).

---

## 📱 Features

* 🔎 Search GitHub users by username
* 👥 View followers in a 3-column adaptive grid
* 🔁 Pagination with scroll detection
* 🧠 Diffable Data Source for smooth updates
* 🖼 Async image downloading + caching
* ⭐ Add/remove favorites
* 📭 Empty state handling
* 🚨 Custom reusable alert system
* 🧱 Fully programmatic UI (UIKit)
* 🧩 Clean MVC + Service Layer Architecture

---

## ScreenShots

<p align="left">
  <img width="250" alt="HomeSearch" src="https://github.com/user-attachments/assets/8e59efc3-d1e8-4314-97f8-2e4a0303b5c3" />
  <img width="250" alt="EmptyStateSearch" src="https://github.com/user-attachments/assets/a97a0680-d105-42f6-a02f-64a6a2f28167" />
  <img width="250" alt="UserModalView" src="https://github.com/user-attachments/assets/84a85ad7-9280-4190-a706-fd582a669c1d" />
  <img width="250" alt="SeachUser1" src="https://github.com/user-attachments/assets/a0022803-8b7c-4233-a5b1-f0077459a139" />
  <img width="250" alt="Searchpagination" src="https://github.com/user-attachments/assets/203a695a-1616-4e88-a10f-d45408fcff3e" />
</p>

## 🏗 Architecture

The project follows a clean modular UIKit architecture:

```
GitPeek
│
├── Custom Views
│   ├── Buttons
│   ├── Labels
│   ├── TextFields
│   ├── ImageViews
│   ├── Cells
│
├── ViewControllers
│
├── Screens
│
├── Managers
│   └── NetworkManager
│
├── Models
│
├── Extensions
│
├── Utilities
│
└── Support
```

### 🧠 Architectural Highlights

* **Diffable Data Source**
* **Result Type-based Networking**
* **Singleton Network Manager**
* **ARC-safe Closures (`[weak self]`)**
* **Pagination using Scroll Offset**
* **Reusable UI Components**
* **Programmatic AutoLayout**

---

## 🌐 Networking Layer

* Uses `URLSession`
* Custom `NetworkManager`
* `Result<Success, GFError>`
* Proper error handling
* Image caching with `NSCache`

---

## 🖼 Image Caching Strategy

* Images are downloaded asynchronously
* Cached using `NSCache`
* Prevents duplicate network calls
* Improves scroll performance

---

## 🧩 Core Screens

### 🔎 Search Screen

* Custom text field
* Username validation
* Navigation push to Followers list

### 👥 Followers List

* UICollectionView
* 3-column adaptive grid
* Diffable data source
* Infinite scroll pagination

### 👤 User Info Screen

* Header container
* Item info containers
* Modular child view controllers
* SafariViewController integration

---

## 🛠 Tech Stack

* Swift
* UIKit (Programmatic UI)
* UICollectionViewCompositionalLayout
* Diffable Data Source
* URLSession
* NSCache
* MVC + Service Layer
* SF Symbols

---

## 🚀 How to Run

1. Clone the repository
2. Open `GitPeek.xcodeproj`
3. Run on iOS 15+

No third-party dependencies.

---

## 📚 What This Project Demonstrates

✅ Clean UIKit architecture
✅ Advanced UICollectionView
✅ Networking with Result type
✅ Pagination
✅ Memory management (ARC safe closures)
✅ Reusable custom UI components
✅ Professional folder structure

---

## 🧪 Future Improvements

* Swift Concurrency (async/await)
* MVVM Refactor
* Unit Testing
* Combine integration
* Dark Mode enhancements

---

## 👨‍💻 Author

**Naushad Khan**

iOS Developer | UIKit | Swift


