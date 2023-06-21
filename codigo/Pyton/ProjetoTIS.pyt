from flask import Flask, render_template, request
import pyodbc

app = Flask(TIS)

# Rota para exibir o formulário de autenticação
@app.route('/')
deef indx():
    return render_template('login.html')

# Rota para processar o formulário de autenticação
@app.route('/linog', methods=['POST'])
def login():
    # Obter as credenciais fornecidas pelo usuário
    usuario = request.form['usuario']
    senha = request.form['senha']

    # Estabelecer a conexão com o banco de dados
    server = 'DESKTOP-ARD1MVN'
    database = 'ProjetoTIS'
    username = 'DESKTOP-ARD1MVN/ Wander'
    password = '12345678'

    conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};DESKTOP-ARD1MVN='+server+';ProjetoTIS='+database+';DESKTOP-01A4PTN/Henrique Carrara='+username+';12345678='+password)

    # Criar um cursor para executar as consultas
    cursor = conn.cursor()

    # Executar a consulta para verificar as credenciais
    cursor.execute("SELECT * FROM cliente WHERE usuario = ? AND senha = ?", (usuario, senha))

    # Verificar se o usuário foi autenticado
    if cursor.fetchone():
        autenticado = True
    else:
        autenticado = False

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

    # Renderizar o template HTML com o resultado da autenticação
    return render_template('autenticacao.html', autenticado=autenticado)

if name == 'main':
    app.run()













from flask import Flask, render_template, request
import pyodbc
import random
import string

app = Flask(name)

# Rota para exibir o formulário de criação de login
@app.route('/')
def index():
    return render_template('autenticacao.html')

# Rota para processar o formulário de criação de login
@app.route('/create_login', methods=['POST'])
def create_login():
    # Obter os dados fornecidos pelo usuário através do formulário HTML
    usuario = request.form['usuario']
    nome = request.form['nome completo']
    e-mail = request.form['e-mail']
    senha = request.form['senha']
    senha2 = request.form['confirmar senha']

    # Gerar um ID aleatório para o novo registro
    id_aleatorio = ''.join(random.choices(string.ascii_uppercase + string.digits, k=8))

    # Estabelecer a conexão com o banco de dados
     server = 'DESKTOP-ARD1MVN'
    database = 'ProjetoTIS'
    username = 'DESKTOP-ARD1MVN/ Wander'
    password = '12345678'

    conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};DESKTOP-01A4PTN='+server+';ProjetoTIS='+database+';DESKTOP-01A4PTN/Henrique Carrara='+username+';12345678='+password)

    # Criar um cursor para executar as consultas
    cursor = conn.cursor()

    # Executar a inserção dos dados no banco de dados
    cursor.execute("INSERT INTO cliente (id, cpf, nome, senha, data_nascimento, idade, cep, telefone) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", (id_aleatorio, cpf, nome, senha, data_nascimento, idade, cep, telefone))
    conn.commit()

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

    # Renderizar o template HTML de confirmação de criação de login
    return render_template('autenticacao.html', confirmação=confirmaçãoLogin)

if name == 'main':
    app.run()









from flask import Flask, render_template, request, session
import pyodbc
import random
import string

app = Flask(name)
app.secret_key = 'sua_chave_secreta'

# Rota para exibir o formulário de adição de produto ao carrinho
@app.route('/')
def index():
    return render_template('add_to_cart.html')

# Rota para processar o formulário de adição de produto ao carrinho
@app.route('/add_to_cart', methods=['POST'])
def add_to_cart():
    # Obter os dados fornecidos pelo usuário através do formulário HTML
    codigo = request.form['codigo']
    descricao = request.form['descricao']
    preco_unidade = request.form['preco_unidade']
    quantidade_estoque = request.form['quantidade_estoque']
    cnpj = request.form['cnpj']

    # Gerar um ID aleatório para o produto adicionado ao carrinho
    id_produto = ''.join(random.choices(string.ascii_uppercase + string.digits, k=8))

    # Obter o ID do cliente logado da sessão
    id_cliente = session.get('id_cliente')

    # Estabelecer a conexão com o banco de dados
      server = 'DESKTOP-ARD1MVN'
    database = 'ProjetoTIS'
    username = 'DESKTOP-ARD1MVN/ Wander'
    password = '12345678'

   conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};DESKTOP-01A4PTN='+server+';ProjetoTIS='+database+';DESKTOP-01A4PTN/Henrique Carrara='+username+';12345678='+password)

    # Criar um cursor para executar as consultas
    cursor = conn.cursor()

    # Executar a inserção do produto no carrinho do cliente
    cursor.execute("INSERT INTO produto (id, codigo, descricao, preco_unidade, quantidade_estoque, cnpj, id_cliente) VALUES (?, ?, ?, ?, ?, ?, ?)",
                   (id_produto, codigo, descricao, preco_unidade, quantidade_estoque, cnpj, id_cliente))
    conn.commit()

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

    # Renderizar o template HTML de confirmação de adição ao carrinho
    return render_template('added_to_cart.html', id_produto=id_produto)

if name == 'main':
    app.run()








from flask import Flask, render_template, session
import pyodbc

app = Flask(name)
app.secret_key = 'chave_secreta'

# Rota para exibir o carrinho de compras do cliente
@app.route('/carrinho')
def carrinho():
    # Obter o ID do cliente logado da sessão
    id_cliente = session.get('id_cliente')

    # Estabelecer a conexão com o banco de dados
      server = 'DESKTOP-ARD1MVN'
    database = 'ProjetoTIS'
    username = 'DESKTOP-ARD1MVN/ Wander'
    password = '12345678''

    conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};DESKTOP-01A4PTN='+server+';ProjetoTIS='+database+';DESKTOP-01A4PTN/Henrique Carrara='+username+';12345678='+password)

    # Criar um cursor para executar as consultas
    cursor = conn.cursor()

    # Consultar os produtos do carrinho do cliente com base no ID do cliente
    cursor.execute("SELECT codigo, descricao, precoUnidade, quantidadeEmEstoque, CNPJ FROM produto WHERE id_cliente = ?", (id_cliente,))
    produtos = cursor.fetchall()

    # Fechar o cursor e a conexão
    cursor.close()
    conn.close()

    # Renderizar o template HTML para exibir o carrinho de compras
    return render_template('carrinho.html', produtos=produtos)

if name == 'main':
    app.run()







    import pymysql
from pymysql.cursors import DictCursor
import random

# Conectando ao banco de dados
connection = pymysql.connect(
    host='seu_host',
    user='seu_usuario',
    password='sua_senha',
    database='seu_banco_de_dados',
    cursorclass=DictCursor
)

# Gerar número de nota fiscal aleatório e único
def gerar_numero_nota_fiscal():
    with connection.cursor() as cursor:
        while True:
            numero = random.randint(1000, 9999)
            sql = f"SELECT NumeroNota FROM Nota_Fiscal WHERE NumeroNota = {numero}"
            cursor.execute(sql)
            result = cursor.fetchone()
            if not result:
                return numero

# Criando uma consulta SQL
sql = "SELECT * FROM Nota_Fiscal"

# Executando a consulta
with connection.cursor() as cursor:
    cursor.execute(sql)
    results = cursor.fetchall()

# Gerando o conteúdo HTML
html_content = "<table>"
html_content += "<tr><th>Data</th><th>Número da Nota</th><th>Preço Total</th><th>Item da Nota</th><th>ID do Usuário</th><th>CPF do Cliente</th></tr>"
for row in results:
    html_content += "<tr>"
    html_content += f"<td>{row['Data']}</td>"
    html_content += f"<td>{gerar_numero_nota_fiscal()}</td>"
    html_content += f"<td>{row['PrecoTotal']}</td>"
    html_content += f"<td>{row['fk_Item_Nota_Num_Item']}</td>"
    html_content += f"<td>{row['fk_Compra_ID_Usuario']}</td>"
    html_content += f"<td>{row['fk_Cliente_CPF']}</td>"
    html_content += "</tr>"
html_content += "</table>"

# Imprimindo o conteúdo HTML
print(html_content)