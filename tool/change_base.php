<?php
function ten2base62( $intbase10 )
{
    $base =
    array(
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
        'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
        'u', 'v', 'w', 'x', 'y', 'z',
        'A', 'B', 'C', 'D',
        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
        'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
        'Y', 'Z'
    );
    if(!is_numeric($intbase10)) {
        return NULL;
    }
    $stringbase62 = '';
    while(0 != $intbase10) {
//        echo "\$remain = $remain \t \$midnum = $midnum \n \$stringbase62 = $stringbase62 \n \$intbase10 = $intbase10 \n";
        $remain = $intbase10 % 62;
        $stringbase62 = $base[$remain] . $stringbase62;
        $midnum = $intbase10/62;
//       $intbase10 = floor($midnum);
        $intbase10 = ($intbase10 - $remain) / 62;
    }

    return $stringbase62;
}

function get_mid($longint){
    $longlen = strlen($longint);
    echo $longint."\n";
    for($i = $longlen - 7; $i > -7; $i -= 7) {
        $offset1 = $i < 0 ? 0 : $i;
        $sublen = $i > 0 ? 7 : $i + 7;
        $subint = substr($longint, $offset1, $sublen);

        $substr = ten2base62($subint).$substr;
    }

    return $substr;
}

$num = '218340105584896';
$num = '52036560683837093888';
$num = '3226266762397899821056';
$num = 200028539268669788905472;
$num = 620000000000000006;
$num = 839299365868340227;
$num = 221110410216147026;
$num = 3482583008837912;    // yyEmoB58Y
$num = 3482583008708876;    // yyEmoAxzK
$num = 3482583004642731;    // yyEmojtML
$num = 3486096061137924;    // yA7KC4M1C
$num = 5612814510546515491; //  eBi65u6rkYz
//$num = 56800235589;
//$base62 =  ten2base62($num);
$base62 =  get_mid($num);
echo $base62."\n";
?>
