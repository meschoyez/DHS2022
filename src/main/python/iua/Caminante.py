from multiprocessing import context
from antlr4 import *
from compiladoresVisitor import *
from compiladoresParser import *

class Caminante(compiladoresVisitor) :
    contexto = 0
        
    def visitPrograma(self, ctx:compiladoresParser.ProgramaContext):
        print("Comienza recorrido del programa")
        r = super().visitPrograma(ctx)
        print("Finaliza del recorrido")
        return r
    
    def visitBloque(self, ctx: compiladoresParser.BloqueContext):
        self.contexto += 1
        print("\tEntramos al contexto " + str(self.contexto))
        print("\t\tContenido |" + ctx.getText() + "|")
        print("\t\tBloque tiene " + str(ctx.getChildCount()) + " hijos")
        print("\t\t\tHijo 0 -> " + ctx.getChild(0).getText())
        print("\t\t\tHijo 2 -> " + ctx.getChild(2).getText())
        r = super().visitInstrucciones(ctx.getChild(1))    
        print("\tSalimos del contexto " + str(self.contexto))
        self.contexto -= 1
        return r
