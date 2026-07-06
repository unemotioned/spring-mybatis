# Database

[Oracle Database 11G Express Edition](https://www.oracle.com/database/technologies/xe-prior-release-downloads.htm)

- User name: `spring_practice`
- Password: `1234`

---

## Create User

```sql
CREATE USER SPRING_PRACTICE IDENTIFIED BY 1234;
```

## Grant Privileges

```sql
GRANT CONNECT, RESOURCE TO SPRING_PRACTICE;
```

> NOTE
> Execute commands one by one
