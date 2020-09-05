<?php

// data
$all = json_decode(file_get_contents('data.json'));
$max = ceil(count($all) / 5);

// page
$p = isset($_GET['p']) ? $_GET['p'] : 1;
$menu = [$p - 2, $p - 1, $p, $p + 1, $p + 2];
if ($menu[0] < 1) {
    $n = 1 - $menu[0];
    for ($i = 0; $i < 5; $i++) {
        $menu[$i] += $n;
    }
}
if ($menu[4] > $max) {
    $n = $menu[4] - $max;
    for ($i = 0; $i < 5; $i++) {
        $menu[$i] -= $n;
    }
}

// result
$no = ($p - 1) * 5;
$data = array_slice($all, $no, 5);
$prev = $p - 5;
$next = $p + 5;

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>D11</title>
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
    <style>
        .btn-circle {
            padding:0;
            width:30px;
            height:30px;
            display:flex;
            justify-content:center;
            align-items:center;
            border-radius:50%;
        }
        .btn-dark {
            width:40px;
            height:40px;
        }
        .disabled {
            opacity: .5;
            pointer-events: none;
        }
        .btn {
            margin:0 5px;
        }
        .active {
            background-color: #223f5f !important;
            border-color: #223f5f !important;
        }
    </style>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>No.</th>
        <th>id</th>
        <th>age</th>
        <th>name</th>
        <th>gender</th>
        <th>company</th>
        <th>email</th>
        <th>phone</th>
        <th>address</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($data as $item) { ?>
        <tr>
            <td><?= ++$no ?></td>
            <td><?= $item->id ?></td>
            <td><?= $item->age ?></td>
            <td><?= $item->name ?></td>
            <td><?= $item->gender ?></td>
            <td><?= $item->company ?></td>
            <td><?= $item->email ?></td>
            <td><?= $item->phone ?></td>
            <td><?= $item->address ?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>

<div class="d-flex mt-5 justify-content-center align-items-center">
    <a href="?p=<?=$prev?>" class="btn btn-dark <?=$prev < 1 ? 'disabled' : ''?>">&lt;</a>
    <?php foreach ($menu as $num) { ?>
        <a href="?p=<?=$num?>" class="btn btn-primary btn-circle <?=$num == $p ? 'active' : ''?>"><?=$num?></a>
    <?php } ?>
    <a href="?p=<?=$next?>" class="btn btn-dark <?=$next > $max ? 'disabled' : ''?>">&gt;</a>
</div>

</body>
</html>
