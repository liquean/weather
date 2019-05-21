# Local environment setup

### Create database
This application is using PostgreSQL. 
Make sure you create the database before the initialization of the project. 
Also, make sure you update the values on the config/env.yml file.

### Clone the project 
```Shell
git clone https://github.com/liquean/weather.git
cd weather
bundle install
rails db:migrate
```

### Run the project
```Shell
rails s
```

You can use the following endpoints:

```Shell
    POST /users 
```

It receives as parameters name, lastname, email, cellphone and password


```Shell
    POST /auth/login 
```

It receives as parameters email and password


```Shell
    POST /search
```

It receives as parameter a city



```Shell
    GET /search_history
```




