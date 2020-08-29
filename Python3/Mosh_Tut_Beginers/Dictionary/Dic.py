customer = {
    "name": "zie McDowell",
    "age": 30,
    "is_verified": True
}

print(customer["name"])

print(customer.get("bDay", "does not have bDay")) #will check if there is bDay if not will give default value