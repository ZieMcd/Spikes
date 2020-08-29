def greet_user(name, lastname):
    print(f'Hi {name} {lastname}')
    print('Welcome')


greet_user("zie","mcdowell") #can use greet_user(lastname=mcdo, name=zie) so order does not matter

def square(number):
    return number * number

print(square(3))