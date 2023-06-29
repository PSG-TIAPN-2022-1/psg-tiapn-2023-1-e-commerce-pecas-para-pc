import http.server
import socketserver
import smtplib
import cgi
from urllib.parse import unquote
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

class MyRequestHandler(http.server.BaseHTTPRequestHandler):
    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length)
        strPost = post_data.decode('utf-8')
        email = unquote(strPost).split('=')[1]
        # Processar os dados recebidos na solicitação POST
        # Aqui você pode implementar a lógica para tratar o envio do e-mail

        # Configurações do servidor SMTP e informações do remetente e destinatário
        smtp_server = 'smtp.gmail.com'
        smtp_port = 587
        smtp_username = 'ecommercepccom@gmail.com'
        smtp_password = 'ylwkpphhxlakscxe'
        sender_email = 'ecommercepccom@gmail.com'
        receiver_email = email
        subject = 'Cadastro Realizado com Sucesso'
        message = 'Cadastro Realizado com Sucesso'

        # Criação do objeto MIMEMultipart e definição dos cabeçalhos
        msg = MIMEMultipart()
        msg['From'] = sender_email
        msg['To'] = receiver_email
        msg['Subject'] = subject

        # Adiciona o corpo do e-mail à mensagem
        msg.attach(MIMEText(message, 'plain'))

        # Criação do objeto de conexão SMTP e envio do e-mail
        try:
            server = smtplib.SMTP(smtp_server, smtp_port)
            server.starttls()
            server.login(smtp_username, smtp_password)
            server.send_message(msg)
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            self.wfile.write(b'')
        except Exception as e:
            self.send_response(500)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            self.wfile.write(f'Ocorreu um erro ao enviar o e-mail: {str(e)}'.encode())
        finally:
            server.quit()

    def do_GET(self):
        # Implemente o tratamento para solicitações GET, se necessário
        pass


# Define o diretório raiz do servidor
diretorio_raiz = ''

# Define a porta em que o servidor será executado
porta = 8000

# Cria o manipulador do servidor
handler = MyRequestHandler

# Inicia o servidor
with socketserver.TCPServer(("", porta), handler) as httpd:
    print(f"Servidor rodando na porta {porta}")
    httpd.serve_forever()
