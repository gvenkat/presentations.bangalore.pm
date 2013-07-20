$a = "Two pints of Beer";
$b = "Two bags of Marbles";


$re = qr/
  Two
  \s+
  (\w+)
  \s+
  of
  \s+
  (??{
    ( $1 eq 'pints' ) ? 'Beer' : 'Marbles';
  })
/x;

print $a =~ /$re/;
print $b =~ /$re/;

