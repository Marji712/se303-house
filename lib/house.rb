class House
    def line(num)
        "This is the " + 
        case num
        when 7
            "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 3
            "rat that ate the malt that lay in the house that Jack built.\n"
        when 2
            "malt that lay in the house that Jack built.\n"
        else
        "house that Jack built.\n"
        end
    end
end