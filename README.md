# Spring Mybatis Test

How to setup `Spring` project with `Mybatis`.

## MyBatis

### STS Setting

Checkout [mybatis-test#mybatis-settings](https://github.com/unemotioned/mybatis-test#mybatis-settings)

### Maven Dependencies

From [Maven Repository](https://mvnrepository.com/) get the following:

- `mybatis`
- `mybatis spring`

```xml
<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
<dependency>
  <groupId>org.mybatis</groupId>
  <artifactId>mybatis</artifactId>
  <version>3.5.5</version>
</dependency>

<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
<dependency>
  <groupId>org.mybatis</groupId>
  <artifactId>mybatis-spring</artifactId>
  <version>2.0.5</version>
</dependency>
```

### applicationContext.xml

Instead of `jdbcTemplate` use `sqlSession` and `sqlSessionTemplate`:

```xml
<bean id="sqlSession"
    class="org.mybatis.spring.SqlSessionFactoryBean">
    <property name="dataSource" ref="dataSource" />
    <property name="configLocation"
        value="classPath:mybatis-config.xml" />
    <property name="mapperLocations"
        value="classPath:mapper/*.xml" />
</bean>

<bean id="sqlSessionTemplate"
    class="org.mybatis.spring.SqlSessionTemplate">
    <constructor-arg index="0" ref="sqlSession" />
</bean>
```

---

## File Upload

Add `commons-fileupload` and `commons-io` to `pom.xml` from `[mvnrepository.com](https://mvnrepository.com/).

And inside the `applicationContext.xml` add bean and set the max upload size of a file:

```xml
<bean id="multipartResolver"
      class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
    <!-- 10MB -->
    <property name="maxUploadSize" value="10485760"/>
</bean>
```
