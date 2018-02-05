Heroku link: [to be added]

# Food Delivery App

This app enables a user to retrieve food delivery orders in JSON format from a database

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* Ruby 2.4.1
* Rails 5.1.4
* PostgreSQL 9.6.6

### Installing

Clone the repository
```
git clone https://github.com/kennethteh90/rails-delivery-api.git
```

Install required gems
```
bundle install
```

Create, configure and seed the database
```
rake db:create db:migrate db:seed
```

Available JSON endpoints:
```
Path: /orders
Format: JSON
Example response:
{
  orders: [
    {
      "order_id": "GO123",
      "delivery_date": "2017-10-20",
      "delivery_time": "11:00–11:30AM"
    },
    {
      "order_id": "GO124",
      "delivery_date": "2017-10-20",
      "delivery_time": "11:00–11:30AM"
    }
  ]
}

Path: /orders/:order_id
Format: JSON
Example response:
{
  order: {
    "order_id": "GO123",
    "delivery_date": "2017-10-20",
    "delivery_time": "11:00–11:30AM"
    "order_items": [
      {
        "name": "Buffalo Chicken on Sweet Potato Mash and Celery Confit ",
        "quantity": 2,
        "total_price": 2390
      }
    ]
  }
}
```

## Authors

* **Kenneth Teh** - [Kenneth](https://github.com/kennethteh90)
