# CAMAAR
## Grupo 7:
João Pedro Carvalho de Oliveira Rodrigues - 221017032 
Alisson Vieira Neves - 221002067
João Marcos Melo Monteiro - 130143031
Lucas da Costa Rodrigues - 221017079

# SPRINT 1

### Scrum Master: Lucas da Costa
### Product Owner: João Pedro

# Funcionalidades:

### Importação da base de dados por meio de um arquivo JSON
### Envio de email aos alunos para solicitar o cadastro da senha
### Tela de login para os alunos e professores
### Criação de templates de questionários para os professores
### Envio dos questionário para os alunos de acordo com as suas turmas
### Respostar dos alunos aos questionários
### Visualização e download dos questionarios pelos professores
### disponibilização sequencial das ferramentas na tela de gerenciamento

*detalhamento das funcionalidades nas historias de usuário.

## Política de branching:
### branch por funcionalidade

Entregar aqui o arquivo MD para a wiki.

O foco nessa sprint é refatoração e documentação do código.

O código final, desenvolvido até aqui, deve estar adequado aos seguintes pontos:

Complexidade ciclomática < 10 por método

- https://github.com/metricfu/Saikuro

ABC Score < 20 por método

- https://github.com/whitesmith/rubycritic

Cobertura dos testes (RSpec) > 90%

- https://github.com/colszowka/simplecov

Happy Path e Sad Path nas features do Cucumber

Documetação do código com RDoc

- https://github.com/ruby/rdoc

Nas documentações do github já existe o 'How To' de todas essas ferramentas.

# Refatoração e Documentação do Código

## Objetivos da Sprint

Nesta sprint, o foco é a refatoração e a documentação do código. O código final deve atender aos seguintes critérios:

1. **Complexidade ciclomática < 10 por método**
   - Utilizar a ferramenta [Saikuro](https://github.com/metricfu/Saikuro) para medir e reduzir a complexidade ciclomática.

2. **ABC Score < 20 por método**
   - Utilizar a ferramenta [RubyCritic](https://github.com/whitesmith/rubycritic) para avaliar e reduzir o ABC Score.

3. **Cobertura dos testes (RSpec) > 90%**
   - Utilizar a ferramenta [SimpleCov](https://github.com/colszowka/simplecov) para garantir uma cobertura de testes superior a 90%.

4. **Happy Path e Sad Path nas features do Cucumber**
   - Assegurar que os testes de Cucumber cubram ambos os cenários de sucesso (Happy Path) e de falha (Sad Path).

5. **Documentação do código com RDoc**
   - Utilizar a ferramenta [RDoc](https://github.com/ruby/rdoc) para documentar o código.

## Ferramentas e Como Usar

### Saikuro

Saikuro é uma ferramenta para medir a complexidade ciclomática do código. Ele analisa seu código Ruby e gera relatórios detalhados.

**Uso:**
1. Adicione Saikuro ao seu projeto.
2. Execute Saikuro para gerar o relatório de complexidade ciclomática.
3. Identifique métodos com complexidade superior a 10 e refatore-os.

### RubyCritic

RubyCritic combina várias ferramentas de análise estática para fornecer uma visão geral da qualidade do seu código, incluindo o ABC Score.

**Uso:**
1. Adicione RubyCritic ao seu projeto.
2. Execute RubyCritic para gerar relatórios de qualidade de código.
3. Identifique métodos com ABC Score superior a 20 e refatore-os.

### SimpleCov

SimpleCov é uma ferramenta para medir a cobertura de testes em projetos Ruby. Ele gera relatórios mostrando quais linhas de código foram cobertas por testes.

**Uso:**
1. Adicione SimpleCov ao seu projeto.
2. Configure SimpleCov para iniciar antes dos seus testes.
3. Execute seus testes e verifique o relatório de cobertura.
4. Aumente a cobertura para atingir pelo menos 90%.

### Cucumber

Cucumber é uma ferramenta de teste que permite especificar o comportamento do software em um formato legível por humanos. 

**Uso:**
1. Escreva cenários de testes que cubram o Happy Path e o Sad Path.
2. Implemente os passos do Cucumber para validar esses cenários.
3. Execute os testes para garantir que todas as funcionalidades estão cobertas.

### RDoc

RDoc é uma ferramenta para gerar documentação de projetos Ruby. Ele pode gerar documentos HTML, CHM e outros formatos a partir do código-fonte comentado.

**Uso:**
1. Adicione comentários de documentação no seu código usando a sintaxe do RDoc.
2. Gere a documentação executando RDoc no diretório do projeto.

## 'How To' das Ferramentas

Nas documentações do GitHub, já existem guias detalhados ('How To') para todas essas ferramentas. Acesse os links abaixo para mais informações:

- [Saikuro](https://github.com/metricfu/Saikuro)
- [RubyCritic](https://github.com/whitesmith/rubycritic)
- [SimpleCov](https://github.com/colszowka/simplecov)
- [RDoc](https://github.com/ruby/rdoc)

## Conclusão

Ao seguir estas diretrizes e utilizar as ferramentas mencionadas, o código final estará bem refatorado, documentado e com alta cobertura de testes. Mantenha o foco nos critérios estabelecidos para garantir a qualidade e a manutenibilidade do código.
