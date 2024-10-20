Class Treinamento.Data.Usuario Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String(MAXLEN = 200) [ SqlColumnNumber = 2 ];

Property Cargo As %String [ SqlColumnNumber = 3 ];

Property Sexo As %String [ SqlColumnNumber = 4 ];

Property Email As %String [ SqlColumnNumber = 5 ];

Relationship PerfilId As Treinamento.Data.Perfil [ Cardinality = many, Inverse = NivelLista ];

Relationship UsuarioPerfil As Treinamento.Data.UsuarioPerfil [ Cardinality = one, Inverse = UsuarioLista ];

ClassMethod CriarUsuario(pNome As %String, pCargo As %String, pSexo As %String, pEmail As %String) As %String [ Language = objectscript ]
{
    Try
    {
        Set statusCode = $SYSTEM.Status.OK()        
        
        Set SQL  = "Insert into Treinamento_Data.Usuario (Nome, Cargo, Sexo, Email)values"
        Set SQL = SQL_"('"_pNome_"', '"_pCargo_"','"_pSexo_"', '"_pEmail_"')"
        set resultSet = ##Class(%SQL.Statement).%New()
        Set status = resultSet.%Prepare(SQL)
        Set status = resultSet.%Execute()
        if status
        {
            W "Cadastro de usuario realizado com sucesso!" 
        }
    
    }
    Catch(exception)
    {
        Set tSC = exception.AsStatus()
        Set errorMessage = $System.Status.GetErrorText(tSC)
        Throw exception
    }
    
    Quit
}

Storage Default
{
<Data name="UsuarioDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Cargo</Value>
</Value>
<Value name="4">
<Value>Sexo</Value>
</Value>
<Value name="5">
<Value>Email</Value>
</Value>
<Value name="6">
<Value>UsuarioPerfil</Value>
</Value>
</Data>
<DataLocation>^Treinamento.Data.UsuarioD</DataLocation>
<DefaultData>UsuarioDefaultData</DefaultData>
<IdLocation>^Treinamento.Data.UsuarioD</IdLocation>
<IndexLocation>^Treinamento.Data.UsuarioI</IndexLocation>
<StreamLocation>^Treinamento.Data.UsuarioS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
