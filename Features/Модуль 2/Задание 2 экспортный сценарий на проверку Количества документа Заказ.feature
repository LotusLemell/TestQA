#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild


Функционал: экспортный сценарий на проверку расчета поля Количество (итог) документа Заказ 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: экспортный сценарий на проверку расчета поля Количество (итог) документа Заказ
* Редактирование таблицы документа	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Масло'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '100'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '40,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки		
* Проверка количества ТЧ (Итог)
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '100'
	
		
