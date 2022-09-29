#print (type(99.9)) #float
#print(type("False")) #str
#print(type(False)) #bool
#print(type('0')) #str
#print(type(0)) #int
#print(type(True)) #bool
#print(type('True')) #str
#print(type([{}])) #list
#print(type({'a':[]})) #dictionary
"""
A term or phrase typed into a search box? -- string
If a user is logged in? -- boolean
A discount amount to apply to a user's shopping cart? -- int should be float
Whether or not a coupon code is valid? -- bool
An email address typed into a registration form? -- string
The price of a product? -- float
A Matrix? -- dictionary should be list of lists
The email addresses collected from a registration form? -- list
Information about applicants to Codeup's data science program? - dictionary

"""

#'1' + 2 #error
#print(6 % 4 )#2
#print (type(6%4)) #int
#print(type(type(6 % 4))) #string > was type
#print('3 + 4 is ' + 3 + 4) #'3+4 is 7' > was concat error
#print(0 < 0 )#false
#print('False' == False) #false
#print(True == 'True') #falso
#print(5 >= -5) #true
#print(True or "42") #false > was true
#print(6 % 5) #1
#print(5 < 4 and 1 == 1 )#false
#print('codeup' == 'codeup' and 'codeup' == 'Codeup') #false
#print(4 >= 0 and 1 !== '1') #true > was an error (removing 2nd equals makes it true)
#print(6 % 3 == 0) #true
#print(5 % 2 != 0) #true
#print([1]+2) #3 > was concat error
#print([1]+[2]) #12 > was 1, 2
#print([1]*2) #error > was 1, 1
#print([1]*[2]) #error (can't multiply sequence by non-int)
#print([]+[] == []) #true
#print({} + {}) #was error, can't concat dictionaries
 

 #####################################

 #total_days_rented = 3+1+5
 #cost_per_day = 3
 #return cost_per_day * total_days_rented

#amazon_rate = 380
#goog_rare = 400
#face_rate = 350
#hours_at_amazon = 4
#hours_at_goog = 6
#hours_at_face = 10
#(amazon_rate * hours_at_amazon) + (goog_rate * hours_at_goog) + (face_rate * hours_at_face)


#most effifient to use datetime import datetime and use to check for overlaps
#class_schedule = {"duration_in_minutes": 90, "start_time_24": 1400}
#seats_in_class = 100
#students_currently_enrolled = 86
#student_schedule_current = {0800, 90}, {0945, 90}
#if (students_currently_enrolled < seats_in_class AND studen_schedule_current != class_schedule) then return True else False



#is_premium = boolean
#is_offer_still_good = boolean
#purchased_item_total = int
#check_for_discount = (is_offer_still_good = True) AND (is_premium OR purchased_item_total >2)
"""

from xmlrpc.client import boolean


username = 'codeup'
password = 'notastrongpassword'

pass_at_least_5_char = boolean
    if password > 5 return True else False
username_less_than_20 = boolean
    if username <= 20 return True else False
pass_and_user_different = boolean
    if username = password return False else True
no_whitespace_start_or_end = boolean
    if (password[0] or password[-1] or username[0] or username[-1] = ' ') return False else True

"""