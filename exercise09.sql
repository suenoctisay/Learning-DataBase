CREATEDATABASEminhaloja;USEminhaloja;CREATETABLECLIENTE(codclienteint,nomevarchar(60),datanascimentodate,cpfvarchar(11),PRIMARYKEY(codcliente));CREATETABLEPEDIDO(codpedidoint,codclienteint,datapedidodate,nfvarchar(12),valortotaldecimal(10,2),PRIMARYKEY(codpedido),FOREIGNKEY(codcliente)REFERENCESCLIENTE(codcliente));CREATETABLEPRODUTO(codprodutoint,descricaovarchar(100),quantidadeint,PRIMARYKEY(codproduto));CREATETABLEITEMPEDIDO(codpedidoint,numeroitemint,valorunitariodecimal(10,2),quantidadeint,codprodutoint,PRIMARYKEY(codpedido,numeroitem),FOREIGNKEY(codpedido)REFERENCESPEDIDO(codpedido),FOREIGNKEY(codproduto)REFERENCESPRODUTO(codproduto));CREATETABLELOG(codlogINTauto_increment,datadate,descricaovarchar(255),PRIMARYKEY(codlog));CREATETABLEREQUISICAO_COMPRA(codrequisicaocompraint,codprodutoint,datadate,quantidadeint,PRIMARYKEY(codrequisicaocompra),FOREIGNKEY(codproduto)REFERENCESPRODUTO(codproduto));INSERTINTOCLIENTEVALUES(1,'Sylvio Barbon','1984-12-05','12315541212');
Banco de Dados-IIIProfessora: Juliana de SáINSERTINTOCLIENTEVALUES(2,'Antonio Carlos da Silva','1970-11-01','12313345512');INSERTINTOCLIENTEVALUES(3,'Thiago Ribeiro','1964-11-15','12315544411');INSERTINTOCLIENTEVALUES(4,'Carlos Eduardo','1924-10-25','42515541212');INSERTINTOCLIENTEVALUES(5,'Maria Cristina Goes','1981-11-03','67715541212');INSERTINTOCLIENTEVALUES(6,'Ruan Manoel Fanjo','1983-12-06','32415541212');INSERTINTOCLIENTEVALUES(7,'Patrícia Marques','1944-02-01','77715541212');INSERTINTOPRODUTOVALUES(1,'Mouse',10);INSERTINTOPRODUTOVALUES(2,'Teclado',10);INSERTINTOPRODUTOVALUES(3,'Monitor LCD',10);INSERTINTOPRODUTOVALUES(4,'Caixas Acústicas',10);INSERTINTOPRODUTOVALUES(5,'Scanner de Mesa',10);INSERTINTOPEDIDOVALUES(1,1,'2012-04-01','00001',400.00);INSERTINTOITEMPEDIDOVALUES(1,1,10.90,1,1);INSERTINTOITEMPEDIDOVALUES(1,2,389.10,1,3);INSERTINTOPEDIDOVALUES(2,2,'2012-04-01','00002',10.90);INSERTINTOITEMPEDIDOVALUES(2,1,10.90,1,1);INSERTINTOPEDIDOVALUES(3,2,'2012-04-01','00003',21.80);INSERTINTOITEMPEDIDOVALUES(3,1,10.90,1,1);INSERTINTOPEDIDOVALUES(4,3,'2012-05-01','00004',169.10);INSERTINTOITEMPEDIDOVALUES(4,1,10.90,1,1);INSERTINTOITEMPEDIDOVALUES(4,2,15.90,2,2);INSERTINTOITEMPEDIDOVALUES(4,3,25.50,1,4);INSERTINTOITEMPEDIDOVALUES(4,4,100.90,1,5);INSERTINTOPEDIDOVALUES(5,4,'2012-05-01','00005',100.90);INSERTINTOITEMPEDIDOVALUES(5,1,100.90,1,5);INSERTINTOPEDIDOVALUES(6,6,'2012-05-02','00006',51.35);INSERTINTOITEMPEDIDOVALUES(6,1,25.50,2,4);