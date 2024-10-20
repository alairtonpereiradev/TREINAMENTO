Class Treinamento.Data.Nivel Extends (%Persistent, %XML.Adaptor)
{

/// NomeNivel
Property NomeNivel As %String(MAXLEN = 200) [ SqlColumnNumber = 2 ];

/// Codigo
Property Codigo As %Integer [ SqlColumnNumber = 3 ];

/// Relacionamento de carninalidade
Relationship IdPerfil As Treinamento.Data.Perfil [ Cardinality = many, Inverse = NivelLista ];

Storage Default
{
<Data name="NivelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NomeNivel</Value>
</Value>
<Value name="3">
<Value>Codigo</Value>
</Value>
<Value name="4">
<Value>IdPerfil</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.NivelD</DataLocation>
<DefaultData>NivelDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.NivelD</IdLocation>
<IndexLocation>^Treinamento.Data.NivelI</IndexLocation>
<StreamLocation>^Treinamento.Data.NivelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
