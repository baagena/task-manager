# Clone the repository
git clone https://github.com/baagena/task-manager.git
cd task-manager

# === Backend Setup (Laravel) ===
cd backend
composer install
cp .env.example .env
php artisan key:generate

# Import tasks.sql manually using phpMyAdmin or any MySQL tool
# Then, update your .env file with the correct database credentials

php artisan serve

# === Frontend Setup (React) ===
cd ../frontend
npm install
npm run dev
