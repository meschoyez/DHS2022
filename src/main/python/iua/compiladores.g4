grammar compiladores;

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PA : '(' ;
PC : ')' ;
LLA : '{' ;
LLC : '}' ;
PYC : ';' ;
ASSIG : '=' ;
SUMA : '+' ;
MULT : '*' ;

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

itop : oparit itop
     |
     ;
// c = a + b + d + f / r * q
oparit : exp ;

exp : term t ;

term : factor f ;

t : SUMA term t
  |
  ;

factor : ID
       | NUMERO
       | PA exp PC
       ;

f : MULT factor f
  |
  ;

// bloquewhile : PA comparacion/opal PC instruccion ;