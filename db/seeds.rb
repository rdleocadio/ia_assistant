Task.destroy_all
User.destroy_all

user = User.create!(
  email: "teste@email.com",
  password: "123123"
)
# -----------------------------
# TAREFA 1 – Organizar uma viagem internacional completa
# -----------------------------
Task.create!(
  title: "Organizar viagem para Portugal - 12 dias",
  content: <<~MD
<span style='color: #99BC85; font-size:24px;'>**Organização da Viagem – 12 dias em Portugal**</span>
<span style='color: #99BC85; font-size:20px;'>Planejar uma viagem completa incluindo traslados, hospedagem, alimentação, passeios, reservas e documentos.</span>

---

<span style='color: #99BC85; font-size:18px;'> 📅 **Etapas Principais** </span>

1. Definir data exata da viagem
   - Entre abril e maio.

2. Pesquisar passagens aéreas
   - Avaliar diferentes aeroportos e preços.

3. Documentação
   - Passaporte válido
   - Seguro-viagem
   - Regras sanitárias

---

<span style='color: #99BC85; font-size:18px;'> 🗺️ **Roteiro Sugerido** </span>

<span style='color: #99BC85; font-size:16px;'>  **Lisboa (4 noites)** </span>
- Castelo de São Jorge
- Torre de Belém
- Mosteiro dos Jerónimos

<span style='color: #99BC85; font-size:16px;'> **Porto (3 noites)** </span>
- Livraria Lello
- Caves de vinho
- Ribeira
- Ponte Dom Luís I

<span style='color: #99BC85; font-size:16px;'> **Sintra (1 dia)** </span>
- Palácio da Pena
- Quinta da Regaleira

<span style='color: #99BC85; font-size:16px;'> **Coimbra (1 noite)** </span>

---

<span style='color: #99BC85; font-size:18px;'> 🏨 **Hospedagens** </span>

- 4 noites — Lisboa (centro histórico)
- 3 noites — Porto (Ribeira)
- 1 noite — Coimbra

---

<span style='color: #99BC85; font-size:18px;'> 🚆 **Deslocamentos Internos** </span>

- Lisboa → Porto (trem)
- Porto → Coimbra
- Coimbra → Lisboa

---

<span style='color: #99BC85; font-size:18px;'> 🎒 **Checklist Final** </span>

- Cartões desbloqueados
- Adaptadores
- Documentos impressos
- Mala para clima de primavera

---

<span style='color: #99BC85; font-size:18px;'> 💶 **Planejamento Financeiro** </span>

Categorias:
- Passagens
- Hospedagem
- Alimentação
- Transporte
- Passeios
- Reserva emergencial

> Inclua também comparação de hospedagens e sugestões de restaurantes.
MD
)

Task.create!(
  title: "Desenvolver trabalho acadêmico sobre Inteligência Artificial",
  content: <<~MD

<span style='color: #99BC85; font-size:24px;'>**Trabalho Acadêmico – Inteligência Artificial (ABNT)**</span>
<span style='color: #99BC85; font-size:20px;'>Desenvolver um trabalho completo com estrutura teórica, revisão bibliográfica e análise crítica.</span>

---

<span style='color: #99BC85; font-size:18px;'> 🧠 **Tema Central** </span>
Impacto da Inteligência Artificial no mercado de trabalho.

---

<span style='color: #99BC85; font-size:18px;'> 📑 **Estrutura (ABNT)** </span>

1. Introdução
2. Justificativa
3. Revisão bibliográfica
4. Desenvolvimento
   - Capítulo 1
   - Capítulo 2
   - Capítulo 3
5. Considerações finais
6. Referências

---

<span style='color: #99BC85; font-size:18px;'>🗓️ **Cronograma** </span>

- Pesquisa teórica — 7 dias
- Capítulo 1 — 5 dias
- Capítulo 2 — 5 dias
- Capítulo 3 — 5 dias
- Revisão e formatação — 4 dias

---

<span style='color: #99BC85; font-size:18px;'>📘 **Conteúdo obrigatório** </span>

- Conceitos fundamentais de IA
- Autores clássicos (Turing, McCarthy, Minsky)
- Redes neurais
- IA generativa
- Impactos econômicos e sociais
- Gráficos comparativos (2010–2024)

---

<span style='color: #99BC85; font-size:18px;'>✔️ **Checklist antes da entrega**</span>

- Revisão gramatical
- Citações conforme ABNT
- Numeração das seções
- Figuras com legenda
- Revisão de coerência e coesão

> Incluir comparação entre abordagens e autores contemporâneos.
MD
)

Task.create!(
  title: "Planejar festa de aniversário com 50 convidados",
  content: <<~MD

  <span style='color: #99BC85; font-size:24px;'> **Festa de Aniversário – Planejamento Completo (50 convidados)** </span>
  <span style='color: #99BC85; font-size:20px;'> Planejar local, orçamento, alimentação, decoração e cronograma.</span>

---

<span style='color: #99BC85; font-size:18px;'>📍 **Local** </span>

- Salão ou espaço aberto
- Acessibilidade
- Estacionamento
- Capacidade

---

<span style='color: #99BC85; font-size:18px;'>💰 **Orçamento Detalhado**</span>

- Alimentação (buffet / finger food)
- Bebidas
- Decoração
- Mobiliário
- DJ / música
- Bolo, doces e lembranças

---

<span style='color: #99BC85; font-size:18px;'>👥 **Lista de Convidados**</span>

- Criar lista nominal (50 pessoas)
- Enviar convites digitais
- Criar planilha de RSVP

---

<span style='color: #99BC85; font-size:18px;'>🍽️ **Menu**</span>

- Entradas
- Pratos principais
- Sobremesas
- Opções vegetarianas e veganas

---

<span style='color: #99BC85; font-size:18px;'>🎉 **Decoração**</span>

- Definir tema
- Comprar itens
- Montar mesa principal

---

<span style='color: #99BC85; font-size:18px;'>📅 **Logística do Dia**</span>

- Buscar bolo
- Chegada do fotógrafo
- Receber equipe do buffet
- Testar som
- Organizar área de presentes

---

<span style='color: #99BC85; font-size:18px;'>✔️ **Checklist Final** </span>

- Confirmar fornecedores (48h antes)
- Limpeza do local
- Mobiliário suficiente
- Cronograma final do evento

> Incluir alternativas de cardápio e controle do orçamento.
MD
)
