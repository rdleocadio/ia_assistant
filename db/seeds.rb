Task.destroy_all
User.destroy_all

user = User.create!(email: "teste@email.com", password: "123123")
Task.create!(user: user, title: "ROTINA PESSOAL", content:
  "
2025-12-08 06:30 — Atualizar planner

2025-12-09 20:30 — Revisar metas da semana

2025-12-10 18:30 — Preparar marmitas

2025-12-11 17:00 — Organizar documentos

2025-12-12 20:00 — Planejar orçamento do mês

2025-12-13 15:30 — Separar roupas para doar")

Task.create!(user: user, title: "SAÚDE & BEM-ESTAR", content:
  "
2025-12-08 07:00 — Tomar vitaminas

2025-12-09 07:00 — Aplicar medicação semanal

2025-12-10 13:00 — Sessão de terapia

2025-12-12 08:30 — Alongamento

2025-12-13 12:00 — Checar pressão

2025-12-14 22:00 — Dormir 8 horas cedo

2026-01-15 10:00 — Exame de sangue anual")

  Task.create!(user: user, title: "TAREFAS PROFISSIONAIS", content:
  "
2025-12-08 09:00 — Responder e-mails pendentes

2025-12-09 10:00 — Atualizar planilha de despesas

2025-12-10 15:00 — Revisar contrato com cliente

2025-12-11 11:00 — Criar apresentação no Canva

2025-12-12 09:30 — Planejar postagens da semana

2025-12-12 14:00 — Fazer backup dos arquivos

2025-12-14 18:00 — Estudar 1 hora curso online")
