Class Treinamento.Data.Aluno Extends (%Persistent, %XML.Adaptor)
{
Property Nome As %String(MAXLEN = 300) [ SqlColumnNumber = 2 ];

Property Matricula As %String [ SqlColumnNumber = 3 ];

Property Idade As %String [ SqlColumnNumber = 4 ];

}