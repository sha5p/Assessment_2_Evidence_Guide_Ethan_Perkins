import time                                                                    #This is done to make things feel more natrual
 in list to stop some errors
def restarting():                                                              #Creates a function called restarting that will restart the order when called                                                  
    Start()            

def Start():                                                                   #this is the start of what the user will see and will be called as a restart 
    print("\n[1] Order")                                                       
    print("[2] Pickup")                                                        
    print("[3] Exit\n")                                                        
    while True:                                                                #While this loop is true witch means it repeats forever wont comment about this again unless there is a break function is used
        info=(input(""))                                                       #Gets input and stores as a value wont talk about inputs again
        if info.isalpha():                                                     #Uses the isalpha function to check if the input is correct
            print("Checking...")
            time.sleep(1)
            print("\nThis is not a number input must be a number")                                               
            print("[1] Order")                                                 
            print("[2] Pickup")                                                
            print("[3] Exit\n")                                                
        elif info.isdigit():                                                   #uses the is digit function to check if its a digit if so it will procceed
            info=int(info)                                                     #Makes the input a digit so it can be comapred using if staments 
            if info ==1:                                                       
                print("Starting order...")
                time.sleep(1)
                sure()                                                         #Calls a function which is the next step of the code the is a double checking function
            elif info ==2:                                                     
                if len(namelist) >=1:                                          #Counts the amount in namelist if there is more then one that means an order can be picked up and will do the indent
                    print("Sending to Pickup...")
                    time.sleep(1)
                    pickup() 
                print("Checking...")
                time.sleep(1)                                                  
                print("\nCurrently we have no orders to be picked up")         #If info was equal to two but there is nothing in namlist this will print
                print("[1] Order")                                                                                        
                print("[2] Pickup")                                                                                       
                print("[3] Exit\n")                                                                                       
            elif info ==3:                                                     
                exit()                                                         #Exits program function 
            else:                                                             #If its an invalid input it the following may occur
                print("Checking...")
                time.sleep(1)
                print("\nTry again")                                           
                print("[1] Order")                                             
                print("[2] Pickup")                                                                                       
                print("[3] Exit\n")                                                                                       
        else:   
            print("Checking...")
            time.sleep(1)                                                              
            print("Try again")                                                                                            
            print("[1] Order")                                                                                            
            print("[2] Pickup")                                                                                           
            print("[3] Exit\n")                                                                                           
def pickup():                                                                  #Creates a function called pickup
    global namelistremove                                                      #this is important for checxking things and avoiding error down in checkout line
    for i in namelist:                                                         #Creates a for loop for in name list and shows each current order
            print("\n")                                                        
            x=[]                                                              
            file= open("WhatOrder"+i+".txt", "r")                              
            readinglines=file.readlines()                                      
            for line in readinglines:                                          
                x.append(line.strip())                                         
            x.pop(-1)                                                          
            for z in x:                                                        #Makes a loop called z that will loop through each part of the lsit in x
                print(z)                                                       #prints each part pf the list this will all loop for all the orders 
    print("\nEnter the name in which your ordered under to pick up your order:\n") 
    removelistname=input()                                                     
    if removelistname in namelist:                                             #Checks if the input is valid if so the indented will occur
        namelist.remove(removelistname)                                        #removes name from the orderlist
        namelistremove=namelistremove-1  
        open("WhatOrder"+removelistname+".txt","w").close()                      #Removes from file so if the name is ordered again there is not two orders in one
                                     
        print("Thank you for shoping at Molto Bene Pizzeria",removelistname)   
    else: 
        print("Checking...")
        time.sleep(1)                                                                     #Else bassically if they enter an invalid order
        print("This is not an order. If want want under this name go and order order\n") 
        Start()                                                               
    Start()                                                                   
def checkout():                                                                #defines a varible called checkout which will reset values and writes to a txt file                                                                                                                                                                                  
    Ranoutofidea={"Extra Small":4,"Small":5, "Medium":10,"Large":15,"Extra Large":20} #same as in pigsize but this time is needed for appending to txt file 
    drinktoprice={"Small":1,"Medium":2, "Large":4}
    d=0   
    if check >1:                                                                     
        for k in sizeList:                                                     
            d=d+k                                                             
        for k in drinksizelist:                                                  
            d=d+int(k)  
        for k in sideprice:
            d=d+int(k) 
    print("Loading order...")
    time.sleep(1)                                                       
    print("\nOrder:")                                                    
    print("\nTotal Price $"+str(d))    
    time.sleep(0.5)                                                                                           
    print("\nAre you sure you want to Procceed to checkout? If not go back to order from the menu") #Asks the user a question 
    print("\n[1] Proceed ")                                                    
    print("[2] Back to menu")                                                
    while True:                                                               #This loop confirms the order and then another confirmation below for credit card
        z=(input())                                                           
        if z.isdigit():                                                        
            z=int(z)                                                          
            if z==1:                                                          
                break                                                         #This breaks the while true loop and countiues to the next part of the function 
            elif z ==2:                                                                                                        
                menu()                                                        #Calls the start function and the code loops 
            else:                                                             #if it is an interger but not one or two the indentded occurs 
                print("\n Thats not an option")                               #States this is not an option  
                print(" [1] Proceed ")                                        
                print(" [2] Back to menu")                                  
        elif z.isalpha():                                                     #Uses the is alpha to check if the input is invalid
            print("\nThats not an option")                                    #States this is not an option  
            print("[1] Proceed ")                                              
            print("[2] Back to menu")                                       
        else:                                                                 #If anything else like an empty space occurs then the indented will occur 
            print("\nThats not an option")                                     
            print("[1] Proceed ")                                             
            print("[2] Back to menu")                                       
    print("\nThanks for confirming to proceed!! Please enter in your credit card note all credit cards have 10 digits")
    while True:                                                               #while true repeats until break which is used again here
            z=input("")                                                        
            if len(z)==10 and z.isdigit():                                    #Checks if the input is valid with is digit and if a valid credit card
                print("Checking...")
                time.sleep(1)
                print("Thats a unique credit card! Thanks for shopping dont forget to pickup your order")
                break                                                         #Ends the while true loop
            elif z.isalpha():                                                 #informs the user that the input is invalid
                print("Checking...")
                time.sleep(1)
                print("Thats not even a number! Note all credit cards must have 10 digits/numbers")
            else:          
                print("Checking...")
                time.sleep(1)                                                    
                print("Please enter a valid credit card it must have 10 digits")
    with open("WhatOrder"+name+".txt", "a") as file:                          #opens a file or creates one to append the indented 
        file.write("This is ")                                                 
        file.write(name)                                                       
        file.write("'s Order\n")   
        file.write("\nTotal Price $"+str(d))                                            
    with open("WhatOrder"+name+".txt","a") as file:                           #opens a file or creates one to append the indented 
        counts = {}                                                           
        counts2 = {} 
        counts3={}                                                          
        for i in range(len(order)):                                           #A loop combining pizza and size of it increases the nymeber if there is more than one
            pair = (order[i], wordsize[i])                                     
            if pair in counts:                                                 
                counts[pair] += 1                                              
            else:                                                              
                counts[pair] = 1                                               
        for key, value in counts.items():                                      
            pizza, size = key                                                 
            file.write(f"\n{value} {pizza} Pizza {size}  $"+str(value *int(Ranoutofidea[key[1]])))#Writes the results to the file 
        for i in range(len(drinkorder)):                                           
            pair = (drinkorder[i],drinkwordsize[i])                                  
            if pair in counts2:                                                    
                counts2[pair] += 1                                            #Add +1 san as above count
            else:                                                                  
                counts2[pair] = 1                                                
        for key, value in counts2.items(): 
            drink, drinksize=key                                       
            file.write(f"\n{value} {drink} {drinksize}   $"+str(value *int(drinktoprice[key[1]])))#prints it the {} are used so that i dont have to do a bunch of ++ dont usally do it but looks nice here
        for i in range(len(sideorder)):                                           
            pair = (sideorder[i], sideprice[i])                                  
            if pair in counts3:                                                    
                counts3[pair] += 1                                             #Add +1 san as above count
            else:                                                                  
                counts3[pair] = 1                                                
        for key, value in counts3.items():                                        
            file.write(f"\n{value} {key[0]}    $"+str(value * int(key[1])))
    with open("WhatOrder"+name+".txt","a") as file:                            #opens file again last time
            file.write("\nThank you for choosing Molto Bene Pizzeria ")        #Classic end of reciet moment 
    wordsize=[]                                                                #Resets value for the next order                               
    sizeList=[]                                                               
    order=[]                                                                                                              
    check=1                                                                                                               
    info=1                                                                                                                
    drinkorder=[]                                                                                                                                                                                                                 
    whichPizza=0  
    whichdrink=0             
    sideorder=[]
    sideprice=[]                                                                                           
    namelistremove=namelistremove+1                                                                                       
    Start()                                                                    #Goes to next order
print("\nWelcome to Molto Bene Pizzeria we sell many pizzas and drinks")       #This is the actual start of what the user sees welcomes them to pizza place
Start()                                                                        #Calls and starts code
