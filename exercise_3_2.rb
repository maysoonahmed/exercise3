#[4] Continue in the Document class.
# add a 'words' function that returns the content of the document in the form of
# an array of words.
# Example: if content is "some more content here" then the function should return
# ["some", "more", "content", "here"]

#[5] Read about blocks in ruby [also check the ruby examples provided]
# add a function each_word that loops on the words in the document - you must use
# blocks
# This function is called like this:
# document.each_word do |word|
#  puts word
# end


class Document
	attr_accessor :author, :title , :content
	def initialize(attributes = {})
		@author = attributes[:author]
		@title = attributes[:title]
		@content = attributes[:content]
	end
	def +(b)
		c= Document.new()
		c.author=@author 
		c.title=@title
		if (b.class==String)
			c.content=@content+b
		else	
			c.content=@content+b.content
		end	

		return c
	end	
    def words()
    	
    	q=content.split
    	return q
    end	
    def each_word ()
    	
    	#content2=@content
    	words.each do |y|
    		yield(y)
    	end
    end		
	
end


# These examples should work
a=Document.new(:author => "someone", :title => "my book", :content => "this is the content of my book")
b=Document.new(:author => "someone", :title => "my book", :content => "and so is this.")

add_content = a + b
h=add_content.words
p h
add_content2= a + "abcdef"
puts add_content2.content

a.each_word do |x|
	puts x.inspect
end
