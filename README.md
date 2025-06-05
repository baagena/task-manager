# Task Manager

Task Manager is a full-stack task management web application built with **Laravel (PHP)** for the backend and **React.js** for the frontend. It allows users to create, update, and track tasks in an organized way.

---

## 🧰 Technologies Used

* PHP (PHP 8.2.12)
* Laravel Framework (in `/backend` folder)
* React.js (frontend in `/frontend` folder)
* MySQL (database)
* Composer (dependency manager for PHP)
* Node.js & npm (for frontend build tools)

---

## 📦 Requirements

Make sure you have the following installed on your system:

* PHP (PHP 8.2.12) — [Get PHP](https://www.php.net/downloads)
* Composer — [Get Composer](https://getcomposer.org/download/)
* Node.js and npm — [Get Node.js](https://nodejs.org/)
* MySQL
* Git

---

##  Installation

Follow these steps to get the app up and running.

### 1. Clone the Repository

```bash
git clone https://github.com/baagena/task-manager.git
cd task-manager
```

---

## 🔧 Backend Setup (Laravel - `/backend` folder)

### 2. Navigate to Backend Directory

```bash
cd backend
```

### 3. Set Up Environment Variables

```bash
cp .env.example .env
```

### 4. Install PHP Dependencies

```bash
composer install
```

### 5. Generate Application Key

```bash
php artisan key:generate
```

### 6. Run Migrations

```bash
php artisan migrate
```

---

## 💻 Frontend Setup (React.js - `/frontend` folder)

### 7. Navigate to Frontend Directory

```bash
cd ../frontend
```

### 8. Install Node Dependencies

```bash
npm install
```

### 9. Start the Frontend Development Server

```bash
npm run dev
```

---

## 🖥️ Running the App

Start the backend server from the `/backend` directory:

```bash
php artisan serve
```

Ensure both backend (`php artisan serve`) and frontend (`npm run dev`) servers are running.

Visit the frontend at: `http://localhost:5173`

---



## ✅ Troubleshooting

* **Database errors:** Ensure MySQL is running and `.env` is configured correctly.
* **Frontend issues:** Ensure `npm run dev` is active, and Node.js is installed.

---





