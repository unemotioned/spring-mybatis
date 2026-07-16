# Database

[Oracle Database 11G Express Edition](https://www.oracle.com/database/technologies/xe-prior-release-downloads.html)

- **User**: `spring_practice`
- **Password**: `1234`

---

## Create User

```sql
CREATE USER SPRING_PRACTICE IDENTIFIED BY 1234;
```

## Grant Privileges

```sql
GRANT CONNECT, RESOURCE TO SPRING_PRACTICE;
```

> [!IMPORTANT]
> Enter and execute commands one by one.
