Class Treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

Property Intrutor As Treinamento.Data.Instrutor [ SqlColumnNumber = 2 ];

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of Treinamento.Data.Aluno [ SqlColumnNumber = 5 ];

Property Curso As Treinamento.Data.Curso [ SqlColumnNumber = 6 ];

ClassMethod VerificaStatus(Curso As %String) As %String [ Language = objectscript ]
{
    Set statusTurma = ""
    Set sql= "SELECT * FROM Treinamento.Data.Turma WHERE Curso->Nome ='"_Curso_"'"
    Set resultSet = ##class(%ResultSet).%New()
    set status = resultSet.Prepare(sql)
    set status = resultSet.Execute()

    If resultSet.Next() {
        Set statusTurma = resultSet.Get("Status")

    }
    Return statusTurma
}

ClassMethod ImprimeTurma(Curso As %String) As %String [ Language = objectscript ] {
    Set sql = "SELECT * FROM Treinamento.Data.Turma WHERE Curso->Nome = '"_Curso_"'"
    Set resultSet = ##class(%ResultSet).%New()
    set status = resultSet.Prepare(sql)
    set status = resultSet.Execute()
    
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
