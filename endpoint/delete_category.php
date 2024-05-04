<?php
include('../conn/conn.php');

if (isset($_GET['category'])) {
    $category = $_GET['category'];

    try {

        $query = "DELETE FROM `tbl_expense_category` WHERE `tbl_expense_category_id` = '$category'";

        $stmt = $conn->prepare($query);
        $query_execute = $stmt->execute();

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    header("Location:http://localhost/inventario-MAIN/index.php?vista=index");
    exit();

}
