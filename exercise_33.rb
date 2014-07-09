ahmed= [80,40,50]
mohamed=[40,80,90]
yasmine=[60,90,95]

def order_grades(*att)

	b=[80,40,50,90,60,95]
	
	t=[0,1,2,3,4,5]
	a=[]

    att.each do |e|
    	e.each do |item|
    		a.push(item)
    	end
    end	
    #b=att.uniq	
	
	cc=[]
	h = {}
	
	for i in b do
	   c=0	
	   c=a.count(i)
	   cc.push(c)  
	   puts cc[i]
	
	end  
	for i in t do	
		h[b[i]]=cc[i]
	end
print h	
end	
order_grades(ahmed,mohamed,yasmine)

#h[b[i]]=cc[i]
# Please count how many times each grade is repeated
# So for example, the above should return 2 for 80
# output should be a hash with the grade as the key
# and the count as the value
# example: {80=>2, 40=>2, 50=>1, 90=>2, 60=>1, 95=>1}

#the function name should be order_grades
# it should take an arbitrary number of parameters
# hint order_grades(*attributes)
# return value should be the hash.


# This should work
#puts order_grades(ahmed,mohamed,yasmine)
# This should work too
# 
