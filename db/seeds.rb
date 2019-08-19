# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rubocop: disable all

categories = Category.create!([
                                { title: 'Ruby' },
                                { title: 'Ruby on Rails' },
                                { title: 'Git' }
                              ])

users = User.create!([
                       { name: 'Olga', role: 'admin', email: 'admin@gmail.com' },
                       { name: 'New_user', role: 'user', email: 'new_user@gmail.com' }
                     ])

tests = Test.create!([
                       { title: 'Основы Ruby', level: 1, category: categories[0], author: users[0] },
                       { title: 'ООП в Ruby', level: 2, category: categories[0], author: users[0] },
                       { title: 'Основы Ruby on Rails', level: 1, category: categories[1], author: users[0] },
                       { title: 'Основы Git', level: 1, category: categories[2], author: users[0] },
                       { title: 'Git branch', level: 2, category: categories[2], author: users[0] }
                     ])

questions = Question.create!([
                               { body: 'Какой метод позволяет перевести строку в нижний регистр?', test: tests[0] },
                               { body: 'Что такое объект в ООП?', test: tests[1] },
                               { body: 'Как добавить в конфигурацию Rails приложения часовой пояс?', test: tests[2] },
                               { body: 'Что такое Git?', test: tests[3] },
                               { body: 'Какими способами можно слить две ветки?', test: tests[4] }
                             ])

answers = Answer.create!([
                           { body: 'dcase()', question: questions[0] },
                           { body: 'downcase()', correct: true, question: questions[0] },
                           { body: 'down()', question: questions[0] },
                           { body: 'lowercase()', question: questions[0] },
                           { body: 'Объект — это сущность, служащая контейнером для данных и управляющая доступом к этим данным.', question: questions[1] },
                           { body: 'Объект — это программная модель какого-то реально существующего объекта', question: questions[1] },
                           { body: 'Объект — cущность в адресном пространстве вычислительной системы, появляющаяся при создании экземпляра класса', question: questions[1] },
                           { body: 'Все ответы верны', correct: true, question: questions[1] },
                           { body: 'config.time_zone =', correct: true, question: questions[2] },
                           { body: 'time_zone =', question: questions[2] },
                           { body: 'Все ответы верны', correct: true, question: questions[2] },
                           { body: 'Это облачное хранилище', question: questions[3] },
                           { body: 'Это сервер для ваших проектов', question: questions[3] },
                           { body: 'Это таск-менеджер', question: questions[3] },
                           { body: 'Это распределённая система управления версиями', correct: true, question: questions[3] },
                           { body: 'git merge', question: questions[4] },
                           { body: 'pull request', question: questions[4] },
                           { body: 'Все ответы верны', correct: true, question: questions[4] }
                         ])

# rubocop: enable all
