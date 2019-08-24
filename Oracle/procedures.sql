CREATE OR REPLACE PROCEDURE Aumentar_ProValor
	(CodPro IN INTEGER, PorcAumento IN NUMBER)
IS
	Aumento NUMBER(5,2);
BEGIN
	Aumento := PorcAumento / 100;
	IF(CodPro = 0) THEN
		UPDATE Produtos
		SET ProValor = ProValor + (ProValor * Aumento);
	ELSE
		UPDATE Produtos
		SET ProValor = ProValor + (ProValor * Aumento)
		WHERE ProCodigo = CodPro;
	END IF;
END;
/

CREATE OR REPLACE PROCEDURE Diminuir_Valor
	(CodPro IN INTEGER, PorcBaixa IN NUMBER)
IS
	Baixa NUMBER(5,2);
BEGIN
	Baixa := PorcBaixa / 100;
	IF(CodPro = 0) THEN
		UPDATE Produtos
		SET ProValor = ProValor - (ProValor * Baixa);
	ELSE
		UPDATE Produtos
		SET ProValor = ProValor - (ProValor * Baixa)
		WHERE ProCodigo = CodPro;
	END IF;
END;
/	

CREATE OR REPLACE PROCEDURE Ret_Estoque
	(CodPro IN INTEGER, Qtde IN NUMBER)
IS
BEGIN
	UPDATE Produtos
	SET ProQtde = ProQtde - Qtde
	WHERE ProCodigo = CodPro;
END;
/	

CREATE OR REPLACE PROCEDURE Add_Estoque
	(CodPro IN INTEGER, Qtde IN NUMBER)
IS
BEGIN
	UPDATE Produtos
	SET ProQtde = ProQtde + Qtde
	WHERE ProCodigo = CodPro;
END;
/	

CREATE OR REPLACE PROCEDURE Finalizar_Ped
	(CodPed IN INTEGER)
IS
	Desconto NUMBER(15,2);
	Acrescimo NUMBER(15,2);
	VlrEnvio NUMBER(15,2);
	VlrTotPedido NUMBER(15,2);
BEGIN
	--Obtendo a porcentagem de desconto
	SELECT fp.FpgDesconto INTO Desconto
	FROM FormasPagto fp, Pedidos p
	WHERE p.PedCodigo = CodPed AND p.FpgCodigo = fp.FPGCodigo;
	--Obtendo a porcentagem de acrescimo
	SELECT fp.FpgAcrescimo INTO Acrescimo
	FROM FormasPagto fp, Pedidos p
	WHERE p.PedCodigo = CodPed AND p.FpgCodigo = fp.FPGCodigo;
	--Obtendo o valor da forma de envio
	SELECT fe.FenValor INTO VlrEnvio
	FROM FormasEnvio fe, Pedidos p
	WHERE p.PedCodigo = CodPed AND p.FenCodigo = fe.FenCodigo;	
	--obtendo o valor total do pedidos
	SELECT PedValTotal INTO VlrTotPedido
	FROM Pedidos
	WHERE PedCodigo = CodPed;
	--calculando o desconto
	Desconto := VlrTotPedido * (Desconto / 100);
	--calculando o acrescimo
	Acrescimo := (VlrTotPedido * (Acrescimo / 100)) + VlrEnvio;
	--calculando o valor total do pedido
	VlrTotPedido := VlrTotPedido - Desconto + Acrescimo;
	--atualizando os dados do pedido
	UPDATE Pedidos SET
		PedValDesconto = Desconto,
		PedValAcrescimo = Acrescimo,
		PedValTotal = VlrTotPedido
	WHERE PedCodigo = CodPed;
END;
/