﻿#language: ru

@tree

Функционал: Проверка корректности формирования отчета "Анализ выставленных актов"

Как Бухгалтер ИТ фирмы я хочу
сформировать отчет "Анализ выставленных актов" за период 
чтобы проверить корректность информации формируемой в отчете "Анализ выставленных актов"   

Контекст:
	Дано Я подключаю клиент тестирования "БухгалтерИТФирмы" из таблицы клиентов тестирования

Сценарий: Проверка формирования отчета "Анализ выставленных актов"
*Я открываю отчет "Анализ выставленных актов"
	И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Анализ выставленных актов'
	Тогда открылось окно 'Анализ выставленных актов'
	* Я выбираю период анализа
		И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение"
		Тогда открылось окно 'Выберите период'
		И я нажимаю на кнопку с именем 'Select'
	* Я формирую отчет "Анализ выставленных актов"
		Тогда открылось окно 'Анализ выставленных актов'
		И я нажимаю на кнопку с именем 'СформироватьОтчет'


