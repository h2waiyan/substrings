dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (userstring, dictionary)
    usertextlist = userstring.split(" ");
    substrings = Hash.new(0)

    usertextlist.map{ |userword| (
        dictionary.map { |dict| (
            if userword.downcase.include? dict
                substrings[dict] += 1
            end
        )}
    )}
    return substrings
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
