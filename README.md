# lct-template-demo
Licortech Template Demo

## Idée 
- Déplacer les fichiers à la bonne place : .html à view et change nom .blade.php
- css, js, fonts et images à public
- scss à resource, changer vite. congif!,js : 
laravel({
            input: ['resources/js/app.js', 'resources/scss/style.css'],
            refresh: true,
        }),


        npm install 
        npm run dev

        Laraveil build scss -> css/style.css

- séparer fichier .html

## preparer data 

Ex: php artisan make:migration create_offers_table
    

## Lỗi session

Laravel sử dụng session để lưu thông tin người dùng tạm thời giữa các request (ví dụ: thông tin đăng nhập, flash message, CSRF token...).

Nếu SESSION_DRIVER=database, Laravel sẽ lưu session trong bảng sessions.

Nếu không tạo bảng đó (hoặc đổi sang file mà chưa xóa cache), sẽ gây lỗi.

SESSION_DRIVER=file
CACHE_STORE=file

file sẽ Lưu trong thư mục (storage/framework/sessions, storage/framework/cache). Khi chọn file, laravel không dùng MySQL để lưu session cache

## load data

php artisan migrate sẽ tạo các bảng trong migrate sang data myphpadmin

## data được truy cập mọi view:
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View; 
khai báo thứ tự này trong appServiceProvider.php

## save image 

            $filename = $request->file('images')->getClientOriginalName();
            $path = $request->file('images')->storeAs('public/images', $filename);
            $publicPath = 'images/' . $filename;
    đảm bảo không đổi tên ảnh, lưu vào storage/public