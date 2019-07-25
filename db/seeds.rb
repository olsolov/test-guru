# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
                  { title: 'Ruby' },
                  { title: 'Ruby on Rails' },
                  { title: 'Git' }
                ])
Test.create([
              { title: 'Основы Ruby', level: 1, category_id: 1 },
              { title: 'ООП в Ruby', level: 2, category_id: 1 },
              { title: 'Основы Ruby on Rails', level: 1, category_id: 2 },
              { title: 'Основы Git', level: 1, category_id: 3 },
              { title: 'Git branch', level: 2, category_id: 3 }
            ])
Question.create([
                  { body: 'Какой метод позволяет перевести строку в нижний регистр?' },
                  { body: 'Что такое объект в ООП?' },
                  { body: 'Как добавить в конфигурацию Rails приложения часовой пояс?' },
                  { body: 'Что такое Git?' },
                  { body: 'Какими способами можно слить две ветки?' }
                ])
Answer.create([
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
User.create([
              { name: 'Olga', role: 'admin' },
              { name: 'New_user', role: 'user' }
            ])

Result.create([
                { user_id: 2, test_id: 1 },
                { user_id: 2, test_id: 3 },
                { user_id: 2, test_id: 5 }
              ])
