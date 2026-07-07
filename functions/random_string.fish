function random-name
    set -l adjectives \
        admiring adoring affectionate agitated amazing angry awesome \
        blissful bold brave charming clever cool compassionate competent \
        confident cranky crazy dazzling determined distracted dreamy eager \
        ecstatic elastic elegant eloquent epic exciting fervent festive \
        flamboyant focused friendly frosty funny gallant gifted goofy \
        gracious happy hardcore heuristic hopeful hungry infallible \
        inspiring jolly jovial keen kind laughing loving lucid magical \
        mystifying nervous nice nifty nostalgic objective optimistic \
        peaceful pedantic pensive practical priceless quirky quizzical \
        recursing relaxed reverent romantic sad serene sharp silly \
        sleepy stoic strange stupefied suspicious sweet tender \
        thirsty trusting unruffled upbeat vibrant vigilant vigorous \
        wizardly wonderful youthful zealous zen

    set -l names \
        # scientists
        curie darwin davinci edison einstein euler faraday feynman \
        franklin galileo gauss goodall hawking heisenberg hopper \
        kepler lovelace maxwell newton nightingale pasteur ptolemy \
        tesla turing wozniak \
        # movie stars
        brando bogart hepburn pacino streep denzel dicaprio pitt \
        clooney portman blanchett hanks nicholson freeman winslet \
        depp lawrence chastain oldman washington \
        # musicians
        hendrix presley bowie dylan lennon mccartney jagger cobain \
        beyonce prince marley madonna aretha adele springsteen \
        gaga stevie bono

    set -l hash (random 0 16777215 | xargs printf '%06x\n')
    echo (random choice $adjectives)-(random choice $names)-$hash
end
