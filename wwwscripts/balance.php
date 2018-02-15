<?php

if (isset($_GET['a']) && strlen($_GET['a']) === 32 && preg_match('/^[a-z0-9\/+]{32}$/siu', $_GET['a'], $match))
        passthru('/home/pool/xdag_get_balance.sh ' . escapeshellarg($_GET['a']));
else
        echo 'Balance: 0.000000000 XDAG';
