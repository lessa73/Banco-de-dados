insert into cliente(nome, email, senha, cpf) values 
	('Fernanda', 'nanda@email.com.br', 'nanda', 000000001), 
    ('Telma', 'telma@email.com.br', 'telma', 000000002),
    ('Lena', 'lena@email.com.br', 'lena', 000000003),
    ('Camila', 'camila@email.com.br', 'mila', 000000004),
    ('Clara', 'clara@email.com.br', 'clara', 000000005),
    ('Artur', 'artur@email.com.br', 'nego', 000000006),
    ('Arlem', 'arlem@email.com.br', 'boi', 000000007),
    ('Djalma', 'djalma@email.com.br', 'djalma', 000000008),
    ('Charlinhos', 'plico@email.com.br', 'plico', 000000009),
    ('Charles', 'charlao@email.com.br', 'charles', 000000010);
    
    use dbdesafio;
    select * from cliente;
    update cliente set cpf=100000001 where id=1;
    update cliente set cpf=100000002 where id=2;
    update cliente set cpf=100000003 where id=3;
    update cliente set cpf=100000004 where id=4;
    update cliente set cpf=100000005 where id=5;
    update cliente set cpf=100000006 where id=6;
    update cliente set cpf=100000007 where id=7;
    update cliente set cpf=100000008 where id=8;
    update cliente set cpf=100000009 where id=9;
    update cliente set cpf=100000010 where id=10;
    
    select * from cliente;
    select * from endereco;
    
    insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua ouro', 10, 'Bom Sossego', 'Ribeirao das Neves', 'MG', 10000001, 1);
    insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua vale', 100, 'Sevilha', 'Ribeirao das Neves', 'MG', 10000002, 1);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('apto', 'rua jatobas', 700, 'Eldorado', 'Contagem', 'MG', 10000003, 2);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua dois', 7, 'Sevilha', 'Ribeirao das Neves', 'MG', 10000004, 3);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('apto', 'rua diamente', 1001, 'Santinho', 'Ribeirao das Neves', 'MG', 10000005, 4);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua infinita', 50, 'Riacho', 'Contagem', 'MG', 10000006, 5);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua ventania', 110, 'Inconfidentes', 'Contagem', 'MG', 10000007, 5);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua sol', 210, 'Bom Sossego', 'Belo Horizonte', 'MG', 10000008, 6);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua da lua', 1010, 'Cidade Nova', 'Belo Horizonte', 'MG', 10000009, 7);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua estrelinha', 7675, 'vida', 'Contagem', 'MG', 10000010, 8);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua ferro', 20, 'Benfica', 'Belo Horizonte', 'MG', 10000011, 9);
	insert into endereco(tipo, logradouro, numero, bairro, cidade, estado, cep, cliente_id) values
		('casa', 'rua ouro negro', 4510, 'Usina', 'Ribeirao das Neves', 'MG', 10000012, 10);
        
	update endereco set complemento=05 where cliente_id=2;
    update endereco set complemento=02 where cliente_id=4;
    
    insert into departamento(nome, descricao) values
		('Tecnologia', 'Produtos para computadores'),
        ('Games', ' consoles e jogos'),
        ('Acessorios', 'Cabos e conectores'),
        ('Eletronicos', 'Cameras e celulares'),
        ('Alimentaçao', 'Delivery'),
        ('Infantil', 'Brinquedos');
	
    select * from departamento;
    
    insert into produto(nome, descricao, preco, estoque, link_foto, departamento_codigo) values
		('Computador', 'Computador Dell', 4000, 10, './img/computador.png', 1),
        ('Mouse', 'Mouse para computador', 300, 50, './img/mouse.png', 1),
        ('Teclado', 'Teclado para computador', 450, 40, '/.img/teclado.png', 1),
        ('Console', 'Playstation', 5000, 10, './img/playstation.png', 2),
        ('jogo', 'PES', 290, 100, './img/pes.png', 2),
        ('Cabo', 'Cabo HDMI', 30, 150, './img/cabohdmi.png', 3),
        ('Iphone', ' Iphone50', 10000, 10, './img/iphone.png', 4),
        ('Motorola', 'MotoG50', 5000, 10, './img/motog.png', 4),
        ('Coca cola', 'Refrigerante Coca Cola', 100, 5, './img/coca.png', 5),
        ('Hulk', 'Boneco Hulk', 700, 5, './img/hulk.png', 6),
        ('Bola', 'Bola Dente de Leite', 20, 10, './img/bola.png', 6);
        
	select * from produto;
    
    insert into pedido(numero, status, data_pedido, valor_bruto, desconto, valor_final, cliente_id) values 
		(1, 'F', 20/12/2021, 4750, 100, 4650, 1),
        (2, 'F', 20/11/2021, 10000, 1000, 9000, 2),
        (3, 'F', 20/11/2021, 5290, 90, 5200, 3);
        
	insert into pedido(numero, status, data_pedido, valor_bruto, desconto, valor_final, cliente_id) values   
        (4, 'F', 10/11/2021, 100, 0, 100, 4);
        
	insert into item_pedido(quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero, departamento_codigo) values
		(1, 4000, 4000, 1, 1, 1);
        
	select * from item_pedido;
    
    insert into item_pedido(quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero, departamento_codigo) values
		(1, 300, 300, 2, 1, 1),
        (1, 450, 450, 3, 1, 1);
	
    insert into item_pedido(quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero, departamento_codigo) values
		(1, 10000, 10000, 7, 2, 4),
        (1, 5000, 5000, 4, 3, 2),
        (1, 290, 290, 5, 3, 2);
        
	select * from cliente;
        
	delete from cliente where  id=12;
    delete from cliente where  id=13;
    delete from cliente where  id=14;
    delete from cliente where  id=15;
    delete from cliente where  id=16;
    delete from cliente where  id=17;
    delete from cliente where  id=18;
    delete from cliente where  id=19;
    delete from cliente where  id=20;
    
    select count(id) from cliente;
    
    select * from produto order by preco desc limit 10;
    
    
    