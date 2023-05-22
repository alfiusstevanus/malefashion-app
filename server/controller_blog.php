<?php
include('connection.php');
$query_blog = "SELECT * FROM blogs ORDER BY blog_date DESC LIMIT 4";
$stmt_limit_blog = $conn->prepare($query_blog);
$stmt_limit_blog->execute();
$limit_blogs = $stmt_limit_blog->get_result();
