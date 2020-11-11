def my_collect(array)
collection = []
x = 0 
if block_given? 
    while x < array.length  
        collection << yield(array[x])
        x+=1
    end 
else 
    "None"
end 
 collection 
end  

my_collect(['ruby', 'javascript', 'python', 'objective-c']) do |languages|
    languages.upcase
end 

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |names|
    names.split(" ").first
end


