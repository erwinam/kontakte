<?php

// ::1 is the IPv6 equivalent of 127.0.0.1
$ip_address = '';

//whether ip is from share internet
if (!empty($_SERVER['HTTP_CLIENT_IP']))
  {
    $ip_address = $_SERVER['HTTP_CLIENT_IP'];
  }
//whether ip is from proxy
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
  {
    $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
  }
//whether ip is from remote address
else
  {
    $ip_address = $_SERVER['REMOTE_ADDR'];
  }

  /*
	    if (getenv('HTTP_CLIENT_IP'))
	        $ip_address = getenv('HTTP_CLIENT_IP');
	    else if(getenv('HTTP_X_FORWARDED_FOR'))
	        $ip_address = getenv('HTTP_X_FORWARDED_FOR');
	    else if(getenv('HTTP_X_FORWARDED'))
	        $ip_address = getenv('HTTP_X_FORWARDED');
	    else if(getenv('HTTP_FORWARDED_FOR'))
	        $ip_address = getenv('HTTP_FORWARDED_FOR');
	    else if(getenv('HTTP_FORWARDED'))
	       $ip_address = getenv('HTTP_FORWARDED');
	    else if(getenv('REMOTE_ADDR'))
	        $ip_address = getenv('REMOTE_ADDR');
	    else
	        $ip_address = 'unbekannte IP';
	*/
