from antlr4 import *
from compiladoresVisitor import *

class Caminante (compiladoresVisitor) :
    def visitPrograma(self, ctx:compiladoresParser.ProgramaContext):
        return super.visitPrograma(ctx:compiladoresParser.ProgramaContext)