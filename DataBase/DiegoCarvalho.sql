CREATE TABLE adm.TSTProduto(
	ID int IDENTITY(1,1) NOT NULL,
	Descricao varchar(100) NOT NULL,
 CONSTRAINT PK_TSTProduto PRIMARY KEY NONCLUSTERED (ID));
 
CREATE TABLE adm.TSTPedido(
	ID int IDENTITY(1,1) NOT NULL,
	Cliente varchar(60) NOT NULL,
	VrTotalPedido decimal(18, 2) NOT NULL,
	DataPedido datetime NOT NULL,
	DataDigitacao datetime NOT NULL,
	Observacao varchar(200) NULL,
 CONSTRAINT PK_TSTPedido PRIMARY KEY NONCLUSTERED (ID));  
 
CREATE TABLE adm.TSTPedidoItem(
	ID int IDENTITY(1,1) NOT NULL,
	TSTPedidoID int NOT NULL,
	CodProduto int NOT NULL,
	Quantidade int NOT NULL,
	VrUnitario decimal(18, 2) NOT NULL,
	DescontoItem decimal(18, 2) NULL,
	VrTotalItem decimal(18, 2) NOT NULL,
	Observacao varchar(200) NOT NULL,
 CONSTRAINT PK_TSTPedidoItem PRIMARY KEY NONCLUSTERED (ID), 
 CONSTRAINT FK_TSTPedidoItem_TSTPedido FOREIGN KEY (TSTPedidoID) REFERENCES TSTPedido (ID) 
   ON DELETE CASCADE
   ON UPDATE CASCADE,
 CONSTRAINT FK_TSTPedidoItem_TSTProduto FOREIGN KEY (CodProduto) REFERENCES TSTProduto (ID) 
   ON DELETE CASCADE
   ON UPDATE CASCADE);   