#language: ru

Функция: Управление товарами в разделе "Товары"

  Контекст:
    Дано загружен драйвер
    И открыт сайт "http://localhost:8080/"
    И страница полностью загружена
    И окно браузера развернуто
    И пользователь на вкладке "Песочница" в разделе "Товары"

  @all
  Сценарий: Добавление уже существующих товаров типа "Овощ"
    Когда пользователь нажимает на кнопку "Добавить"
    И вводит в поле "Наименование" значение "Пепино"
    И выбирает тип товара "Овощ"
    И ставит галочку "Экзотический", если "нажать_на_чекбокс" равно "Да"
    И нажимает на кнопку "Сохранить"
    Тогда добавленный товар отображается в таблице под номером 5
    Когда пользователь нажимает на кнопку "Добавить"
    И вводит в поле "Наименование" значение "Баклажан"
    И выбирает тип товара "Овощ"
    И нажимает на кнопку "Сохранить"
    Тогда добавленный товар отображается в таблице под номером 6
    Когда пользователь переходит во вкладку "Песочница" и выбирает "Сброс данных"
    Тогда данные сброшены, страница закрывается