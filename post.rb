require 'koala'
@graph = Koala::Facebook::API.new("INSERT YOUR AUTH CODE HERE")
posts = @graph.get_connection('me', 'feed',:limit=>100)
puts posts.length
posts.each do |p|
    #puts p['message']
    if p['message'] and 0 == @graph.get_connection(p['id'],"comments").length
        x = p['message'].upcase
        if x.include? "HAPPY" or x.include? "MANY" or x.include? "BDAY" or x.include? "BIRTHDAY"
            puts p['message']
            message =  "Hey, \nThanks a lot! :)"
            @graph.put_object(p['id'],"comments",:message => message)
        end
    end

end
