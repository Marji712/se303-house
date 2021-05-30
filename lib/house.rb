class House
    def opening
        "This is"
    end

    def line(num)
        "#{opening} #{phrase(num).chop}the house that Jack built.\n"
    end

    def recite
        1.upto(12).map { |i| line(i) }.join("\n")
    end

    def phrase(num)
        verses.last(num).join(" ")  
    end

    def verses
        subjects.zip(verbs)
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
        "crowed in the morn that woke",
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

class RandomClauseHouse < House
    def subjects
        super.shuffle!
    end

    def verbs
        super.shuffle!
    end
end