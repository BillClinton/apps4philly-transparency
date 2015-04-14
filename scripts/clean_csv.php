<?
/**
 * Simple script used to clean the contract data csv files
 */
if (defined('STDIN')) {
  $filename = $argv[1];
}

$read_handle = fopen($filename, "r");
$write_handle = fopen($filename.'_clean', "w");

if ($read_handle) {
    while (($line = fgets($read_handle)) !== false) {
        $arr = str_getcsv($line);
        fputcsv($write_handle,$arr);
    }
    fclose($read_handle);
    fclose($write_handle);
}
