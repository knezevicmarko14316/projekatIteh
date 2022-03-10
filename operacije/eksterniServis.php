<?php
function remote_get_contents($url)
{
        if (function_exists('curl_get_contents') AND function_exists('curl_init'))
        {
                return curl_get_contents($url);
        }
        else
        {
                return file_get_contents($url);
        }
}

function curl_get_contents($url)
{
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_HEADER, 0);
  
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        $output = curl_exec($ch);

        curl_close($ch);
 
        return $output;
}


if (isset(isset($_POST["check"]))
{
	$email		= trim($_POST["check"]);
	$api_url	= 'https://emailverification.whoisxmlapi.com/api/v1?apiKey=at_hFrc3ZnG0Tu5GQO0d1Zyue9PxFbjL&emailAddress=';
	
	
	$url		= $api_url . $email;
	$object		= json_decode(remote_get_contents($url));
echo $object->formatCheck?'GOOD':'BAD';

}

?>
