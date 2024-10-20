Class Treinamento.Data.Curso Extends (%Persistent, %XML.Adaptor)
{
Property Nome As %String(MAXLEN = 300) [ SqlColumnNumber = 2];
Property Preco As %Numeric [ SqlColumnNumber = 3 ];
Property Duracao As %Integer [ SqlColumnNumber = 4 ];
}