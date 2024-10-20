Class Treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{
Property Intrutor As Treinamento.Data.Instrutor [ SqlColumnNumber = 2 ];

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of Treinamento.Data.Aluno [ SqlColumnNumber = 5 ];
    
Property Curso As Treinamento.Data.Curso [ SqlColumnNumber = 6 ];

}