Task.destroy_all
User.destroy_all

user = User.create!(email: "teste@email.com", password: "123123")

Task.create!([
  {
    user: user,
    title: "Pagar conta de luz",
    content: "Conta de luz do apartamento, acessar app do banco e pagar o boleto.",
    prazo: Date.today + 1,
    priority: "alta",
    status: "pendente"
  },
  {
    user: user,
    title: "Estudar Ruby on Rails",
    content: "Revisar associações, rotas e controllers para o projeto da IA.",
    prazo: Date.today + 3,
    priority: "media",
    status: "pendente"
  },
  {
    user: user,
    title: "Fazer compras do mês",
    content: "Mercado: arroz, feijão, carne, produtos de limpeza e frutas.",
    prazo: Date.today + 5,
    priority: "media",
    status: "pendente"
  },
  {
    user: user,
    title: "Entregar trabalho da faculdade",
    content: "Trabalho de metodologia científica, entregar em PDF pelo portal da faculdade.",
    prazo: Date.today + 2,
    priority: "alta",
    status: "pendente"
  },
  {
    user: user,
    title: "Limpar o quarto",
    content: "Organizar guarda-roupa, jogar papéis fora, trocar roupa de cama.",
    prazo: Date.today + 7,
    priority: "baixa",
    status: "pendente"
  },
  {
    user: user,
    title: "Fazer atividade física",
    content: "Caminhada de 30 minutos ou treino de musculação.",
    prazo: Date.today + 1,
    priority: "media",
    status: "pendente"
  },
  {
    user: user,
    title: "Estudar para prova de lógica",
    content: "Resolver lista de exercícios e revisar conteúdo das últimas aulas.",
    prazo: Date.today + 4,
    priority: "alta",
    status: "pendente"
  },
  {
    user: user,
    title: "Responder e-mails pendentes",
    content: "Responder e-mails de trabalho e da faculdade.",
    prazo: Date.today,
    priority: "alta",
    status: "pendente"
  }
])
