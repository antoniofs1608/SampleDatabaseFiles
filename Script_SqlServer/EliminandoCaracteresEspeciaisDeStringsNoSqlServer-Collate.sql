/*
  Antonio Francisco da Silva
  Fonte: https://www.devmedia.com.br/eliminando-caracteres-especiais-de-strings-no-sql-server-collate/25286
*/
CREATE FUNCTION [dbo].[FN_FORMATAR_TEXTO]
(
	@TEXTO VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN

	DECLARE @TEXTO_FORMATADO VARCHAR(MAX)
	
	-- O trecho abaixo possibilita que caracteres como "�" ou "�"
	-- sejam convertidos para "o" ou "a", respectivamente
	SET @TEXTO_FORMATADO = UPPER(@TEXTO)
	    COLLATE sql_latin1_general_cp1250_ci_as

	-- O trecho abaixo remove acentos e outros caracteres especiais,
	-- substituindo os mesmos por letras normais
	SET @TEXTO_FORMATADO = @TEXTO_FORMATADO
	    COLLATE sql_latin1_general_cp1251_ci_as

	RETURN @TEXTO_FORMATADO

END