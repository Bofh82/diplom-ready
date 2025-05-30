#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
		
	// Добавление ВКМ_ГруппаСрокДоговора		
	
		ВКМ_ГруппаСрокДоговора = Элементы.Вставить("ВКМ_ГруппаСрокДоговора", Тип("ГруппаФормы"), ЭтотОбъект, );
		ВКМ_ГруппаСрокДоговора.Вид = ВидГруппыФормы.ОбычнаяГруппа;

		Если Объект.ВидДоговора = ПредопределенноеЗначение("Перечисление.ВидыДоговоровКонтрагентов.ВКМ_Абонент") Тогда
			ВКМ_ГруппаСрокДоговора.Видимость = Истина;
		Иначе
			ВКМ_ГруппаСрокДоговора.Видимость = Ложь;
		КонецЕсли;	
		
		// Добавление поля ВКМ_ДатаНачала
		
			ВКМ_ДатаНачала = Элементы.Вставить("ВКМ_ДатаНачала", Тип("ПолеФормы"), Элементы.ВКМ_ГруппаСрокДоговора, );
			ВКМ_ДатаНачала.Вид = ВидПоляФормы.ПолеВвода;
			ВКМ_ДатаНачала.ПутьКДанным = "Объект.ВКМ_ДатаНачала";
		
			
		// Добавление поля ВКМ_ДатаОкончания
		
			ВКМ_ДатаОкончания = Элементы.Вставить("ВКМ_ДатаОкончания", Тип("ПолеФормы"),
				Элементы.ВКМ_ГруппаСрокДоговора, );
			ВКМ_ДатаОкончания.Вид = ВидПоляФормы.ПолеВвода;
			ВКМ_ДатаОкончания.ПутьКДанным = "Объект.ВКМ_ДатаОкончания";
	
	// Добавление поля ВКМ_АбонентскаяПлата
	
		ВКМ_АбонентскаяПлата = Элементы.Вставить("ВКМ_АбонентскаяПлата", Тип("ПолеФормы"), , );
		ВКМ_АбонентскаяПлата.Вид = ВидПоляФормы.ПолеВвода;
		ВКМ_АбонентскаяПлата.ПутьКДанным = "Объект.ВКМ_АбонентскаяПлата";

		Если Объект.ВидДоговора = ПредопределенноеЗначение("Перечисление.ВидыДоговоровКонтрагентов.ВКМ_Абонент") Тогда
			ВКМ_АбонентскаяПлата.Видимость = Истина;
		Иначе
			ВКМ_АбонентскаяПлата.Видимость = Ложь;
		КонецЕсли;
	 
	// Добавление поля ВКМ_СтавкаЧаса
	
		ВКМ_СтавкаЧаса = Элементы.Вставить("ВКМ_СтавкаЧаса", Тип("ПолеФормы"), , );
		ВКМ_СтавкаЧаса.Вид = ВидПоляФормы.ПолеВвода;
		ВКМ_СтавкаЧаса.ПутьКДанным = "Объект.ВКМ_СтавкаЧаса";

		Если Объект.ВидДоговора = ПредопределенноеЗначение("Перечисление.ВидыДоговоровКонтрагентов.ВКМ_Абонент") Тогда
			ВКМ_СтавкаЧаса.Видимость = Истина;
		Иначе
			ВКМ_СтавкаЧаса.Видимость = Ложь;
		КонецЕсли;


КонецПроцедуры
#КонецОбласти
#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ВидДоговораПриИзменении(Элемент)

	Если Объект.ВидДоговора = ПредопределенноеЗначение("Перечисление.ВидыДоговоровКонтрагентов.ВКМ_Абонент") Тогда
		Элементы.ВКМ_ГруппаСрокДоговора.Видимость = Истина;
		Элементы.ВКМ_АбонентскаяПлата.Видимость = Истина;
		Элементы.ВКМ_СтавкаЧаса.Видимость = Истина;
	Иначе
		Элементы.ВКМ_ГруппаСрокДоговора.Видимость = Ложь;
		Элементы.ВКМ_АбонентскаяПлата.Видимость = Ложь;
		Элементы.ВКМ_СтавкаЧаса.Видимость = Ложь;
	КонецЕсли;

КонецПроцедуры

#КонецОбласти