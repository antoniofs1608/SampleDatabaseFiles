--CREATE PROC FI_SP_VerificaCliente
--	@Id           BIGINT, 
--	@CPF          VARCHAR(14)
--AS
BEGIN
	DECLARE @Id BIGINT = 16;
	DECLARE @CPF VARCHAR(14) = '076.723.338-79'

    DECLARE @valido CHAR(1);

	SELECT @valido = DBO.CPF_VALIDO(REPLACE(REPLACE(@CPF,'.',''),'-',''))

	IF @valido = 'S'
		BEGIN
		   SELECT 1 
		     FROM CLIENTES 
			WHERE CPF = @CPF 
			 AND (Id != @Id OR 0 = @Id) 
		END 
	ELSE 
		BEGIN
			SELECT 1
		END
END

