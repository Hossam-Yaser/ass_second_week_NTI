# Second Week Assignment – Dart OOP & SOLID Principles

This repository contains the solution to the **NTI second week Dart programming assignment**. It demonstrates object-oriented programming (OOP) fundamentals, class design, inheritance, and SOLID principle applications using the Dart programming language.

---

## 📌 Contents

### ✅ 1. BankAccount Class
Implements a simple bank account.

- **Data Members**: `accountID`, `balance`
- **Constructors**:
  - One sets a given balance
  - One sets default balance to 0
- **Methods**:
  - `deposit(amount)`
  - `withdraw(amount)` with balance check

---

### ✅ 2. Holiday Class
Represents a holiday during the year.

- **Data Members**: `name`, `day`, `month`
- **Constructor**: Sets all values
- **Methods**:
  - `inSameMonth(holiday1, holiday2)` → returns `true` if same month
  - `avgDate(Holiday[])` → returns average of day values

---

### ✅ 3. Movie Class
Represents a movie and its rating.

- **Data Members**: `title`, `studio`, `rating`
- **Constructors**:
  - One with all fields
  - One with default `rating = "PG"`
- **Method**:
  - `getPG(Movie[])` → returns array of movies with "PG" in rating

---

### ✅ 4. GeometricObject, Triangle, and Rectangle

#### GeometricObject (Base Class)
- **Fields**: `color = "white"`, `filled = false`
- **Methods**:
  - `toString()` description
  - Constructors with/without parameters

#### Triangle (extends GeometricObject)
- **Fields**: `side1`, `side2`, `side3` (default 1.0)
- **Methods**:
  - `getArea()`
  - `getPerimeter()`
  - `toString()` with side values

#### Rectangle (extends GeometricObject)
- **Fields**: `width`, `height` (default 1.0)
- **Methods**:
  - `getArea()`
  - `getPerimeter()`
  - `toString()` with dimensions

---

### ✅ 5. Shape Interface

Defines a common interface for all shapes:

- **Abstract Method**: `getArea()`
- Implemented by `Triangle`, `Rectangle`, and others

---

## 💡 SOLID Principle Tasks

### ✅ 6. SOLID Violation Detection
Identifies violations in provided code and suggests fixes.

---

### ✅ 7. UserManager Class Refactor
Separates responsibilities into:
- `UserManager` for database logic
- `EmailService` for communication

---

### ✅ 8. OrderService Class Refactor
Applies **Single Responsibility** and **Separation of Concerns**:
- Order creation
- DB handling
- Email sending

---

### ✅ 9. Repository with Remote & Local Clients
Applies **Dependency Inversion Principle**:
- Uses both `RemoteClient` and `LocalClient`
- Switches based on network availability

---

### ✅ 10. Parking System
Defines `Parking` abstract class with:
- `parkCar()`, `unParkCar()`, `capacityParking()`, `calculateCost()`, `doPayment()`
- Implemented by:
  - `PaidParking`
  - `FreeParking`

---

### ✅ 11. Payment Processor
Handles different payment methods using **polymorphism**:
- Accepts `CreditCard` or `PayPal`
- Invokes appropriate method based on runtime type

---

## 🛠️ Technologies

- **Language**: Dart
- **Concepts Used**:
  - Classes & Objects
  - Inheritance
  - Polymorphism
  - Abstraction
  - SOLID Design Principles

---

## 🚀 How to Run

1. Make sure Dart SDK is installed.
2. Clone the repository:
   ```bash
   git clone https://github.com/Hossam-Yaser/ass_second_week_NTI.git
   cd ass_second_week_NTI
