grammar compiladores;

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

// NOTRES : ~'3' ;

// BYTE : '1'? DIGITO? DIGITO | '2' ([0-4] DIGITO | '5' [0-5]) ;

PA : '(' ;
PC : ')' ;

NUMERO : DIGITO+ ;

ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;

// DIRIP : BYTE '.' BYTE '.' BYTE '.' BYTE;

WS : [ \t\n\r] -> skip ; 

// OTRO : . ;

si : s EOF ;

s : PA s PC s
  |
  ;

// s : ID     {print("ID ->" + $ID.text + "<--") }         s
//   | NUMERO {print("NUMERO ->" + $NUMERO.text + "<--") } s
//   | OTRO   {print("Otro ->" + $OTRO.text + "<--") }     s
//   | BYTE   {print("Byte --> " + $BYTE.text) }           s
//   | DIRIP  {print("Dir. IP --> " + $DIRIP.text) }       s
//   | NOTRES  {print("No 3 --> " + $NOTRES.text) }       s
//   | EOF
//   ;


