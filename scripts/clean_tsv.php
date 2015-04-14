<?
/*
 * Simple script used to clean the contract data tsv files
 */
if (defined('STDIN')) {
  $filename = $argv[1];
}

$read_handle = fopen($filename, "r");
$write_handle = fopen($filename.'_clean', "w");

if ($read_handle) {
    while (($line = fgets($read_handle)) !== false) {

        $line = str_replace('\t\"',' ,',$line);
        echo($line);
        $arr = str_getcsv($line);

    }
    fclose($read_handle);
    fclose($write_handle);
}
?>
