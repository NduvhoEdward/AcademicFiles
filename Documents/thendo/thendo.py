
def  savings_calculator(PMT, n, i):
	
	FV = 0
	for x in range(n):
		intrest = FV*i
		FV += intrest
		FV += PMT

	print(FV)

	FV = round(FV, 2)
	
	return FV

print(savings_calculator(10000, 20, 0.1) == 572749.99)

def retirement_savings(PMT, i, start_age, end_age):

	FV = 0
	n = end_age - start_age
	for x in range(n):
		intrest = FV*i
		FV += intrest
		FV += PMT
	print(FV)

	FV = round(FV, 2)
	
	return FV

print(retirement_savings(10000, 0.1, 40, 60) == 572749.99)

def retirement_age(PMT, i, FV, start_age):

	inverstment = PMT
	years = 1
	#calculating how many years it will take to get their
	#wanted savings amount
	while inverstment <= FV:
		interest = inverstment*i
		inverstment += interest
		inverstment += PMT
		years += 1
	age = start_age + years
	age = round(age, 2)
	print(age)

	return int(age)

print(retirement_age(10000, 0.1, 572749.99, 40) == 60)

def maximum_home_loan(PMT, i, n):

	total_present_value = 0

	for x in range(1,n+1):
		balance = PMT/(1+i)**x 
		total_present_value += balance

	print(total_present_value)

	PV = round(total_present_value, 2)
	return PV

print(maximum_home_loan(15000*12, 0.1045, 25) == 1578934.73)

def maximum_home_loan_with_age(PMT, i, start_age):

	n = 65 - start_age
	total_present_value = 0

	for x in range(1,n+1):
		balance = PMT/(1+i)**x 
		total_present_value += balance

	print(total_present_value)
	PV = round(total_present_value, 2)
	return PV

print(maximum_home_loan_with_age(15000*12, 0.1045, 40) == 1578934.73)

def pay_off_period(PV, PMT, i):
	amount = 0
	period = 0
	x = 1
	while amount <= PV:
		amount += (PMT)/((1+i)**x)
		x += 1
		period += 1
	n = period
	print(n)
	return int(n)

print(pay_off_period(1635153, 15000*12, 0.1045) == 30)

def investment(PMT, n, i):
	investment_balance = 0
	for x in range(n):
		interest = investment_balance*i
		investment_balance += interest
		if x%2!=0:
			PMT *= 2
		investment_balance += PMT
	print(investment_balance)
	return round(investment_balance, 2)

print(pay_off_period(1578934, 15000*12, 0.1045) == 25)