# Daniels API application

This application is created as a requirement for a technical task. 
It contains 2 API endpoints which allows users to query for a list of `DeliveryOrders` and view the details of a `DeliveryOrder`.

---

# Setup

To set up the application locally on your server, 

1. First, clone the repository and `cd` into it.
```
git clone https://github.com/gohdaniel15/daniels_api_application.git
cd daniels_api_application
```

2. Run bundle.
```
bundle
```

3. Setup the database.
```
rake db:create db:migrate
rake db:seed
```

* Please run `db:seed` as a seperate command after `db:create db:migrate`.

---

# API details

1. To view a list of orders
```
Path: GET /orders
Example response:
[
    {
        "id": 1,
        "delivery_date": "2018-02-15",
        "delivery_time": "10:00-10:30AM"
    },
    {
        "id": 2,
        "delivery_date": "2018-02-15",
        "delivery_time": "10:00-10:30AM"
    },
    {
        "id": 3,
        "delivery_date": "2018-02-15",
        "delivery_time": "10:00-10:30AM"
    },
    {
        "id": 4,
        "delivery_date": "2018-02-15",
        "delivery_time": "10:00-10:30AM"
    },
    {
        "id": 5,
        "delivery_date": "2018-02-15",
        "delivery_time": "10:00-10:30AM"
    }
]
```

2. To view details of a specific order
```
Path: GET /orders/:order_id
Example response:
{
    "id": 4,
    "delivery_date": "2018-02-15",
    "delivery_time": "10:00-10:30AM",
    "order_items": [
        {
            "name": "Velvet bean Duck Liver",
            "quantity": 2,
            "total_price": 5642
        },
        {
            "name": "Miracle fruit Moose",
            "quantity": 1,
            "total_price": 9364
        },
        {
            "name": "Miracle fruit Moose",
            "quantity": 4,
            "total_price": 16316
        },
        {
            "name": "Guar Turtle",
            "quantity": 3,
            "total_price": 17721
        },
        {
            "name": "Velvet bean Duck Liver",
            "quantity": 4,
            "total_price": 26548
        }
    ]
}
```
