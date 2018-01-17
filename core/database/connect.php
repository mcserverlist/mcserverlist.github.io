<?php
/* Connection parameters */
$DatabaseServer = "127.0.0.1";
$DatabaseUser   = "root";
$DatabasePass   = "admin";
$DatabaseName   = "minecraft-servers-list-lite";

/* Connecting to the database */
$database = new mysqli($DatabaseServer, $DatabaseUser, $DatabasePass, $DatabaseName);

?>
