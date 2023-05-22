# Django Bitcoin Currency Application

Welcome to MyWacc's programming challenge! This README contains important instructions and information about the Django application you need to set up and build upon for this test.

## Introduction

The objective of this test is to extract Bitcoin data from a public API, create a 'Bitcoin_currency' table in the Django application, store the fetched data in it, and display this data in a meaningful way on the application's port 8000.

## Getting Started

First, make sure you have the latest version of Docker and Docker Compose installed on your machine. Once installed, you can use the provided `Makefile` and `docker-compose.yml` to manage the application.

### Basic commands

Here are some basic commands you might find useful:

- To build & run the application: `make up`
- To create database migrations: `make makemigrations`
- To apply database migrations: `make migrate`
- To create an app: `make createapp app_name=<app_name>`

For more commands, refer to the `Makefile`.

## Task Instructions

1. Run the Django application.
2. Fetch Bitcoin data from a public API. You can use the provided Python code as a starting point:

```python
import requests

url = f"https://api.coingecko.com/api/v3/coins/bitcoin/market_chart?vs_currency=usd&days=7"
response = requests.get(url)
data = response.json()
prices = data["prices"]
```

3. Create a 'Bitcoin_currency' table and populate it with the fetched data.
4. Display the data in a meaningful way on the application's port 8000.

## Submission

You will have one week to complete this test.
Once you are done, please send us your code implementation. We will review your code and get back to you as soon as possible.

## Optionals Extras

- Data filtering: add a filter to the data displayed on the application's port 8000. For example, you could filter the data by date, price, etc.
- Data cleaning: ensure that the data fetched from the API is clean and ready to be stored in the database.
- Data visualization: display the data in a meaningful way.
- User authentication: add a user authentication system to the application.
- Unit tests: add unit tests to the application.
- **Open field**: add any other feature you think would be relevant to this application.

## Questions

If you have any questions, please contact us at 
- lucasdavidbrain@gmail.com 
- francisco.macaya22@gmail.com


Good luck, and we look forward to seeing your solution!
