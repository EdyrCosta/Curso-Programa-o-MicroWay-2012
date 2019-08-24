CREATE OR REPLACE FUNCTION Cid_Do_Usu
	(CodUsu IN NUMBER)
RETURN VARCHAR2
IS
	CodCid NUMBER;
	Nome VARCHAR2(50);
	Uf CHAR(2);
BEGIN
	SELECT CidCodigo
	INTO CodCid
	FROM Usuarios
	WHERE UsuCodigo = CodUsu;
	SELECT CidNome, CidUF
	INTO Nome, Uf
	FROM Cidades
	WHERE CidCodigo = CodCid;
RETURN Nome || '-' || Uf;
END;
/	

CREATE OR REPLACE FUNCTION Qtde_Pro
	(CodPro IN NUMBER)
RETURN NUMBER
IS
	Quantidade NUMBER;
BEGIN
	IF (CodPro = 0) THEN
		SELECT SUM(ProQtde)
		INTO Quantidade
		FROM Produtos;
	ELSE
		SELECT ProQtde
		INTO Quantidade
		FROM Produtos
		WHERE ProCodigo = CodPro;
	END IF;
RETURN Quantidade;
END;
/	

CREATE OR REPLACE FUNCTION Nome_Cat
	(CodCat IN NUMBER)
RETURN VARCHAR2
IS
	Categ VARCHAR(40);
BEGIN
	SELECT CatNome
	INTO Categ
	FROM Categorias
	WHERE CatCodigo = CodCat;
RETURN categ;
END;
/