grammar compiladores;

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PA : '(' ;
PC : ')' ;
LLA : '{' ;
LLC : '}' ;
PYC : ';' ;
ASSIG : '=' ;

INT : 'int' ;

NUMERO : DIGITO+ ;

ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;

WS : [ \t\n\r] -> skip ; 

programa : instrucciones EOF ;

instrucciones : instruccion instrucciones
              |
              ;

instruccion : bloque
            | declaracion PYC
            // | asignacion PYC
            // | bloqueif
            // | bloquefor
            // | bloquewhile
            ;

bloque : LLA instrucciones LLC ;

declaracion : tdato ID 
            // | tdato ID ASSIG ... ?
            ;

tdato : INT
      ;

// bloquewhile : PA comparacion/opal PC instruccion ;