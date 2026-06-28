# 🏃 ABC Fitness Tracker

> A JavaFX desktop application to track employee fitness activities and rank participants in the **Fittest Employee of the Month** competition.

Built as the Final Assignment for the **Professional Certificate in Java Programming – Level 01**.

---

## 📸 Features

| Tab | Feature |
|-----|---------|
| ➕ **Add Activity** | Log running, swimming, or gym workouts for any employee with a live points preview |
| 📋 **View Activities** | Browse all recorded activities in a sortable table |
| 🔍 **Filter** | Filter by employee name and/or activity type |
| 🏆 **Leaderboard** | Top-10 employees ranked by total fitness points — gold, silver & bronze highlighted |

---

## 🏗️ Architecture

```
MVC + DAO Pattern
│
├── Model         →  Employee, ActivityType, Activity, LeaderboardEntry
├── DAO           →  EmployeeDAO, ActivityTypeDAO, ActivityDAO
├── Controller    →  MainController (all tabs)
├── View          →  MainView.fxml + styles.css
└── Utility       →  DatabaseConnection (singleton)
```

---

## ⚙️ Tech Stack

- **Java 17**
- **JavaFX 21.0.2** — UI framework
- **MySQL 8.x** — persistent storage
- **JDBC** — database connectivity
- **Maven** — build & dependency management

---

## 🚀 Getting Started

### Prerequisites
- Java JDK 17+
- MySQL 8.0+
- Maven 3.8+

### 1. Set up the database
```bash
mysql -u root -p < sql/init.sql
```
This creates the `fitness_tracker` database, all tables, and seeds 12 employees + sample data.

### 2. Configure credentials
Edit `src/main/java/com/fitness/util/DatabaseConnection.java`:
```java
private static final String DB_URL  = "jdbc:mysql://localhost:3306/fitness_tracker";
private static final String USER     = "your_username";
private static final String PASSWORD = "your_password";
```

### 3. Run the app
```bash
mvn clean javafx:run
```

---

## 📐 Points System

| Activity | Unit | Points |
|----------|------|--------|
| 🏃 Running | Steps | 10 steps = 1 pt |
| 🏊 Swimming | Hours | 0.5 hrs = 1,200 pts |
| 🏋️ Workout | Hours | 1 hr = 1,500 pts |

---

## 🗂️ Project Structure

```
FitnessTracker/
├── pom.xml
├── sql/
│   └── init.sql
├── diagrams/
│   └── uml_diagrams.html        ← Use-case & Class diagrams
└── src/main/
    ├── java/com/fitness/
    │   ├── MainApp.java
    │   ├── model/
    │   ├── dao/
    │   ├── controller/
    │   └── util/
    └── resources/com/fitness/
        ├── fxml/
        └── css/
```

---

## 📊 UML Diagrams

Open `diagrams/uml_diagrams.html` in any browser to view the **Use-Case** and **Class** diagrams.


