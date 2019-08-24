-- trigger cidtbi aciona a sequence cidq (Cidades)
CREATE OR REPLACE TRIGGER CidTBI
	BEFORE INSERT ON Cidades FOR EACH ROW
BEGIN
	SELECT CidSQ.NEXTVAL INTO :NEW.CidCodigo FROM DUAL;
END;
/

-- trigger fpgtbi aciona sequence fpgsq (formaspagto)
CREATE OR REPLACE TRIGGER FpgTBI
	BEFORE INSERT ON FormasPagto FOR EACH ROW
BEGIN
	SELECT FpgSQ.NEXTVAL INTO :NEW.FpgCodigo FROM DUAL;
END;
/

--trigger fentbi aciona a sequence fensq (FormasEnvio)
CREATE OR REPLACE TRIGGER FenTBI
	BEFORE INSERT ON FormasEnvio FOR EACH ROW
BEGIN
	SELECT FenSQ.NEXTVAL INTO :NEW.FenCodigo FROM DUAL;
END;
/

-- TRIGGER UsuTBI aciona SEQUENCE UsuSQ (Usuarios)
CREATE OR REPLACE TRIGGER UsuTBI
	BEFORE INSERT ON Usuarios FOR EACH ROW
BEGIN
	SELECT UsuSQ.NEXTVAL INTO :NEW.UsuCodigo FROM DUAL;
END;
/

--trigger pedtbi aciona sequence pedsq (Pedidos)
CREATE OR REPLACE TRIGGER PedTBI
	BEFORE INSERT ON Pedidos FOR EACH ROW
BEGIN
	SELECT PedSQ.NEXTVAL INTO :NEW.PedCodigo FROM DUAL;
END;
/

--trigger protbi aciona sequence prosq (Produtos)
CREATE OR REPLACE TRIGGER ProTBI
	BEFORE INSERT ON Produtos FOR EACH ROW
BEGIN
	SELECT ProSQ.NEXTVAL INTO :NEW.ProCodigo FROM DUAL;
END;
/

--trigger cattbi aciona sequence catsq (Categorias)
CREATE OR REPLACE TRIGGER CatTBI
	BEFORE INSERT ON Categorias FOR EACH ROW
BEGIN
	SELECT CatSQ.NEXTVAL INTO :NEW.CatCodigo FROM DUAL;
END;
/

-- TRIGGER IteTBIUD: atualiza estoque e calcula o valor total do item
CREATE OR REPLACE TRIGGER IteTBUID
	BEFORE INSERT OR UPDATE OR DELETE ON ItensPedidos FOR EACH ROW
BEGIN
	IF (INSERTING) THEN
		Ret_Estoque(:NEW.ProCodigo, :New.IteQuantidade);
		SELECT ProValor INTO :NEW.IteValor FROM Produtos WHERE ProCodigo = :NEW.ProCodigo;
		:NEW.IteValorTotal := :NEW.IteQuantidade * :NEW.IteValor;
		UPDATE Pedidos SET PedValTotal = PedValTotal + :NEW.IteValorTotal WHERE PedCodigo = :NEW.PedCodigo;
	END IF;
	IF (UPDATING) THEN
		Add_Estoque(:OLD.ProCodigo, :OLD.IteQuantidade);
		Ret_Estoque(:New.ProCodigo, :NEW.IteQuantidade);
		SELECT ProValor INTO :NEW.IteValor FROM Produtos WHERE ProCodigo = :NEW.ProCodigo;
		:NEW.IteValorTotal := :NEW.IteQuantidade * :NEW.IteValor;
		UPDATE Pedidos SET PedValTotal = PedValTotal - :OLD.IteValorTotal WHERE PedCodigo = :OLD.PedCodigo;
		UPDATE Pedidos SET PedValTotal = PedValTotal + :NEW.IteValorTotal WHERE PedCodigo = :NEW.PedCodigo;
	END IF;
	IF (DELETING) THEN
		Add_Estoque(:OLD.ProCodigo, :OLD.IteQuantidade);
		UPDATE Pedidos SET PedValTotal = PedValTotal - :OLD.IteValorTotal WHERE PedCodigo = :OLD.PedCodigo;
	END IF;
END;
/