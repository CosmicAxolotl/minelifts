# Minelifts.
> *Go through 30 unique floors, clearing all mobs, solving puzzles & defeating unknown creatures that will stop your way to the next floors. Make your way through every floor & reach the surface in a single run!*

Right now we are going in alpha developmemnt, not even the core ready (we are working on that).

# Development Notes:
> *Intended only for developers or interested persons on the developmenmt.*

Find here every note of how we are developing this minigame.

## Branches usage:

Every week there will be a new branch to commit everything to the week, this is made for having track of progress on the project separated in weeks. Every Sunday we'll review the branch & check that the purposes of the week were fulfilled, if so, the project is having no delay. The branches names will follow this template:

> `ml_week<week of development starting from 0>`


## Dev docs:
> *Find here all notes while developing modules or content for Minelifts.*

### Core concepts:

1. **Modularity:**
   - The core must allow for further expansion throught modules (called internally "modules" or "DLCs"). Why? Because we might add new content throught datapacks, so having already set up an enviroment that accepts easily the inclusion of new content.

   - All modules should have some basic tasks, like declaring their name, description & skull ID (which corresponds to the display part) & the size that it will require (chunks to preload to generate, erase & manage floors).

   - The core should have basic functions to manage player count, health, death events, floor requirements & minelifts triggers.

2. **Parallel runs:**
   - The core must allow for at least 4 parallel runs which, of course, should support modularity.


### Concepts for Minelifts Classic:
> *See the concepts that we'll use for the minigame.*

1. **Crystal Coves:**
   - Covers from floor 1 to floor 10. The main idea is "light & darkness", whereas darkness help players to wipe areas, the puzzles will be about light refraction. Mobs will be stronger & enduring on light presence. Remember to embrase the darkness!

2. **Sporeshrooms:**
   - Covers from floor 11 to floor 20. The main concept is sporulation, whereas mushrooms can poison players, spores can make enemies sprout out, including that dead mobs can produce spores that can make new mobs spawn. Light & fire can stop temporally the sporulation effect, so fire shrines & fire weapons are indispensable, thought watchout with gas leaks 

3. **Strongshafts:**
   - Covers from floor 21 to floor 30. The main concept is the union of vanilla mineshafts & strongholds, which conbination is known as strongshaft


## Development diary
> Find here all development weeks, its goals & milestones reached.

### Week 0:
- [X] Close Week 0.
- [X] Creation of the repository.
- [X] Create the basic core & module parsing.
- [X] Create the `README.md`.
- [X] Expand `READ.md`.

### Week 1:
- [X] Close Week 1.
- [ ] Finish the module manager.
- [ ] Start the run manager.
- [ ] Start the player manager.
- [ ] Start developing the MVP.

(None finished)

### Week 2:
- [X] Close Week 2.
- [ ] Progress with `ml_week1` objectives.

(Not expected to finish them by this week)

### Week 3:
- [ ] Finish `ml_week1` objectives.
- [ ] Close Week 3.

### Week 4:
- [ ] Finish the run manager.
- [ ] Finish the player manager.
- [ ] Start tests with the managers.
- [ ] Start & finish damage dealer manager.
- [ ] Code mob `ml:mvp/dummy`.
