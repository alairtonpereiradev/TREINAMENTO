Class Treinamento.Data.Aluno Extends (%Persistent, %XML.Adaptor)
{
Property Nome As %String(MAXLEN = 200) [ SqlColumnNumber = 2 ];
Property Matricula As %Numeric [ SqlColumnNumber = 3 ];
Property Idade As %Numeric [ SqlColumnNumber = 4 ];
}