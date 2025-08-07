
---

# 📚 Bookly – A Modern Flutter Book Discovery App

🚀 A feature-rich book browsing app built with Flutter, following **Clean Architecture**, using **Bloc** for state management, **Dio** for networking, and the **Google Books API** to fetch millions of titles.

![Bookly Screenshot](https://your-image-link.com) <!-- Replace with an actual image if available -->

---

## ✨ Features

- 🔍 Search books by title or author
- 📖 Browse featured and newest books
- 📄 View detailed book pages
- 🤝 See similar book recommendations
- 💡 Clean and maintainable codebase
- 📱 Fully responsive UI

---

## 🧠 Tech Stack

| Layer         | Tech Used                                |
|---------------|-------------------------------------------|
| UI            | Flutter Widgets, Custom UI Components     |
| State Mgmt    | Bloc (Cubit)                              |
| Networking    | Dio + Google Books API                    |
| Routing       | GoRouter (declarative, type-safe routing) |
| Architecture  | Clean Architecture                        |
| Models        | Frozen (for immutable models)             |

---

## 📦 Packages Used

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
- [`dio`](https://pub.dev/packages/dio)
- [`go_router`](https://pub.dev/packages/go_router)
- [`frozen`](https://pub.dev/packages/frozen)
- [`equatable`](https://pub.dev/packages/equatable)
- [`get_it`](https://pub.dev/packages/get_it) *(for dependency injection if used)*

---


## 🔧 Folder Structure

```

lib/
├── core/
│   ├── utils/
│   └── errors/
├── features/
│   └── home/
│       ├── data/
│       ├── domain/
│       ├── presentation/
│       └── logic/
├── config/
│   ├── routes/
│   └── theme/
└── main.dart

````

Following **Clean Architecture**:
- `data`: DTOs, API calls, Repositories
- `domain`: Entities and use cases
- `presentation`: UI, Cubits, Pages

---

## 📡 API

**Google Books API**  
Base URL: `https://www.googleapis.com/books/v1/volumes`  
Example endpoint:  
```bash
GET /volumes?q=harry+potter
````

---

## 🛠 Getting Started

```bash
git clone https://github.com/your-username/bookly.git
cd bookly
flutter pub get
flutter run
```

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

**Ibraam Magdy**
📧 [ibraam.software@gmail.com](mailto:ibraam.software@gmail.com)
🔗 [LinkedIn](https://www.linkedin.com/in/ibraam-magdy-20435b336/)
🔗 [GitHub](https://github.com/ibraam123)

---

## ❤️ Feedback

If you like this project, give it a ⭐️!
Found a bug or have a feature request? Feel free to open an issue or pull request.

