<?php
ob_start();
session_start();
include('../server/connection.php');
include('layouts/header.php');

if (!isset($_SESSION['admin_logged_in'])) {
    header('location: login.php');
}
if (isset($_POST['submit_btn'])) {
    $name = $_POST['product_name'];
    $brand = $_POST['product_brand'];
    $kategori = $_POST['product_kategori'];
    $desc = $_POST['product_desc'];
    $kriteria = $_POST['product_criteria'];
    $harga = $_POST['product_harga'];
    $warna = $_POST['product_warna'];

    $photo1 = $_FILES['photo1']['tmp_name'];
    $photo2 = $_FILES['photo2']['tmp_name'];
    $photo3 = $_FILES['photo3']['tmp_name'];
    $photo4 = $_FILES['photo4']['tmp_name'];

    $photo_name1 = str_replace(' ', '_', $name) . "1.jpg";
    $photo_name2 = str_replace(' ', '_', $name) . "2.jpg";
    $photo_name3 = str_replace(' ', '_', $name) . "3.jpg";
    $photo_name4 = str_replace(' ', '_', $name) . "4.jpg";

    move_uploaded_file($photo1, "../img/product/" . $photo_name1);
    move_uploaded_file($photo2, "../img/product/" . $photo_name2);
    move_uploaded_file($photo3, "../img/product/" . $photo_name3);
    move_uploaded_file($photo4, "../img/product/" . $photo_name4);


    $query = "INSERT INTO products VALUES('','$name','$brand','$kategori','$desc','$kriteria','$photo_name1','$photo_name2','$photo_name3','$photo_name4','$harga','0.0','$warna')";

    mysqli_query($conn, $query);

    header('location:products.php');
}
?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Products</h1>
    <nav class="mt-4 rounded" aria-label="breadcrumb">
        <ol class="breadcrumb px-3 py-2 rounded mb-4">
            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="products.php">Products</a></li>
            <li class="breadcrumb-item active">Create Product</li>
        </ol>
    </nav>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Create Products</h6>
        </div>
        <div>
            <form class="user" id="login-form" enctype="multipart/form-data" method="POST" action="">
                <div class="form-group">
                    <label for="product_name">Masukan Nama Produk</label>
                    <input type="text" class="form-control form-control-user" id="product_name" name="product_name" aria-describedby="emailHelp" placeholder="Nama Produk...">
                </div>
                <div class="form-group">
                    <label for="product_brand">Masukan Produk Brand</label>
                    <input type="text" class="form-control form-control-user" id="product_brand" name="product_brand" placeholder="Produk Brand...">
                </div>
                <div class="form-group">
                    <label for="product_kategori">Masukan Kategori Produk</label>
                    <input type="text" class="form-control form-control-user" id="product_kategori" name="product_kategori" placeholder="Produk Kategori...">
                </div>
                <div class="form-group">
                    <label for="product_deskripsi">Masukan Deskripsi Produk</label>
                    <textarea type="text" class="form-control form-control-user" id="product_deskripsi" name="product_desc" placeholder="Deskripsi Produk..."></textarea>
                </div>
                <div class="form-group">
                    <label for="product_criteria">Masukan Kriteria Produk</label>
                    <br>
                    <input type="radio" id="product_criteria" value="Favourite" name="product_criteria">Favourite
                    <input type="radio" id="product_criteria" value="None" name="product_criteria">None
                </div>
                <div class="form-group">
                    <label for="product_deskripsi">Input Foto 1:</label><br>
                    <input type="file" name="photo1">
                </div>
                <div class="form-group">
                    <label for="product_deskripsi">Input Foto 2:</label><br>
                    <input type="file" name="photo2">
                </div>
                <div class="form-group">
                    <label for="product_deskripsi">Input Foto 3:</label><br>
                    <input type="file" name="photo3">
                </div>
                <div class="form-group">
                    <label for="product_deskripsi">Input Foto 4:</label><br>
                    <input type="file" name="photo4">
                </div>
                <div class="form-group">
                    <label for="product_name">Masukan Harga Produk</label>
                    <input type="text" class="form-control form-control-user" id="product_name" name="product_harga" aria-describedby="emailHelp" placeholder="Harga Produk...">
                </div>
                <div class="form-group">
                    <label for="product_name">Masukan Warna Produk</label>
                    <input type="text" class="form-control form-control-user" id="product_name" name="product_warna" aria-describedby="emailHelp" placeholder="Warna Produk...">
                </div>
                <input type="submit" class="btn btn-primary btn-user btn-block" name="submit_btn" value="Tambah" />
            </form>
        </div>
        </d>
    </div>