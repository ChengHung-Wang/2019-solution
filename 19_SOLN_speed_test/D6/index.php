<?php

$image = imagecreatefrompng('image.png');
$size = getimagesize('image.png');
$colors = [];

for ($x = 0; $x < $size[0]; $x++) {
    for ($y = 0; $y < $size[1]; $y++) {
        $index = imagecolorat($image, $x, $y);
        if (!isset($colors[$index])) $colors[$index] = 0;
        $colors[$index]++;
    }
}

arsort($colors);

?>
<table border="1">
    <thead>
    <tr>
        <th>colors</th>
        <th>code</th>
        <th>count</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $i = 0;
    foreach ($colors as $index => $count) {
        $i++;
        if ($i > 3) break;
        $color = imagecolorsforindex($image, $index);
        $rgb = "rgb({$color['red']},{$color['green']},{$color['blue']})";
        ?>
        <tr>
            <td style="background-color: <?=$rgb?>"></td>
            <td><?=$rgb?></td>
            <td><?=$count?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
