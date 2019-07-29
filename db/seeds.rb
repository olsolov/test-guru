# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([
                                { title: 'Ruby' },
                                { title: 'Ruby on Rails' },
                                { title: 'Git' }
                              ])

tests = Test.create!([
                       { title: 'Основы Ruby', level: 1, category_id: categories[0].id },
                       { title: 'ООП в Ruby', level: 2, category_id: categories[0].id },
                       { title: 'Основы Ruby on Rails', level: 1, category_id: categories[1].id },
                       { title: 'Основы Git', level: 1, category_id: categories[2].id },
                       { title: 'Git branch', level: 2, category_id: categories[2].id }
                     ])

questions = Question.create!([
                               { body: 'Какой метод позволяет перевести строку в нижний регистр?', test_id: tests[0].id },
                               { body: 'Что такое объект в ООП?', test_id: tests[1].id },
                               { body: 'Как добавить в конфигурацию Rails приложения часовой пояс?', test_id: tests[2].id },
                               { body: 'Что такое Git?', test_id: tests[3].id },
                               { body: 'Какими способами можно слить две ветки?', test_id: tests[4].id }
                             ])

answers = Answer.create!([
                           { body: 'dcase()', question_id: questions[0].id },
                           { body: 'downcase()', correct: true, question_id: questions[0].id },
                           { body: 'down()', question_id: questions[0].id },
                           { body: 'lowercase()', question_id: questions[0].id },
                           { body: 'upcase()', question_id: questions[0].id },
                           { body: 'Объект — это сущность, служащая контейнером для данных и управляющая доступом к этим данным.', question_id: questions[1].id },
                           { body: 'Объект — это программная модель какого-то реально существующего объекта', question_id: questions[1].id },
                           { body: 'Объект — cущность в адресном пространстве вычислительной системы, появляющаяся при создании экземпляра класса', question_id: questions[1].id },
                           { body: 'Все ответы верны', correct: true, question_id: questions[1].id },
                           { body: 'config.time_zone =', correct: true, question_id: questions[2].id },
                           { body: 'time_zone =', question_id: questions[2].id },
                           { body: 'Все ответы верны', correct: true, question_id: questions[2].id },
                           { body: 'Это облачное хранилище', question_id: questions[3].id },
                           { body: 'Это сервер для ваших проектов', question_id: questions[3].id },
                           { body: 'Это таск-менеджер', question_id: questions[3].id },
                           { body: 'Это распределённая система управления версиями', correct: true, question_id: questions[3].id },
                           { body: 'git merge', question_id: questions[4].id },
                           { body: 'pull request', question_id: questions[4].id },
                           { body: 'Все ответы верны', correct: true, question_id: questions[4].id }
                         ])

users = User.create!([
                       { name: 'Olga', role: 'admin' },
                       { name: 'New_user', role: 'user' }
                     ])

# results = Result.create!([
#                            { user_id: users[1].id, test_id: tests[0].id },
#                            { user_id: users[1].id, test_id: tests[2].id },
#                            { user_id: users[1].id, test_id: tests[4].id }
#                          ])
