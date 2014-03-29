<?php


if (mail("vj.thakre@gmail.com", "subject", "body")) {
   echo("<p>Message successfully sent!</p>");
} else {
   echo("<p>Message delivery failed...</p>");
}

?>
