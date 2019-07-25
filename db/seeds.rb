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
                               { body: 'Какой метод позволяет перевести строку в нижний регистр?' },
                               { body: 'Что такое объект в ООП?' },
                               { body: 'Как добавить в конфигурацию Rails приложения часовой пояс?' },
                               { body: 'Что такое Git?' },
                               { body: 'Какими способами можно слить две ветки?' }
                             ])

answers = Answer.create!([
                           { body: 'dcase()' },
                           { body: 'downcase()', correct: true },
                           { body: 'down()' },
                           { body: 'lowercase()' },
                           { body: 'upcase()' },
                           { body: 'Объект — это сущность, служащая контейнером для данных и управляющая доступом к этим данным.' },
                           { body: 'Объект — это программная модель какого-то реально существующего объекта' },
                           { body: 'Объект — cущность в адресном пространстве вычислительной системы, появляющаяся при создании экземпляра класса' },
                           { body: 'Все ответы верны', correct: true },
                           { body: 'config.time_zone =', correct: true },
                           { body: 'time_zone =' },
                           { body: 'Это облачное хранилище' },
                           { body: 'Это сервер для ваших проектов' },
                           { body: 'Это таск-менеджер' },
                           { body: 'Это распределённая система управления версиями', correct: true },
                           { body: 'git merge' },
                           { body: 'pull request' }
                         ])

users = User.create!([
                       { name: 'Olga', role: 'admin' },
                       { name: 'New_user', role: 'user' }
                     ])

results = Result.create!([
                           { user_id: users[1].id, test_id: tests[0].id },
                           { user_id: users[1].id, test_id: tests[2].id },
                           { user_id: users[1].id, test_id: tests[4].id }
                         ])
