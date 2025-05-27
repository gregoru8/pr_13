# pr_13
# Практическая работа №13. Планы запросов  
# Цели:
Изучить и научиться применять команду EXPLAIN, приобретести навыки чтения и интерпретации планов выполнения запросов.
# Ход работы:
## 1. Создадим таблицу table1
![image](https://github.com/user-attachments/assets/49818964-d908-4020-b0d0-c1df5eca90bb)
## 2. Создадим таблицу table2 с помощью директивы LIKE
![image](https://github.com/user-attachments/assets/a43bf9e3-c3e4-45ad-b271-7737a87575a0)
## 3. Сгенерируем данные и вставим их в обе таблицы
![image](https://github.com/user-attachments/assets/66ac3e97-abe2-4fbc-aa69-446484270670)
## 4. С помощью директивы EXPLAIN посмотрим план соединения таблиц table1 и table2 по ключу id1
![image](https://github.com/user-attachments/assets/2780365a-7052-4508-92d8-31e73f06824f)
## 5. Используя таблицы table1 и table2 реализуем план запроса встроенного инструмента dbeaver с помощью директивы EXPLAIN
![image](https://github.com/user-attachments/assets/29dc60af-73cb-442b-b78a-ef2e73cc7e4a)
## 6. Реализуем простые запросы с использованием join, group by и подзапроса
### Запрос с join
![image](https://github.com/user-attachments/assets/5b91b223-7cd6-4182-a370-629a87403e0d)
### Запрос с group by
![image](https://github.com/user-attachments/assets/5659af95-4801-47df-83ce-13865a63c507)
### Запрос с подзапросом
![image](https://github.com/user-attachments/assets/239a7412-989c-4042-a437-c373aef328e6)
## 7. Сравним результаты, полученные локально с результатами с сайта
### результаты с сайта:
![image](https://github.com/user-attachments/assets/24c8db08-f5b5-4a6f-846a-775285f778d5)
### Локальные результаты:
![image](https://github.com/user-attachments/assets/50168212-731e-4828-81dd-6db55eefe201)
### Полученые результаты результаты идентичны, но на сайте можно найти больее подробную информацию, к примеру пиковое использование памяти. В локальных же результатах приведены только основные показатели, а именно, стоимость запроса и обрабатываемый им объем.
## 8. Выведем первые 20 значений всех таблиц
![image](https://github.com/user-attachments/assets/e61d387b-a8dd-4b40-81c4-0010d74b52af)
# Вывод: 
В ходе работы были подробнее изучены возможности функции EXPLAIN, также были приобретены навыки чтения и интерпретации планов выполнения запросов.
