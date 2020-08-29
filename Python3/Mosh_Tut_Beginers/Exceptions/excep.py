try:
    age = int(input('Age: '))
    income = 20000
    risk = 20000 / age
    print(age)
except ZeroDivisionError:
    print('Age cant be zero')
except ValueError:
    print('Invalid value')

