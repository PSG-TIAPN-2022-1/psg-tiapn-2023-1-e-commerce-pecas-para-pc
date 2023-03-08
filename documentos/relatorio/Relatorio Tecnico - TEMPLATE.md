# Informações do Projeto
`TÍTULO DO PROJETO`  

E-commerce Peças para PCs

`CURSO` 

Sistemas de Informação

## Participantes

-Henrique Carrara Campos Braga

-Thiago Akihiro Ishi Marchado

-Wander Buzatti Sfredo Santos

-Hitalo Gabriel Almeida dos Santos

-Rafael Lucas Rosa de Oliveira


# Estrutura do Documento

- [Informações do Projeto](#informações-do-projeto)
  - [Participantes](#participantes)
- [Estrutura do Documento](#estrutura-do-documento)
- [Introdução](#introdução)
  - [Problema](#problema)
  - [Objetivos](#objetivos)
  - [Justificativa](#justificativa)
  - [Público-Alvo](#público-alvo)
- [Especificações do Projeto](#especificações-do-projeto)
  - [Personas e Mapas de Empatia](#personas-e-mapas-de-empatia)
  - [Histórias de Usuários](#histórias-de-usuários)
  - [Requisitos](#requisitos)
    - [Requisitos Funcionais](#requisitos-funcionais)
    - [Requisitos não Funcionais](#requisitos-não-funcionais)
  - [Restrições](#restrições)
- [Projeto de Interface](#projeto-de-interface)
  - [User Flow](#user-flow)
  - [Wireframes](#wireframes)
- [Metodologia](#metodologia)
  - [Divisão de Papéis](#divisão-de-papéis)
  - [Ferramentas](#ferramentas)
  - [Controle de Versão](#controle-de-versão)
- [**############## SPRINT 1 ACABA AQUI #############**](#-sprint-1-acaba-aqui-)
- [Projeto da Solução](#projeto-da-solução)
  - [Tecnologias Utilizadas](#tecnologias-utilizadas)
  - [Arquitetura da solução](#arquitetura-da-solução)
- [Avaliação da Aplicação](#avaliação-da-aplicação)
  - [Plano de Testes](#plano-de-testes)
  - [Ferramentas de Testes (Opcional)](#ferramentas-de-testes-opcional)
  - [Registros de Testes](#registros-de-testes)
- [Referências](#referências)


# Introdução

  O Comércio eletrônico de peças para computadores é um espaço em constante desenvolvimento, pois sucessivamente são criadas novas peças no qual o fornecedor tende ter que estudá-las para poder repassar o produto ao cliente de forma clara e explícita a utilidade de tal peça e suas compatibilidades, sendo um dos maiores desafios. Além disso, essas lojas virtuais a todo momento tem que atualizar a plataforma por conta novas peças, mas principalmente pelas táticas de marketing e venda da mercadoria.


## Problema

  O problema das lojas virtuais de peças para computadores é que muitos fornecedores não atualizam certos aspectos da plataforma como a principalmente a funcionalidade de tal peça e a sua compatibilidade dela com as demais peças, no qual diversos clientes são obrigados  a recorrer por meios externos para saber a qualidade do produto onde estes e-commerce estão focando em massa na parte de marketing que esquece de auxiliar o cliente. Assim queremos melhorar principalmente o atendimento ao cliente  tornando esta parte prática e explicativa.


## Objetivos

  O objetivo geral do nosso trabalho é desenvolver uma loja virtual de peças para computadores que consiga atender todos os grupos de pessoas com esclarecimento e interatividade.
  Como objetivos específicos, podemos ressaltar:

●	Explicar a função de cada peça;

●	Auxiliar na compra do computador;

●	Asseguramento do estado do produto;

●	Previsão de novas peças;

●	Descontos para clientes frequentes;



## Justificativa

  Segundo Fundação Getúlio Vargas o Brasil vai ultrapassar 216 milhões de computadores (desktop, notebook e tablet) em uso no Brasil no início de 2023, atingindo 1 computador por habitantes (100% per capita). As vendas em 2021 tiveram um crescimento espantoso de 27% com 14 milhões de unidades. Entretanto, muitos desses computadores são lentos e cheios de problemas e demoram até 40% mais tempo para realizar tarefas, na comparação com equipamentos que utilizam softwares e serviços adequados. Essa foi a conclusão a que chegou o estudo Brain On Tech, realizado pela Dell Technologies em parceria com a EMOTIV.​ Dessa forma, a justificativa do projeto é o aumento do consumo de computadores porém de baixa automatização pela falta de auxílio e orientação na venda, onde queremos mudar esta situação.


## Público-Alvo

  O foco deste trabalho está no público jovem e adulto entre 16 a 40 anos, pois é um público que utiliza frequentemente o computador e constantemente necessitam de peças melhores que atendam a necessidade de lazeres e serviços, mas disponibilizamos a plataforma para atender qualquer idade.

 
# Especificações do Projeto

A definição exata do problema e os pontos mais relevantes a serem tratados neste projeto foi consolidada com a participação dos usuários em um trabalho de imersão feito pelos membros da equipe a partir da observação dos usuários em seu local natural e por meio de entrevistas. Os detalhes levantados nesse processo foram consolidados na forma de personas e histórias de usuários.


## Personas e Mapas de Empatia

# 1º
# Pedro (Babaluzin) Keen

![image](https://user-images.githubusercontent.com/103612206/222246545-beebf2f4-24e6-4617-9803-67fd5cc489c7.png)



![image](https://user-images.githubusercontent.com/103612206/222245527-ac8c688e-5f67-4849-88d8-e1fcb28bc748.png)


# 2º

# Luisa Kowalski


![image](https://user-images.githubusercontent.com/103612206/222246300-fe2fe807-ad49-4bc3-90bd-0282ac8d60d5.png)


![image](https://user-images.githubusercontent.com/103612206/222246813-49dcaee5-fa3f-4be1-83ef-f2b35c6fe9cb.png)


# 3º

# Vonder Júnior



![image](https://user-images.githubusercontent.com/103612206/222247079-560f9a68-e618-4ef8-8408-83c6def29065.png)


![image](https://user-images.githubusercontent.com/103612206/222247274-87d90f1f-60b6-4bd8-b349-1b2c89bf31fc.png)










## Histórias de Usuários

Com base na análise das personas forma identificadas as seguintes histórias de usuários:

|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|Usuário do sistema(Vonder Junior)  | Um site que mostre as opções mais baratas          | Por não ter muito dinheiro              |
|Usuário do sistema(Luisa Kowalski)  | Que o site ofereça uma opção de computadores com mais facilidade e rapidez         | Ter um pc bom para jogar, se divertir e interagir com os amigos              |
|Usuário do sistema(Luisa Kowalski)  | Um site que ajude a montar um PC, peça a  peça          | Não tem conhecimento em hardware e a compatibilidade entre as peças              |
|Usuário do sistema(Pedro Keen)  | Um site que disponha das melhores e mais atuais peças           | Para dar ao público uma melhor experiência               |
|Usuário do sistema(Pedro Keen)  | Um site que possa economizar o tempo de busca           | Não tem tempo para pesquisar muito            |           
|Administrador       | Alterar permissões                 | Permitir que o usuário tenha seus dados particulres  |


## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| O site deve apresentar uma aba de montagem de PC | ALTA |
|RF-002| O site deve apresentar os produtos por categoria |  ALTA | 
|RF-003| O site deve apresentar diversas cores, para ajudar a utilizar o site | BAIXA | 
|RF-004| O site deve ajudar o usuário na compra das peças, colocando determinadas cores em cada produto, assim dividindo o público alvo. |  ALTA | 
|RF-005| O site deve pedir o login de cada usuário, com seus dados e suas idade | ALTA | 
|RF-006| O site deve permitir visualizar a descrição de suas máquinas. |  ALTA | 
|RF-007| O site deve possuir um vocabulário simples, mas também técnico. | MÉDIA | 
|RF-008| O site deve permitir verificar os conteúdos salvos como preferidos |  BAIXA | 
|RF-009| O site deve permitir notas e satisfação sobre seus produtos | MÉDIA | 
|RF-010| O site deve exibir os comentários do produto, feitos pelo fornecedor. |  BAIXA | 
|RF-011| O site deve permitir salvar conteúdos preferidos. | BAIXA | 



### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| O site deve ser publicado em um ambiente acessível publicamente na Internet (Repl.it, GitHub Pages); | ALTA |
|RNF-002| O site deverá ser responsivo permitindo a visualização em diversos aparelhos eletrônicos com mesma qualidade |  MÉDIA | 
|RNF-003| O site deve ter bom desempenho, impossibilitando a chance de qualquer bug e travamento | MÉDIA | 
|RNF-004| O site deve ser compatível com os principais navegadores do mercado (Google Chrome, Firefox, Microsoft Edge) |  ALTA |



## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                             |
|--|-------------------------------------------------------|
|01| O projeto deverá ser entregue no final do semestre letivo, não podendo extrapolar a data de 21/06/2023        | 
|02| O usuário deve ser maior de idade      |
|03| A equipe não pode subcontratar o desenvolvimento do trabalho        |
|04| O site nao pode divulgar dados pessoais, seguindo as norma d LGPD  |


# Projeto de Interface

Dentre as preocupações para a montagem da interface do sistema, estamos estabelecendo foco em questões como agilidade, acessibilidade e usabilidade. Desta forma, o projeto tem uma identidade visual padronizada em todas as telas que são projetadas para funcionamento em desktops.

## User Flow

![image](https://user-images.githubusercontent.com/101299065/222278084-77dfd3c8-a3ef-40b8-8fe3-34da5f6165c4.png)

A partir desse diagrama é possível compreender a dinâmica de funcionamento do site: A página inicial (index) tem a função de um hub onde o usuário pode seguir livremente por todos os recursos do site partindo da tela principal, um design que facilita a navegação e a torna mais prazerosa.


![image](https://user-images.githubusercontent.com/101299065/222278965-98367aa3-f6b0-488b-84d7-3a752b56bde9.png)

A interface de usuário foi pensada para ser completamente acessível, independentemente de onde o usuário se encontra. Dessa forma, a ideia é tornar a navegação fluida e simplificada, tornando o processo menos estressante.


## Wireframes

![image](https://user-images.githubusercontent.com/101299065/222259913-e80945ef-b9ba-4913-969e-99f485482692.png)

 Na página index, a tela principal é apresentada ao usuário. A partir dessa aba, o cliente pode ter acesso a produtos mais novos/populares, além de filtrar enquanto a característica desejada. Além disso aqui estão disponíveis todos os recursos do site e, caso a função não se encontre na página, ele será redirecionado para as demais.


![image](https://user-images.githubusercontent.com/101299065/222262780-92395352-b638-4f0c-ac5f-b8baa4f6c0c3.png)

Na aba cadastro, o usuário pode criar sua conta e se conectar ao nosso site, assim, será possível receber recomendações personalizadas, adicionar produtos como favoritos ou efetuar a compra dos mesmos.


 ![image](https://user-images.githubusercontent.com/101299065/222261978-3287a123-0edb-4d1b-ab2d-33de51453167.png)

 Na aba de login, o usuário já cadastrado pode conectar sua conta ao site, o que é necessário para efetuar a compra de algum produto, ou acessar aqueles marcados como favoritos.


 ![image](https://user-images.githubusercontent.com/101299065/222263246-191efbbb-0366-4f82-93f5-9b20f6d0dc83.png)

 Na aba de favoritos, o usuário tem acesso aos produtos que marcou como desejados, com redirecionamento ao carrinho, onde poderá por fim, efetuar a compra.
 
 
 ![image](https://user-images.githubusercontent.com/101299065/222263597-59f61718-9190-4790-9a08-c3c14c8d88a0.png)

 Na aba carrinho, o usuário tem acesso aos produtos que foram movidos para o carrinho, onde poderá selecionar, calcular o frete e efetuar de forma simplificada, a compra das peças/periféricos marcadas(os).
 

 ![image](https://user-images.githubusercontent.com/101299065/222264339-3bf3fe08-0658-4624-8349-a8e7c21cd916.png)

 Na aba monte seu pc, o usuário pode montar o computador desejado com peças selecionadas. Aqui ele pode encontrar dicas de compatibilidade das partes, auxiliando a montagem.
 
 
 ![image](https://user-images.githubusercontent.com/101299065/222264987-ea085ca4-ba32-4d10-815a-d4589b213e7b.png)

 Na aba suporte, o usuário encontra a área de antendimento ao cliente, onde é possível consultar as dúvidas mais frequentes, além de entrar em contato conosco, a fim de requisitar esclarecimentos ou expressar reclamações.
 
 
![image](https://user-images.githubusercontent.com/101299065/222266148-c89a8be7-a284-4ccc-b909-01eb5bf33533.png)

 Na parte de pesquisa, o usuário entra em uma aba preparada para filtrar e selecionar os melhores resultados da pesquisa do usuário, selecionando os melhores produtos de acordo com suas preferências.




# Metodologia

> Os artefatos do projeto são desenvolvidos a partir de diversas plataformas e a relação dos ambientes com seu respectivo propósito é apresentada na tabela que se segue.
>
| Ambiente  | Plataforma              |Link de Acesso |
|-----------|-------------------------|---------------| 
|Repositório de código | GitHub | https://github.com/PSG-TIAPN-2022-1/psg-tiapn-2023-1-e-commerce-pecas-para-pc | 
|Projeto de Interface e  Wireframes | Figma |  https://www.figma.com/file/o0m4xKHTiRQRp1ii8IuKUU/Untitled?node-id=0%3A1&t=7GRdXIimAE0Np5Py-0 | 
|Gerenciamento do Projeto | Trello | Em construção |
> 
> 

## Divisão de Papéis

>A equipe utiliza metodologias ágeis, tendo escolhido o Scrum como base para definição do processo de desenvolvimento.
>
>A equipe está organizada da seguinte maneira:
>
>Scrum Master: Leonardo Vilela Cardoso
>
>**Equipe de Desenvolvimento:**
>
> -Henrique Carrara
> 
> -Thiago Akihiro
> 
> -Wander Buzatti
> 
> -Hitalo Almeida
> 
> -Rafael Rosa

## Gestão do Projeto

>Para organização e distribuição das tarefas do projeto, a equipe está utilizando o Trello estruturado com as seguintes classificações: 

> **Recursos:** esta lista mantém um template de tarefas recorrentes com as configurações padronizadas que todos devem seguir. O objetivo é permitir a cópia destes templates para agilizar a criação de novos cartões.
> 
> **Backlog:** recebe as tarefas a serem trabalhadas e representa o Product Backlog. Todas as atividades identificadas no decorrer do projeto também devem ser incorporadas a esta lista.
> 
> **To Do:** Esta lista representa o Sprint Backlog. Este é o Sprint atual que estamos trabalhando.
Doing: Quando uma tarefa tiver sido iniciada, ela é movida para cá.
> 
> **Test:** Checagem de Qualidade. Quando as tarefas são concluídas, eles são movidas para o “CQ”. No final da semana, eu revejo essa lista para garantir que tudo saiu perfeito.
> 
> **Done:** nesta lista são colocadas as tarefas que passaram pelos testes e controle de qualidade e estão prontos para ser entregues ao usuário. Não há mais edições ou revisões necessárias, ele está agendado e pronto para a ação.
Locked: Quando alguma coisa impede a conclusão da tarefa, ela é movida para esta lista juntamente com um comentário sobre o que está travando a tarefa.



## Controle de Versão

> Para versionamento dos códigos durante o desenvolvimento do sistema foi escolhida o Github como ferramenta, que segue o seguinte fluxo de funcionamento na gestão dos códigos:
>
![image](https://user-images.githubusercontent.com/79370543/222237503-419f48f0-0361-4feb-a47d-ad9aa972f674.png)


# **############## SPRINT 1 ACABA AQUI #############**


# Projeto da Solução

......  COLOQUE AQUI O SEU TEXTO ......

## Tecnologias Utilizadas

......  COLOQUE AQUI O SEU TEXTO ......

> Descreva aqui qual(is) tecnologias você vai usar para resolver o seu
> problema, ou seja, implementar a sua solução. Liste todas as
> tecnologias envolvidas, linguagens a serem utilizadas, serviços web,
> frameworks, bibliotecas, IDEs de desenvolvimento, e ferramentas.
> Apresente também uma figura explicando como as tecnologias estão
> relacionadas ou como uma interação do usuário com o sistema vai ser
> conduzida, por onde ela passa até retornar uma resposta ao usuário.
> 
> Inclua os diagramas de User Flow, esboços criados pelo grupo
> (stoyboards), além dos protótipos de telas (wireframes). Descreva cada
> item textualmente comentando e complementando o que está apresentado
> nas imagens.

## Arquitetura da solução

......  COLOQUE AQUI O SEU TEXTO E O DIAGRAMA DE ARQUITETURA .......

> Inclua um diagrama da solução e descreva os módulos e as tecnologias
> que fazem parte da solução. Discorra sobre o diagrama.
> 
> **Exemplo do diagrama de Arquitetura**:
> 
> ![Exemplo de Arquitetura](images/arquitetura-exemplo.png)


# Avaliação da Aplicação

......  COLOQUE AQUI O SEU TEXTO ......

> Apresente os cenários de testes utilizados na realização dos testes da
> sua aplicação. Escolha cenários de testes que demonstrem os requisitos
> sendo satisfeitos.

## Plano de Testes

......  COLOQUE AQUI O SEU TEXTO ......

> Enumere quais cenários de testes foram selecionados para teste. Neste
> tópico o grupo deve detalhar quais funcionalidades avaliadas, o grupo
> de usuários que foi escolhido para participar do teste e as
> ferramentas utilizadas.
> 
> **Links Úteis**:
> - [IBM - Criação e Geração de Planos de Teste](https://www.ibm.com/developerworks/br/local/rational/criacao_geracao_planos_testes_software/index.html)
> - [Práticas e Técnicas de Testes Ágeis](http://assiste.serpro.gov.br/serproagil/Apresenta/slides.pdf)
> -  [Teste de Software: Conceitos e tipos de testes](https://blog.onedaytesting.com.br/teste-de-software/)

## Ferramentas de Testes (Opcional)

......  COLOQUE AQUI O SEU TEXTO ......

> Comente sobre as ferramentas de testes utilizadas.
> 
> **Links Úteis**:
> - [Ferramentas de Test para Java Script](https://geekflare.com/javascript-unit-testing/)
> - [UX Tools](https://uxdesign.cc/ux-user-research-and-user-testing-tools-2d339d379dc7)

## Registros de Testes

......  COLOQUE AQUI O SEU TEXTO ......

> Discorra sobre os resultados do teste. Ressaltando pontos fortes e
> fracos identificados na solução. Comente como o grupo pretende atacar
> esses pontos nas próximas iterações. Apresente as falhas detectadas e
> as melhorias geradas a partir dos resultados obtidos nos testes.


# Referências

......  COLOQUE AQUI O SEU TEXTO ......

> Inclua todas as referências (livros, artigos, sites, etc) utilizados
> no desenvolvimento do trabalho.
> 
> **Links Úteis**:
> - [Formato ABNT](https://www.normastecnicas.com/abnt/trabalhos-academicos/referencias/)
> - [Referências Bibliográficas da ABNT](https://comunidade.rockcontent.com/referencia-bibliografica-abnt/)
