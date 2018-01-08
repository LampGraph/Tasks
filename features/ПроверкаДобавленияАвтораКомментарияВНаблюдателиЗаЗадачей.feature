# encoding: utf-8
# language: ru

Функционал: Проверка добавления автора комментария в наблюдатели за задачей

Как Пользователь
Я хочу после добавления комментария к задаче становиться наблюдателем этой задачи
Чтобы иметь информацию по задаче для учета в работе

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Добавление комментария к задаче

	Когда Я нажимаю кнопку командного интерфейса "Задачи"
	Тогда открылось окно "Задачи"
	И     в таблице "Список" я перехожу к строке:
	| 'Номер задачи' |  'Наименование'      |
	| '9999999'       |  'ЭтоТестоваяЗадача' |
	И     в таблице "Список" я выбираю текущую строку
	Тогда открылось окно "#9999999 ЭтоТестоваяЗадача"
	И     я нажимаю на кнопку "Комментарии / Чеклист*"
	И     я нажимаю на кнопку "Добавить"
	Тогда открылось окно "Укажите комментарий / подзадачу"
	И     в поле "Комментарий" я ввожу текст "ЭтоТестовыйКомментарий"
	И     я нажимаю на кнопку "ОК"
	Тогда открылось окно "#9999999 ЭтоТестоваяЗадача *"
	И     я нажимаю на кнопку "Записать и закрыть"
	Тогда я стал наблюдателем за задачей "ЭтоТестоваяЗадача" с номером '9999999'
