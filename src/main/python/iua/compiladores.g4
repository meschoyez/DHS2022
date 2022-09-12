grammar compiladores;

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PA : '(' ;
PC : ')' ;

NUMERO : DIGITO+ ;

ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;


WS : [ \t\n\r] -> skip ; 

si : s EOF ;

s : PA s PC s
  |
  ;


