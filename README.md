<h1 style="align:center">CO2 Now - Prototipo</h1>

# Ideia
Atualmente, o problema da emissão de gás carbônico está crescendo constantemente. Muitos municípios já se veem na necessidade de implementar medidas restritivas, como uma espécie de 'remédio' para esse problema. Por exemplo, Londres adotou um sistema de cobrança para veículos não autorizados que circulam em áreas de baixas emissões (ULEZ). Essas ações são inspiradas não apenas por Londres, mas também pelo programa Brasil Carbono Zero em 2026. Sabendo disso, nós pensamos em prevenir isso, com um sistema que simula o mapeamento da emissão de CO2 por veículos nas principais vias de Blumenau.

# Informações Importantes
- **Stack:** C# + Flutter
- **Tema:** Meio Ambiente (2)
- **Público Alvo:** Poder Público
- **Nome Equipe:** SiriusTech

# Funcionalidades

**Requisitos Funcionais**

- Cálculo de emissão de CO2:
    
    Aplicação irá calcular a emissão de CO2 de um veículo que passar por determinada rua, a partir de um ponto inicial e um ponto final, através da captura da imagens da placa e a distância percorrida.
    
- Visualização de dados:
    
    Será possível visualizar os dados de emissão de CO2 por veículo, de acordo com o login do proprietário.
    
    1. Rota *pública* (sem necessidade de login): retorna dados do total de emissões por ano e por região, horário de maior emissão e modelo de carro que mais emite CO2, podendo visualizar os dados de acordo com o CEP informado. 
    2. Rota *proprietário* (login por proprietário de veículo): retorna os dados por veículo de cada proprietário.
    3. Rota *admin* (login do Detran): Além das demais rotas, permite atualizar os dados dos veículos.
       
- Geração de gráficos:
    
    O sistema gera gráficos que mostram a taxa de emissão de CO2 por região e por veículo, permitindo uma análise visual dos dados.
    
- Pesquisa de emissão por região:
    
    O sistema permite a possibilidade de pesquisar a emissão de CO2 por CEP informado.

**Requisitos não funcionais**

- Segurança:
    1. Deve haver autenticação e permissão para níveis diferentes de acesso.
    2. Apenas o usuário admin tem poder para alterar dados dos veículos.
    3. Os dados dos veículos serão carregados diretamente via API do Detran (simulação).
    
- Usabilidade:
    1. O sistema pode ser acessado por aplicativo mobile e web, sendo responsivo.
    2. O sistema deve ser claro e intuitivo, com informações objetivas, promovendo fácil entendimento ao público em geral.
    
- Compatibilidade com Navegadores:
    
    O sistema deve ser compatível com os principais navegadores do mercado. Os recursos e funcionalidades do sistema devem comportar todos esses navegadores.
    
- Compatibilidade com plataformas mobile:
    
    O sistema deve ser acessível em dispositivos Android, além de permitir a extensão à dispositivos iOS.

  # Integrantes

- Edna de Paula
- Gabriel Labes
- Gabriel Scheneider
- Helena Luz
- Jonatha Silva
- Lucas Schneider
- Lucas Theiss
- Rob Caputo
- Vinicius

<a href="https://www.figma.com/file/os1JcLsUkGJfe9orrKnOfp/Web-user?type=design&node-id=1-4&mode=design">Prototipação das telas da versão web</a>
<br>
<a href="https://www.figma.com/file/uTGEgnSGR9kWeFf303tEWv/Mobile?type=design&node-id=7%3A3&mode=design&t=bGgOnvJcRGCBIifE-1">Prototipação das telas da versão mobile</a>
