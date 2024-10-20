Class Treinamento.Data.Aluno Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String(MAXLEN = 300) [ SqlColumnNumber = 2 ];

Property Matricula As %String [ SqlColumnNumber = 3 ];

Property Idade As %String [ SqlColumnNumber = 4 ];

Storage Default
{
<Data name="AlunoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Matricula</Value>
</Value>
<Value name="4">
<Value>Idade</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.AlunoD</DataLocation>
<DefaultData>AlunoDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.AlunoD</IdLocation>
<IndexLocation>^Treinamento.Data.AlunoI</IndexLocation>
<StreamLocation>^Treinamento.Data.AlunoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
