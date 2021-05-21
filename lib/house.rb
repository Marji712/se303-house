class House
    def line(num)
        "This is the #{phrase(num)}house that Jack built.\n"
    end

    def recite
        1.upto(12).map { |i| line(i) }.join("\n")
    end

    def phrase(num)
        verses = [
            "priest all shaven and shorn that married the",
            "man all tattered and torn that kissed the",
            "maiden all forlorn that milked the",
            "cow with the crumpled horn that tossed the",
            "dog that worried the",
            "cat that killed the",
            "rat that ate the",
            "malt that lay in the",
            ""]
        case num
        when 9
            "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 10
            "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 11
            "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 12
            "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        else
            verses.last(num).join(" ")
        end
        
    end

end