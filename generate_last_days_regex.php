<?php

// uncomment to import all time payouts history for the first time
// die('([0-9]{4}-[0-9]{2}[0-9]{2})');

$date = new DateTime('tomorrow');

echo '(' . $date->format('Y-m-d') . '|';
$date->sub(new DateInterval('P1D'));
echo $date->format('Y-m-d') . '|';
$date->sub(new DateInterval('P1D'));
echo $date->format('Y-m-d') . ')';
