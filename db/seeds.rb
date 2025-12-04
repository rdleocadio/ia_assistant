Task.destroy_all
User.destroy_all

user = User.create!(
  email: "teste@email.com",
  password: "123123"
)
# -----------------------------
# TAREFA 1 – Organizar uma viagem internacional completa
# -----------------------------
Task.create!([
  {
    title: "Organizar viagem para Portugal - 12 dias",
    content:
      "Organizar uma viagem completa de 12 dias para Portugal, incluindo traslados, hospedagem, alimentação, passeios turísticos, reservas e documentos necessários.
      Itens detalhados da tarefa:
      1. Definir data exata da viagem (entre abril e maio).
      2. Pesquisar passagens aéreas com bom custo-benefício, avaliando saídas de diferentes aeroportos.
      3. Verificar passaporte válido, seguro-viagem e eventuais exigências sanitárias.
      4. Criar roteiro completo para Lisboa, Porto, Coimbra e Sintra, considerando:
        - Tempo ideal em cada cidade.
        - Horários de funcionamento das atrações.
        - Distâncias entre os pontos turísticos.
      5. Reservar hospedagens:
        - 4 noites em Lisboa no centro histórico.
        - 3 noites no Porto próximo à Ribeira.
        - 1 noite em Coimbra.
      6. Planejar deslocamentos internos:
        - Trem Lisboa → Porto (pesquisar horários e valores).
        - Trem Porto → Coimbra.
        - Trem Coimbra → Lisboa.
      7. Definir passeios principais:
        - Lisboa: Castelo de São Jorge, Torre de Belém, Mosteiro dos Jerónimos.
        - Porto: Livraria Lello, Caves de vinho, Ribeira, Ponte Dom Luís I.
        - Sintra: Palácio da Pena, Quinta da Regaleira.
      8. Criar checklist final:
        - Cartões de crédito desbloqueados.
        - Adaptadores de tomada.
        - Documentos impressos.
        - Montar mala considerando clima da primavera.
      9. Planejar orçamento total estimado dividindo por categorias:
        - Passagens aéreas
        - Hospedagens
        - Alimentação
        - Transporte interno
        - Passeios pagos
        - Reserva para emergências
      Também incluir:
      - Comparação entre diferentes opções de hospedagem.
      - Sugestões de restaurantes e cafés em cada cidade.
      - Planejamento de horários para evitar filas em atrações muito concorridas."
  },
  {
    title: "Desenvolver trabalho acadêmico sobre Inteligência Artificial",
    content:
      "Desenvolver um trabalho acadêmico completo seguindo normas da ABNT, com ao menos 20 páginas, incluindo estrutura teórica, revisão bibliográfica e análise crítica.
      Etapas detalhadas:
      1. Definir tema central:
        - Impacto da inteligência artificial no mercado de trabalho.
      2. Criar estrutura geral do trabalho:
        - Introdução
        - Justificativa
        - Revisão bibliográfica
        - Desenvolvimento (3 capítulos)
        - Considerações finais
        - Referências
      3. Montar cronograma de produção:
        - Pesquisa teórica: 7 dias.
        - Capítulo 1: 5 dias.
        - Capítulo 2: 5 dias.
        - Capítulo 3: 5 dias.
        - Revisão e formatação: 4 dias.
      4. Detalhes que devem entrar:
        - Conceitos fundamentais da IA.
        - Autores clássicos (Turing, McCarthy, Minsky).
        - Redes neurais e aprendizado supervisionado.
        - IA generativa e avanços recentes.
        - Impacto econômico, social e tecnológico.
        - Gráficos comparativos (2010–2024).
      5. Checklist antes da entrega:
        - Texto revisado gramaticalmente.
        - Citações e referências conforme ABNT.
        - Numeração correta.
        - Figuras com legenda e fonte.
        - Revisão final de coerência e coesão.
      Também incluir:
      - Comparação entre diferentes abordagens teóricas.
      - Sugestão de autores contemporâneos.
      - Organização clara entre capítulos para facilitar leitura."
  },
  {
    title: "Planejar festa de aniversário com 50 convidados",
    content:
      "Planejar uma festa de aniversário completa para 50 convidados, incluindo orçamento, logística, alimentação, decoração e cronograma do evento.
      Detalhamento completo:
      1. Escolha do local:
        - Salão de festas ou espaço aberto.
        - Verificar capacidade, custo, acessibilidade e estacionamento.
      2. Orçamento detalhado:
        - Alimentação (buffet, finger food ou serviço volante).
        - Bebidas diversas.
        - Decoração (tema, cores, iluminação).
        - Mobiliário extra (mesas, cadeiras, toalhas).
        - DJ, playlist ou músico ao vivo.
        - Bolo, doces e lembrancinhas.
      3. Lista de convidados:
        - Criar lista nominal para 50 pessoas.
        - Enviar convites digitais.
        - Criar planilha de confirmações (RSVP).
      4. Menu:
        - Entradas variadas.
        - Pratos principais.
        - Sobremesas.
        - Opções vegetarianas e veganas.
      5. Decoração:
        - Escolher tema (ex.: tropical, clássico, moderno).
        - Comprar itens decorativos.
        - Montar mesa principal (bolo, painel, docinhos).
      6. Logística do dia do evento:
        - Buscar bolo no horário combinado.
        - Chegada do fotógrafo.
        - Recebimento da equipe de buffet.
        - Teste de som e iluminação.
        - Organização da mesa de presentes.
      7. Checklist final:
        - Confirmar fornecedores 48h antes.
        - Verificar limpeza do local antes e depois da festa.
        - Garantir cadeiras e mesas suficientes.
        - Criar cronograma detalhado de tudo que deve acontecer no evento.
      Também incluir:
      - Controle de orçamento total.
      - Alternativas de cardápio caso haja convidados com restrições alimentares.
      - Detalhamento de montagem e desmontagem da decoração."
  }
])
