<?php
include('../conn/conn.php');

if (isset($_GET['expense'])) {
    $expense = $_GET['expense'];

    try {

        $query = "DELETE FROM `tbl_expense` WHERE `tbl_expense_id` = '$expense'";

        $stmt = $conn->prepare($query);
        $query_execute = $stmt->execute();

        if ($query_execute) {
            echo "<script>
            alert('Gasto eliminado exitosamente!'); 
            window.location.href = 'http://localhost/control-gastos/';
            </script>";
        } else {
            echo "<script>
            alert('Expense Not Deleted!'); 
            window.location.href = 'http://localhost/control-gastos/';
            </script>";
        }
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    header("Location:http://localhost/inventario-MAIN/index.php?vista=index");
    exit();
}
