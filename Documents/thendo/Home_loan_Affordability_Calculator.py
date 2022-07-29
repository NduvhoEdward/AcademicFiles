'''
Author 				 :Ramshia Thendo
Date 				 :30/09/2018
Current Fundamental  :Programming Bootcamp
Position 			 :ZunoTech Software Developer

EXPOLRE DATA SCIENCE ACADEMY
'''


### START FUNCTION 4

def maximum_home_loan(PMT, i, n):

	# YOUR CODE HERE

	# initialising the variable for storing Preseent Value
	total_present_value = 0

	# Calculating the total present value
	for x in range(1,n+1):
		balance = PMT/(1+i)**x 				# calculating balance using the present value of an annuity formula
		total_present_value += balance 		# adding the 'balance' from the formulae to the total_present(available)_value

	# Telling (printing) the customer their maximum home loan
	print('You can take the maximux loan of: R',round(total_present_value,2))

	PV = round(total_present_value, 2)
	return PV


### END FUNCTION 4


### START FUNCTION 5

def maximum_home_loan_with_age(PMT, i, start_age):

	# YOUR CODE HERE

	# getting the number of years from the opening year to 65 years
	n = 65 - start_age
	total_present_value = 0

	# Calculating the total present value
	for x in range(1,n+1):
		balance = PMT/(1+i)**x 			# calculating balance using the present value of an annuity formula
		total_present_value += balance  # adding the 'balance' from the formulae to the total_present(available)_value

	#printing the total value to the customer
	print('You can afford the home loan of: R', round(total_present_value,2))

	PV = round(total_present_value, 2)
	return PV

### END FUNCTION 5


### START FUNCTION 6

def pay_off_period(PV, PMT, i):

	# YOUR CODE HERE

	# initialing variables for fiture use
	amount = 0 		# a variable for checking if we havent reached the loan amount
	period = 0 		# the starting point for the year counter (period)
	x = 1 			# the starting power (amoung**1)

	#using the present value of an annuity formula to calculate the amount
	while amount <= PV:
		# using the present value of an annuity formula to calculate the amount
		amount += (PMT)/((1+i)**x)
		# adding 1 to x so that it's 1 greater during the next loop
		x += 1 		
		#counting the years (adding a year everytime the amount hasnt reached the loan)
		period += 1

	n = period
	print('There is ', n, 'years left until the loan is fully paid')

	return int(n)

### END FUNCTION 6

