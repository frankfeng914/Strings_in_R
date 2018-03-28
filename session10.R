library(stringr)

print("DSO")
print("\"")          ### "\" escape symbol
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

# 2
cat(":-\\")

cat("(^_^\")")

cat("@_'-'")

cat("\\m/")

#3.

?str_locate
?str_sub

#4.

str_locate(string = "great", pattern = "a")
str_locate("fantastic","a")
str_locate_all("fantastic","a")
str_locate("super","a")

str_locate(c("fantastic","great","super"),pattern = "a")


#5,

str_sub(string = "testing", start = 1, end = 3)

str_sub(string = "testing", start = 4, end = 7)

str_sub(string = "testing", start = 4)
str_sub("testing", end = 4)



?str_extract


#6.

input = c("abc","defg")
str_sub(input,c(2,3))


#7.

emails <- readRDS("email.rds")
emails[1]
cat(emails[1])

str_locate(emails[1],pattern = "\n\n")

#8.
header =str_sub(emails[1],start = 1, end = 842)

cat(header)

body = str_sub(emails[1],start = 843)

cat(body)


#10.

breaks = str_locate(emails, "\n\n")

headers = str_sub(emails, end = breaks[,1])

bodies = str_sub(emails, start = breaks[,2])

cat(headers)

cat(bodies[6])




### Second Lab

1.
fruit = c("apple","banana","pear","pinapple")


#2.

# detects if the pattern is found

str_detect(fruit,"a")


# pattern starts with a

str_detect(fruit,"^a")

# pattern ends with an a

str_detect(fruit,"a$")

# pattern to check if it has a or e or i or o or u

str_detect(fruit, "[aeiou]")

# pattern to check if it has any between a and d

str_detect(fruit,"[a-d]")

str_detect(fruit, "[0-9]")

# 3.

str_detect(fruit, "^a[a-z]e$") #### start with a, second is any between [a-z], third
### end with e (not what we want)

####Then, the correct version is 

str_detect(fruit, "^a[a-z]*e$")


# . could be any character or number

str_detect(fruit, "^a.*e$")



#4.

###a.
phone ="213 740 4826"

str_detect(phone, "[0-9]{3} [0-9]{3} [0-9]{3}")


###b.
phone = c("213 740 4826","213-740-4826")

str_detect(phone, "[0-9]{3}.[0-9]{3}.[0-9]{3}")

#or

str_detect(phone, "[0-9]{3}[ -][0-9]{3}[ -][0-9]{4}")


###c.
phone = c("213 740 4826","213-740-4826","(213) 740 4826")

str_detect(phone, "[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}")


#5.

str_extract_all(bodies,"[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}")








