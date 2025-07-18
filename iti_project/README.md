# 🏥 Hospital Management System - Dart OOP

This project is a **Hospital Management System** implemented in the **Dart** programming language using advanced **Object-Oriented Programming (OOP)** features. It models a hospital structure with patients, doctors, and nurses, demonstrating real-world relationships through class hierarchies, abstraction, and code reuse.

---

## 📌 Project Overview

This system allows you to:

- Create and manage **patients** with full details
- Assign **doctors** and **nurses** to patients
- Track illnesses and caregiving details
- Organize the system using clean, maintainable OOP structure

---

## 🧠 Dart Concepts & Features Used

This project demonstrates a wide range of Dart OOP capabilities:

### ✅ Core OOP Principles

- **Classes & Objects** – Core building blocks of the system
- **Inheritance** – Shared behavior via a base `Person` class
- **Constructors** – With named and optional parameters
- **Null Safety** – Using `?`, `??`, `late`, and null-aware operators
- **Lists & Iteration** – For managing groups of people

### 🧩 Advanced Dart Features

- **Abstract Classes** – Define base contracts (e.g., `CareProvider`, `Person`) that enforce structure for subclasses
- **Mixins** – Reusable methods and properties for adding behavior without inheritance (e.g., `CanTalk`, `CanCare`)
- **Lambda Functions** – For concise logic expressions
- **Encapsulation** – Controlled access to fields using getters/setters

---

## 🛠 Technologies Used

- 🐦 **Dart** – Primary programming language
- 💡 **Object-Oriented Programming (OOP)**
- 🧱 **Modular Project Structure** using folders and files
- 🧪 **Command Line Execution**

---

## 🏗️ Project Structure

hospital_system/
├── lib/
│ ├── main.dart # Program entry point
│ ├── models/
│ │ ├── person.dart # Abstract base class
│ │ ├── patient.dart # Patient class extends Person
│ │ ├── doctor.dart # Doctor class uses mixins
│ │ ├── nurse.dart # Nurse class uses mixins
│ │ └── mixins.dart # Shared mixin behaviors (e.g., CanTalk, CanCare)
├── README.md




👤 Author
Afnan Ali
GitHub: @AfnanAli537
