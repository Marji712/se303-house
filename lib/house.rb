class House
    def opening
        "This is"
    end

    def line(num)
        "#{opening} the #{phrase(num)}house that Jack built.\n"
    end

    def recite
        1.upto(12).map { |i| line(i) }.join("\n")
    end

    def phrase(num)
        verses.last(num).join(" ")  
    end

    def verses
        ["horse and the hound and the horn that belonged to the",
        "farmer sowing his corn that kept the",
        "rooster that crowed in the morn that woke the",
        "priest all shaven and shorn that married the",
        "man all tattered and torn that kissed the",
        "maiden all forlorn that milked the",
        "cow with the crumpled horn that tossed the",
        "dog that worried the",
        "cat that killed the",
        "rat that ate the",
        "malt that lay in the",
        ""]
    end

    def subjects
        ["horse and the hound and the horn that ",
        "farmer sowing his corn that ",
        "rooster that ",
        "priest all shaven and shorn that ",
        "man all tattered and torn that ",
        "maiden all forlorn that ",
        "cow with the crumpled horn that ",
        "dog that ",
        "cat that ",
        "rat that ",
        "malt that ",
        ""]
    end
end

class PirateHouse < House
    def opening
        "Thar be"
    end
end

class RandomHouse < House
    def verses
        super.shuffle!
    end
end

class RandomPirateHouse < House
    def opening
        "Thar be"
    end

    def verses
        super.shuffle!
    end
end

