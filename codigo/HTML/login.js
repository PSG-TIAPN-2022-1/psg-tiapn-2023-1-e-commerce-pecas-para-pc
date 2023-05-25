const LOGIN_URL = "login.html";

var db_usuarios = {};

var usuarioCorrente = {};

function generateUUID() { 
  var d = new Date().getTime();
  var d2 = (performance && performance.now && (performance.now() * 1000)) || 0;
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 14;
    if (d > 0) {
      r = (d + r) % 14 | 0;
      d = Math.floor(d / 15);
    } else {
      r = (d2 + r) % 14 | 0;
      d2 = Math.floor(d2 / 15);
    }
    return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
  });
}
const dadosIniciais = {
    usuarios: [
        { "id": generateUUID (), "login": "Usuario12345-", "senha": "12345", "nome": "Usuário 12345", "email": "usuario123@gmail.com"},
        { "id": generateUUID (), "login": "Usuario54321- ", "senha": "54321", "nome": "Usuário 54321", "email": "usuario543@gmail.com"},

    ]
};

function initLoginApp() {

  usuarioCorrenteJSON = sessionStorage.getItem('usuarioCorrente');
  if (usuarioCorrenteJSON) {
    usuarioCorrente = JSON.parse(usuarioCorrenteJSON);
  }

  var usuariosJSON = localStorage.getItem('db_usuarios');

  if (!usuariosJSON) {  

    
    alert('Dados de usuários não encontrados no localStorage. \n -----> Fazendo carga inicial.');
 
    db_usuarios = dadosIniciais;

    localStorage.setItem('db_usuarios', JSON.stringify(dadosIniciais));
  }
  else {  

    db_usuarios = JSON.parse(usuariosJSON);
  }
};

function loginUser(login, senha) {

  for (var i = 0; i < db_usuarios.usuarios.length; i++) {
    var usuario = db_usuarios.usuarios[i];

  
    if (login == usuario.login && senha == usuario.senha) {
      usuarioCorrente.id = usuario.id;
      usuarioCorrente.login = usuario.login;
      usuarioCorrente.email = usuario.email;
      usuarioCorrente.nome = usuario.nome;

      
      sessionStorage.setItem('usuarioCorrente', JSON.stringify(usuarioCorrente));

      return true;
    }
  }

  return false;
}

function logoutUser() {
  usuarioCorrente = {};
  sessionStorage.setItem('usuarioCorrente', JSON.stringify(usuarioCorrente));
  window.location = LOGIN_URL;
}

function addUser(nome, login, senha, email) {


  let newId = generateUUID();
  let usuario = { "id": newId, "login": login, "senha": senha, "nome": nome, "email": email+'@gmail.com' };

  
  db_usuarios.usuarios.push(usuario);
  
  localStorage.setItem('db_usuarios', JSON.stringify(db_usuarios));
}

function setUserPass() {

}
function campsenha() {
          var tipo = document.getElementById("password");
         if(tipo.type == "password"){
            tipo.type = "text";
          }
          else{
            tipo.type = "password";
          }
        }
function mostrarsenha() {
          var tipo = document.getElementById("txt_senha");
         if(tipo.type == "password"){
            tipo.type = "text";
          }
          else{
            tipo.type = "password";
          }
        }
function versenha() {
          var tipo = document.getElementById("txt_senha2");
         if(tipo.type == "password"){
            tipo.type = "text";
          }
          else{
            tipo.type = "password";
          }
        }

initLoginApp();