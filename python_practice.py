#Python Practice 8-02-2023
print("Welcome to Python practice class")
name=input("Hi, this is your py_asistant, May I know your name? \n")
print(f"Welcome to the class {name}.")
x=input("Please enter your age: \n")
print ("i am" ,  x)	        # ==> 	        ('i am', 55)
print ("i am" , "x"  )       # ==> 	        i am 55
print ("i am " + str(x))	#==>  	        i am 55
print ("i am %s " % x)	    #==>  	        i am 55 
print ("i am {0}".format(str(x)))	#==>	i am 55