<?php

$date = new DateTime('tomorrow');

echo '(' . $date->format('Y-m-d') . '|';
$date->sub(new DateInterval('P1D'));
echo $date->format('Y-m-d') . '|';
$date->sub(new DateInterval('P1D'));
echo $date->format('Y-m-d') . ')';
