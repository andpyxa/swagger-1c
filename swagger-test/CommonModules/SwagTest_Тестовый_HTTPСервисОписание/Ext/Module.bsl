﻿Функция ПолучитьОписаниеHTTPСервиса() Экспорт
	
	Объекты = ПолучитьОбъектыHTTPСервиса();
	
	ТестовыйGETПараметры = Новый Массив;
	ТестовыйGETПараметры.Добавить(Swag_ФормированиеОписаний.ОписаниеПараметра("param1", "Какое-то описание параметра", "query", Истина));
	ТестовыйGETПараметры.Добавить(Swag_ФормированиеОписаний.ОписаниеПараметра("param2", "Ещё какой-то параметр", "query"));
	
	ТестовыйGET_MIME_Success = Новый Массив;
	ТестовыйGET_MIME_Success.Добавить(Swag_ФормированиеОписаний.ОписаниеТипаMIME("application/json", , Объекты[0].Имя));
	
	ТестовыйGETОтветы = Новый Массив;
	ТестовыйGETОтветы.Добавить(Swag_ФормированиеОписаний.ОписаниеОтвета(200, "Success", ТестовыйGET_MIME_Success));
	ТестовыйGETОтветы.Добавить(Swag_ФормированиеОписаний.ОписаниеОтвета(401, "Unauthorized"));
	
	ТестовыйPOSTТело_MIME = Новый Массив;
	ТестовыйPOSTТело_MIME.Добавить(Swag_ФормированиеОписаний.ОписаниеТипаMIME("application/json", , Объекты[2].Имя));
	
	ТестовыйPOSTТело = Swag_ФормированиеОписаний.ОписаниеТелаЗапроса(, ТестовыйPOSTТело_MIME);
	
	Описание = Новый Массив;
	Описание.Добавить(Swag_ФормированиеОписаний.ОписаниеМетода("ТестовыйGET", "Получение каких-то данных из 1С", ТестовыйGETПараметры, ТестовыйGETОтветы));
	Описание.Добавить(Swag_ФормированиеОписаний.ОписаниеМетода("ТестовыйPOST", "Отправка каких-то данных в 1С", , , ТестовыйPOSTТело));
	
	Возврат Описание;
	
КонецФункции

Функция ПолучитьОбъектыHTTPСервиса() Экспорт
	
	TestObjectМассивСвойств = Новый Массив;
	TestObjectМассивСвойств.Добавить(Swag_ФормированиеОписаний.ОписаниеСвойстваОбъекта("test_property_1", , "boolean"));
	TestObjectМассивСвойств.Добавить(Swag_ФормированиеОписаний.ОписаниеСвойстваОбъекта("test_property_2", , "string"));
	TestObjectМассивСвойств.Добавить(Swag_ФормированиеОписаний.ОписаниеСвойстваОбъекта("test_property_3", , "integer"));
	TestObjectМассивСвойств.Добавить(Swag_ФормированиеОписаний.ОписаниеСвойстваОбъекта("test_property_4", , "array", , , "AnotherTestObject"));
	
	TestPostObjectМассивСвойств = Новый Массив;
	TestPostObjectМассивСвойств.Добавить(Swag_ФормированиеОписаний.ОписаниеСвойстваОбъекта("test_post_property", , "string"));
	
	Объекты = Новый Массив;
	Объекты.Добавить(Swag_ФормированиеОписаний.ОписаниеОбъекта("TestObject", "object", TestObjectМассивСвойств));
	Объекты.Добавить(Swag_ФормированиеОписаний.ОписаниеОбъекта("AnotherTestObject", "object"));
	Объекты.Добавить(Swag_ФормированиеОписаний.ОписаниеОбъекта("TestPostObject", "object", TestPostObjectМассивСвойств));
	
	Возврат Объекты;
	
КонецФункции
