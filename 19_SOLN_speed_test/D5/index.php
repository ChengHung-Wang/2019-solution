<?php

$image = imagecreatefromjpeg('image.jpg');
$image_size = getimagesize('image.jpg');
$mark = imagecreatefrompng('logo.png');
$mark_size = getimagesize('logo.png');

$x = $image_size[0] - $mark_size[0] - 20;
$y = $image_size[1] - $mark_size[1] - 20;

imagecopy($image, $mark, $x, $y, 0, 0, $mark_size[0], $mark_size[1]);
header('Content-Type: image/jpg');
imagejpeg($image);
