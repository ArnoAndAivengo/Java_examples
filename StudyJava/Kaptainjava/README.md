# Многопоточность. XML. Веб сервисы
## <a href="http://javawebinar.ru/masterjava">Регистрация на проект</a>

### _Разработка полнофункционального многомодульного Maven проекта_
- веб приложение (Tomcat, JSP, jQuery)
- многопоточный почтовый сервиса (JavaMail, java.util.concurrent.*) и вспомогательные модули
- связь модулей через веб-сервисы (SOAP, JAX-WS) и по REST (JAX-RS)
- сохранение данных в RMDBS (H2) и динамическое конфигурирование модулей по JMX.

### Требование к участникам
Опыт программирования на Java. Базовые знания Maven.

## Необходимое ПО
-  <a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html">JDK8</a>
-  <a href="http://git-scm.com/downloads">Git</a>
-  <a href="http://www.jetbrains.com/idea/download/index.html">IntelliJ IDEA</a>

> Выбирать Ultimate, 30 days trial (работа с JavaScript, Tomcat, JSP). Учебный ключ к Ultimate выдается на первом занятии.

# Первое занятие: многопоточность.

## ![video](https://cloud.githubusercontent.com/assets/13649199/13672715/06dbc6ce-e6e7-11e5-81a9-04fbddb9e488.png) 1. <a href="https://www.youtube.com/watch?v=whONxvrM2Fc">Вступление. Многопоточность и параллельность.</a>
![Concurrent vs Parallel](https://joearms.github.io/images/con_and_par.jpg)

## ![video](https://cloud.githubusercontent.com/assets/13649199/13672715/06dbc6ce-e6e7-11e5-81a9-04fbddb9e488.png) 2. <a href="https://www.youtube.com/watch?v=qpV0KRadPj8">Структура памяти Java. Ленивая инициализация.</a>

### Структура памяти: куча, стек, permanent/metaspace
  - <a href="http://www.slideshare.net/kslisenko/jvm-35760825">JVM изнутри - оптимизация и профилирование</a>.
  - <a href="http://stackoverflow.com/questions/79923/what-and-where-are-the-stack-and-heap#24171266">Stack and Heap</a>
  - Дополнительно:
    - <a href="http://habrahabr.ru/post/117274/">Из каких частей состоит память java процесса</a>.
    - <a href="http://www.javaspecialist.ru/2011/04/permanent.html">Permanent область памяти</a>
    - <a href="http://www.javaspecialist.ru/2011/04/java-thread-stack.html">Java thread stack </a>
    - <a href="http://habrahabr.ru/post/134102/">Размер Java объектов</a>

### Ленивая инициализация
- <a href="https://habrahabr.ru/post/27108/">Реализация Singleton в JAVA</a>
- <a href="https://ru.wikipedia.org/wiki/Double_checked_locking">Double checked locking</a>
- <a href="https://en.wikipedia.org/wiki/Initialization-on-demand_holder_idiom">Initialization-on-demand holder idiom</a>
- <a href="https://tproger.ru/translations/singleton-pitfalls/">Подводные камни Singleton</a>

## ![video](https://cloud.githubusercontent.com/assets/13649199/13672715/06dbc6ce-e6e7-11e5-81a9-04fbddb9e488.png) 3. <a href="https://www.youtube.com/watch?v=8bFF-5r_Kig">Реализация многопоточности в Java</a>
- <a href="https://ru.wikipedia.org/wiki/Параллелизм_в_Java">Параллелизм в Java</a>
- <a href="https://ru.wikipedia.org/wiki/Монитор_(синхронизация)">Монитор (синхронизация)</a>
- <a href="https://en.wikipedia.org/wiki/Compare-and-swap">Compare-and-swap</a>
- <a href="http://www.javaspecialist.ru/2011/06/java-memory-model.html">Java Memory Model</a>
- <a href="http://www.skipy.ru/technics/synchronization.html">Синхронизация потоков</a>
- <a href="https://habrahabr.ru/company/luxoft/blog/157273">Обзор java.util.concurrent.*</a>
- <a href="https://habrahabr.ru/post/132884/">Как работает ConcurrentHashMap</a>
- <a href="https://habrahabr.ru/post/277669/"> Справочник по синхронизаторам java.util.concurrent.*</a>
- <a href="http://articles.javatalks.ru/articles/17">Использование ThreadLocal переменных</a>
- <a href="https://www.youtube.com/watch?v=8piqauDj2yo">Николай Алименков — Прикладная многопоточность</a>
- <a href="http://stackoverflow.com/questions/20163056/in-java-can-thread-switching-happen-in-the-synchronized-block">Can thread switching happen in the synchronized block?</a>

#### Tproger: Многопоточное программирование в Java 8
- <a href="https://tproger.ru/translations/java8-concurrency-tutorial-1/">1. Параллельное выполнение кода с помощью потоков</a>
- <a href="https://tproger.ru/translations/java8-concurrency-tutorial-2/">2. Синхронизация доступа к изменяемым объектам</a>
- <a href="https://tproger.ru/translations/java8-concurrency-tutorial-3/">3. Атомарные переменные и конкурентные таблицы</a>

## ![video](https://cloud.githubusercontent.com/assets/13649199/13672715/06dbc6ce-e6e7-11e5-81a9-04fbddb9e488.png) 4. <a href="https://www.youtube.com/watch?v=AEhIh2qd-FM">Реализация многопоточной отправки писем. Execution Framework</a>

----------------------------

### Ресурсы (основы)
- Intuit, <a href="http://www.intuit.ru/studies/courses/16/16/lecture/27127">Потоки выполнения. Синхронизация</a>
- Алексей Владыкин, <a href="https://www.youtube.com/watch?v=zxZ0BXlTys0&list=PLlb7e2G7aSpRSBWi5jbGjIe-v_CjRO_Ug">Основы многопоточность в Java</a>
- Виталий Чибриков, <a href="https://www.youtube.com/watch?v=dLDhB6SRXzw&list=PLrCZzMib1e9qkzxEuU_huxtSAxrW1t9NZ">Java. Многопоточность</a>
- Computer Science Center, курс <a href="https://compscicenter.ru/courses/hp-course/2016-spring">Параллельное программирование</a>
- Юрий Ткач, курс <a href="https://www.youtube.com/playlist?list=PL6jg6AGdCNaXo06LjCBmRao-qJdf38oKp">Advanced Java - Concurrency</a>
- Головач, курс <a href="https://www.youtube.com/playlist?list=PLoij6udfBncgVRq487Me6yQa1kqtxobZS">Java Multithreading</a>

---
# ![hw](https://cloud.githubusercontent.com/assets/13649199/13672719/09593080-e6e7-11e5-81d1-5cb629c438ca.png) Вступительное задание

Вычекать этот проект:
```git clone  https://github.com/JavaOPs/masterjava.git```

Реализовать метод `MatrixUtil.concurrentMultiply`, позволяющий многопоточно <a href="https://ru.wikipedia.org/wiki/Умножение_матриц">перемножать квадратные матрицы N*N</a>.
- Количество дочерних потоков ограничено `MainMatrix.THREAD_NUMBER`.
- Учесть что-нибудь из <a href="https://habrahabr.ru/post/114797/">оптимизации</a>

-----
# Программа курса
> **возможны изменения, окончательная программа будет перед стартом курса**

### Concurrent and Parallel Programming
- Thread safety. Java Memory Model/ JSR 133. Happens-before.
- Публикация объектов. Использование ThreadLocal переменных
- Initialization on demand holder / Double-checked locking
- Обзор java.util.concurrent.*

### Microbenchmarking JMH

### XML технологии
- формат XML. XSD, XPath, XSL(T)
- Java API for XML: DOM, SAX, StAX, XSLT

### Сервис-ориентированная архитектура, Микросервисы
- JMS, альтернативы
- Варианты разворачивания сервисов. Работа с базой. Связывание сервисов.

### Maven. Многомодульный Maven проект
- Build Lifecycle
- Dependency Mechanism
- Зависимости, профили, написание плагина
- The Reactor. Snapshots

### Создание/тестирование веб-приложения.
- Сборка, запуск, локальный и удаленный debug проекта, способы деплоя в Tomcat
- tomcat7-maven-plugin

### Веб-сервисы
- Веб-сервисы. SOAP. Преимущества/недостатки веб-сервисов. Расширения.
- Реализация веб-сервисов в Java. JAX-RPC, JAX-WS. Стили WSDL
- Создание API и реализации веб-сервиса MailService.
- Деплой и тестирование через SoapUI.

### Доработка веб-сервиса. Кастомизация WSDL.
- Работа с JAXB.
- Передача по SOAP Exception
- Включение wsdl в сервис для публикации.
- Генерация java кода по WSDL

### Реализация клиент веб-сервиса.
- Публикация веб сервиса из main(). Дабавление wsdl
- Выделение из wsdl общей части
- Создание клиента почтового сервиса.
- Тестирование с помощью JUnit 4
- Интеграционное тестирование, maven-failsafe-plugin

### JAX-WS Handlers
- Logical/protocol handlers.
- Логирование SOAP на стороне клиента.
- Логирование и статистика трафика опубликованного веб-сервиса.
- wsimport binding.
- SoapHandler аутентификация.
Добавляем файлы вложения. Mail-Service.

### Создаем вложения почты
- Генерация обновленного WSDL через wsgen
- Веб-сервисы: JAX-WS attachment with MTOM
- Тестирование вложений через SoapUi.

### Загрузка файлов.
- Стандарт MIME. Обрабатываем вложения на форме: commons-fileupload
- Загрузка файла вместе в полями формы.
- Вызов клиента с вложениями.

### Персистентность.
- NoSQL or RDBMS. Обзор NoSQL систем. CAP
- Обзор Java persistence solution: commons-dbutils, Spring JdbcTemplate, MyBatis, JOOQ, ORM (Hibernate, TopLink, ElipseLink, EBean used in Playframework). JPA. JPA Performance Benchmark
- Работа с базой: создание базы, настройка IDEA Database.
- Работа с DB через DataSource, настройка tomcat. HikariCP
- Настройка работы с DataSource из JUnit.

### REST веб сервис.
- JAX-RS. Интеграция с Jersey
- Поддержка Json. Jackson

### Асинхронность.
- @OneWay vs Java Execution framework
- Добавление в клиенте асинхронных вызовов.
- Асинхронные сервлеты 3.x в Tomcat

### Динамическое конфигурирование. JMX
- Maven Groovy cкрптинг.  groovy-maven-plugin
- Настройка Tomcat на удаленное администрирование по JMX

### Проблема MemoryLeak. Поиск утечки памяти.
