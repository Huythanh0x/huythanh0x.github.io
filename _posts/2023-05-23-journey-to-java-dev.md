---
title: New journey with Java dev
categories: [Java]
tags: [new-journey]
---
This will be a story about what I did in the way from nearly zero expreience in Java dev to a expert in this field. I will constantly update the new resources and courses, also references related to the Java dev into this article.

### Background knowledge:

- Graduate student from UIT (Computer science)
- [Android Dev(mostly in Kotlin)](https://github.com/Huythanh0x/AndroidUdemyCoupon)
- [Android Dev(basic Java)](https://github.com/Huythanh0x/SimpleMathMultipleChoice)
- [6 months with Selenium (Python)](https://github.com/Huythanh0x/AutomateWithSeleniumStartProject)
- [Know basic JS/HTML/CSS (Chrome Extension](https://github.com/Huythanh0x/CamblyScheduleHelperChromeExtension)
- [Basic Ktor (back-end framework)](https://github.com/Huythanh0x/UdemyCouponKtorServer)
- [Crawl data from multiple websites](https://github.com/huythanh0x/create_printable_flashcard_CamBridge)
- Additional Skills: Sqlite, Github, Linux

### Step by step
- Go through Java syntax [cheat sheet](https://programmingwithmosh.com/wp-content/uploads/2019/07/Java-Cheat-Sheet.pdf)

- Completed 20 challenges from [30 days of code-hackerrank](https://www.hackerrank.com/domains/tutorials/30-days-of-code)

- Create [my first CRUD app](https://github.com/Huythanh0x/JourneyWithJava/tree/main/FirstCRUDSpringApp) following
  this [short tutorial](https://www.youtube.com/watch?v=IucFDX3RO9U)

- Short article, [REST hello world](https://spring.io/guides/gs/rest-service/)

- **(Have to pay for pro lessons)** Involve into the beginner
  course [Building a REST API with Spring Boot](https://spring.academy/courses/building-a-rest-api-with-spring-boot/lessons/introduction)
    - Spring and Spring boot
    - API contract & Json
    - Test first - TDD (Red, Green, Refactor)
    - Request and Response
    - Spring controller and mapping, path variable
    - TestRestTemplate & ResponseEntity -> test in local
    - CrudRepository and in-memory database(H2)
    - Spring Auto Configuration automatically starts configure H2 database -> base on CrudRepository
    - Create Repository from CrudRepository<Data,Id>
    - Can use function from interface repository to get the data
    - Automatically executed the sql in `test/resources` in run test
    - The test will run even the fact that CashCardController required a bean of type 'CashCardRepository' that could
      not be found.
    - Idempotent operation -> the responses are the same for any request
    - HTTP response (status code + header)
    - Pagination in API response & sorted order -> `PagingAndSortingRepository` `PageRequest` `Sort`
    - Spring Security and authentication with Filter chain
    - Authentication and Authorization -> Role-Based Access Control
    - Same Origin Policy -> scripts which are contained in a web page are allowed to send requests to the origin
    - Cross-Origin Request Sharing (CORS) -> explicitly allow a list of “allowed origins
    - Cross-Site Request Forgery -> CSRF Token (unique token is generated on each request)
    - Cross-Site Scripting (XSS) -> escape the special characters
- Official course [Spring with Kotlin](https://spring.io/guides/tutorials/spring-boot-kotlin/)
    - Initializr HTTP API 
    - Maven/Gradle -> plugins, dependencies
    - Set up `application.properties`
    - Understanding generated application -> Application with main{runApplication}
    - Writing controller to handle request(Http, Html)
    - Using `mustache` to configure HTML repsonse (ui.Model)
    - Junit5 @BerforeAll @AfterAll TestRestTemplate
    - Create custom extension function
    - Persist data with JPA -> allOpen plugin
    - Create entity @GeneratedValue, @ManyToOne
    - Extend interface CrudRespository
    - DataJpaTest with TestEntityManager
    - Use model to render the webpage
    - Data initialization to a new BlogConfiguration -> @Bean `ApplicationRunner{}`
    - Intefrattion test with @SpringBootTest
    - @WebMvcTest @ExtendWith() @ContextConfiguration @MockkBean
    - Configure the properites -> @ConfigurationProperties("blog")
    - @EnableConfigurationProperties(BlogProperties::class) & application.properties
    - custom properties `application.properties`
- [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
    -  A simple payroll service that manages the employees of a company
    -  H2 in-memory database & JPA
    -  Spring MVC layer
    -  By extending EmployeeRepository from JpaRepository/CrudRepository -> CRUD
    -  @SpringBootApplication: meta-annotation that pulls in component scanning, autoconfiguration, and property support
    -  Preload with @Configuration and @Bean of `CommandLineRunner` -> automatically run those commands/types
    - @GetMapping, @PostMapping, @PutMapping and @DeleteMapping
    - @ControllerAdvice -> to redner HTTP response message
    - What makes something RESTful: pretty url + get,post,put + crud -> still NOT enough
    - If the engine of application state (and hence the API) is not being driven by hypertext, then it cannot be RESTful and cannot be a REST  -> use `LinkBuilder` such as: `HATEOAS`. Then will response not only the data but `_link` !!!Not useful from my current view
    - @Component annotation, the assembler will be automatically created when the app starts.
    - Never delete a column in a database. — Unknown
    - Insert(a:A,b:B,c:C) or insert(o: Object)
    - **GIVE UP ON THIS ARTICLE**
- Go through [Spring start here](https://www.amazon.com/Spring-Start-Here-Learn-learn/dp/1617298697#customerReviews)