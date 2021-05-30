class House
    def opening
        "This is"
    end

    def line(num)
        "#{opening} #{phrase(num)}the house that Jack built.\n"
    end

    def recite
        1.upto(12).map { |i| line(i) }.join("\n")
    end

    def phrase(num)
        verses.last(num).join(" ")  
    end

    def verses
        ["the horse and the hound and the horn that belonged to",
        "the farmer sowing his corn that kept",
        "the rooster that crowed in the morn that woke",
        "the priest all shaven and shorn that married",
        "the man all tattered and torn that kissed",
        "the maiden all forlorn that milked",
        "the cow with the crumpled horn that tossed",
        "the dog that worried",
        "the cat that killed",
        "the rat that ate",
        "the malt that lay in",
        ""]
    end

    def subjects
        ["the horse and the hound and the horn that",
        "the farmer sowing his corn that",
        "the rooster that",
        "the priest all shaven and shorn that",
        "the man all tattered and torn that",
        "the maiden all forlorn that",
        "the cow with the crumpled horn that",
        "the dog that",
        "the cat that",
        "the rat that",
        "the malt that",
        ""]
    end

    def verbs
        ["belonged to",
        "kept",
        "woke",
        "married",
        "kissed",
        "milked",
        "tossed",
        "worried",
        "killed",
        "ate",
        "lay in",
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

