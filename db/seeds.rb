Task.destroy_all
User.destroy_all

user = User.create!(email: "teste@email.com", password: "123123")
Task.create!(user: user, title: "treino1", content: "dia 1 treinar perna")
Task.create!(user: user, title: "treino2", content: "dia 1 treinar braço")
