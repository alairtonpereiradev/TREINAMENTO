Class Treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

Property Intrutor As Treinamento.Data.Instrutor [ SqlColumnNumber = 2 ];

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of Treinamento.Data.Aluno [ SqlColumnNumber = 5 ];

Property Curso As Treinamento.Data.Curso [ SqlColumnNumber = 6 ];

ClassMethod VerificaStatus(curso As %String) As %String [ Language = objectscript ]
{
    Set statusTurma = ""
    Set sql = "SELECT * FROM Treinamento.DData.Turma WHERE Curso->Nome ='"_curso_"'"
    Set resultSet = ##class(%SQL.Statement).%New()
    Set status = resultSet.%Prepare(sql)
    Set status = resultSet.%Execute()
    If resultSet.%Next() {
       Set statusTurma = resultSet.%Get("Status")
      
    }
    
    Return statusTurma
}

ClassMethod ImprimeTurma(curso As %String) As %String [ Language = objectscript ]
{

    Set tSC = $$$OK
    Try {
    Set sql = "SELECT * FROM Treinamento.DData.Turma WHERE Curso->Nome ='"_curso_"'"
    Set resultSet = ##class(%SQL.Statement).%New()
    Set status = resultSet.%Prepare(sql)
    Set sr = resultSet.%Execute()

     If sr.%Next() {
        Set idTurma = sr.Get("ID")
        Set turma = ##class(Treinamento.Data.Turma).%OpenId(idTurma)
    }
    For x = 1:1:turma.Alunos.Count() {
        Set aluno = turma.Alunos.GetAt(x)
        w " Nome "_aluno.Nome, " Matricula "_aluno.Matricula, " Idade: "_aluno.Idade,!
    }
    
    } Catch (excepetion) {
        Set tSc = excepetion.AsStatus()
        Set tSC = $SYSTEM.Status.GetErrorText(tSC)

    }
    Return
}

Storage Default
{
<Data name="TurmaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Intrutor</Value>
</Value>
<Value name="3">
<Value>DataInicio</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
<Value name="5">
<Value>Alunos</Value>
</Value>
<Value name="6">
<Value>Curso</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.TurmaD</DataLocation>
<DefaultData>TurmaDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.TurmaD</IdLocation>
<IndexLocation>^Treinamento.Data.TurmaI</IndexLocation>
<StreamLocation>^Treinamento.Data.TurmaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
