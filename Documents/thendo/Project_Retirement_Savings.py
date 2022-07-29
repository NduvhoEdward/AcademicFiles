'''
Author 				 :Ramshia Thendo
Date 				 :30/09/2018
Current Fundamental  :Programming Bootcamp
Position 			 :ZunoTech Software Developer

EXPOLRE DATA SCIENCE ACADEMY
'''


### START FUNCTION 1

def savings_calculator(PMT, n, i):

	# YOUR CODE HERE

	# initializing a variable for storing the customer's retirement savings
	FV = 0

	# summing up the savings and its interest for n years
	for x in range(n):
		intrest = FV*i 		# calculating the interest
		FV += intrest 		# adding the interest
		FV += PMT 			# adding the amount at the end of the year

	# printing the saving balance for the customer
	print('Your savings account will have: R', round(FV, 2))

	# Remember to round your answer to 2 decimal places:
	FV = round(FV, 2)

	return FV

### END FUNCTION 1


### START FUNCTION 2

def retirement_savings(PMT, i, start_age, end_age):

	# YOUR CODE HERE

	# initializing a variable for storing the customer's retirement savings
	FV = 0
	# getting the number of years between retirement year and the year the account was opened
	n = end_age - start_age

	# summing up the savings and its interest for n years
	for x in range(n):
		intrest = FV*i 		# calculating the interest
		FV += intrest 		# adding the interest
		FV += PMT 			# adding the amount at the end of each year
	print('Your savings account balance will be: R',round(FV,2))

	# Remember to round your answer to 2 decimal places:
	FV = round(FV, 2)

	return FV

### END FUNCTION 2


### START FUNCTION 3

def retirement_age(PMT, i, FV, start_age):

	# YOUR CODE HERE

	# initialising for future use
	inverstment = 0 
	years = 0

	# calculating how many years it will take to get their
	# wanted savings amount
	while inverstment <= FV:
		interest = inverstment*i 	# calculating the interest
		inverstment += interest 	# adding the interest
		inverstment += PMT 			# adding the amount at the end of each year
		years += 1 					# counting years

	# adding the no. of years the it took to reach the desired amount
	# and the age of the customer when they opened the account	
	age = start_age + years
	
	# rounding to 2 decimals; (not neccesary though its a whole (int) number)
	age = round(age, 2)

	# lettinf the user at what age they can retire
	print('You can retire when you are: ', age, 'years old')

	return int(age)

### END FUNCTION 3


### START FUNCTION 7

def investment(PMT, n, i):

	# YOUR CODE HERE

	#initialising a variable for storing the investment
	investment_balance = 0

	# Calculating the customer's savings after n years
	for x in range(n):
		interest = investment_balance*i     #calculating the interest
		investment_balance += interest      #adding the interest

		#doubling every second year
		if x%2!=0:
			PMT *= 2
		investment_balance += PMT 			# adding the amount at the end of every year

	#printing the investment balance for the customer to see
	print('Your savings account balance will be: R', round(investment_balance,2))
	#rounding-off to 2 decimals

	return round(investment_balance, 2)

### END FUNCTION 7
