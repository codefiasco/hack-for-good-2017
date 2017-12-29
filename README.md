# REFIND

![project logo](app/assets/images/refind.png)

## Description:
Project developed during 2º Edition of [Hack for Good](http://hackforgood.pt) hackathon. *Refind* is a job platform, where companies can post jobs specifically for refugees, with the objective to bypass prejudice from certain employers.

## Technology:
- Ruby on Rails, JavaScript, HTML/CSS
- Ruby version: 2.3.1
- Rails version: 5.0.4

## Funcionalities:
- Sign up and sign in from Organizations and Job seekers
- Job seekers can apply to jobs
- Organizations can post jobs
- Job seekers are only visible to employers if they apply to their jobs. 

## To run:

**Create default values:**
```
rake db:migrate
```

**Run server:**
```
rails s
```
- Go to http://localhost:3000 to test the web application

## Use Cases:

**Refugee**
- username: anne@email.com
- password: 123456

**Organization**
- username: hello@gulbenkian.pt
- password: 123456

Default values defined at [seeds file](db/seeds.rb)

## Team:
- Francisco Machado - [@CodeFiasco](https://github.com/CodeFiasco)
- Isabel Costa - [@isabelcosta](https://github.com/isabelcosta)
- Samuel Gomes - [@SamGomes](https://github.com/SamGomes)
- Tiago Almeida - [@tiagoalmeida92](https://github.com/tiagoalmeida92)
