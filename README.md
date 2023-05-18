![Logo](https://i.ibb.co/n00wDmQ/logo-dark.png)

# Cluckoo Ecommerce

This e-commerce website is for all kinds of watches that we are going to sell online. It contains very beautiful UI/UX design and is responsive to make customers or visitors more attractive. We are implementing special features to make the website look better. Employees work around the clock to monitor orders, address customer concerns, and ensure that the watches we sell are safe and sealed. Customers can select any kinds of watches that we are going to sell at the same time. We are adding multiple images, ratings, and other features that I'll provide below.
# Features

**Admin Side**
- **Dashboard and Analytics** – It contains the number of sellers, products, categories, etc.
- **All Categories**
- **All Products** – (Create, Read, Update, Delete)
- **All Brands** - (Create, Read, Update, Delete)
- **Home Slider** – (Create, Read, Update, Delete)
- **All Users** – CRUD (without Password because of Privacy) It contains managing Roles (Admin, Moderator, User)
- **Admin Settings** – It contains customization of the website and switches.
- **Email System** - It uses authentication (login and signup, forgot password, order summary) and also the tracking number and location of where the item is.
- **Notifications**
- **Messages from Customers**
- **API’s** – It can be used cross-platform like the mobile app that we are developing soon (React Native). Fetching data from APIs is important.
- **Login and Register**
- **Logout**

**User Side**
- **Homepage**
- **Login and Register**
- **Profile Details**
- **Product Details**
- **List of Carts**
- **Search**
- **Place Order and Summary, Confirmation**
- **Paypal Integration**
- **Logout**
# What I Used
| Name of Software | Value |
| :-------- | :------- |
| `Code/IDE` | `Visual  Studio Code` |
| `Web Frameworks` | `Laravel Artisan 9, Bootstrap 5` |
| `Dependencies` | `Laravel Livewire, Owl Carousel` |
| `Design / Prototype` | `Figma, Adobe Photoshop` |
| `API Testing` | `Postman` |

# System Requirements

- Composer Version 2.5.5 or Later - [Download](https://getcomposer.org/Composer-Setup.exe)
- XAMPP - [Download](https://sourceforge.net/projects/xampp/files/)
- PHP Version 8.25 or Later
# Installation

Clone this Repository

```bash
  git clone https://github.com/makuguren/Cluckoo-Ecommerce-Laravel-9.git
```

## Composer Installation
- Find your file where you can save/download the Composer Installer named Composer-Setup.exe
- Open Composer-Setup.exe and Click Next until you get Installed in your Laptop/PC
Note: Make Sure you Check Add to PATH during Installation to Access Anywhere when you are using Command Prompt / Terminal.

To verify the Composer that you Installed in your PC/Laptop. type this in your Command Prompt / Terminal
```bash
  composer --version
```

## XAMPP Installation
- Find your file where you can save/download the Composer Installer named xampp-windows-x64-8.2.4-0-VS16-installer.exe
- Open xampp-windows-x64-8.2.4-0-VS16-installer.exe and Click Next until you get Installed in your Laptop/PC

## Laravel 9 Installation
- Open XAMPP as Administrator to Avoid Errors and Start Apache and MYSQL.
- Find the file where can you Download Cluckoo-Ecommerce Source Code.
- Extract the File and Open Cluckoo-Ecommerce.
- Click Shift + Right Click then Open Command Prompt / Terminal
Type this Command to Install Laravel 9 Globally.
```bash
  composer global require laravel/installer
```
Install All Dependencies using this Command:
```bash
  composer install
```
- Open Google Chrome or Any Browser that you have, and type https://localhost/phpmyadmin
- Click **New** and type **cluckoo** and select **Collation**.
- Click Import and find the SQL File. The SQL File is located in your Extracted Cluckoo-Ecommerce Source Code.
- and Click **Go**

## Start the Laravel 9 Server
Type this Command in your Terminal that you Opened in Previous Step:
```bash
  php artisan serve
```
to See your Output, Open Google Chrome or Any Browser that you have, and type https://localhost:8000

# Final Step
- To Access the Admin Interface of Ecommerce Site, type this url http://localhost:8000/Admin
- To Access the User Interface of Ecommerce Site, type this url http://localhost:8000/

Here's the Email and Password of Admin Panel
```bash
  Email: admin@gmail.com
  Password: password
```
- Click Login and you will Direct into Admin Dashboard.
- Now, you can Enjoy and Explore Ecommerce Site in Laravel 9.
