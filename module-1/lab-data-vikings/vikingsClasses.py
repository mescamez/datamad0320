
# Soldier
class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def attack (self):
        return self.strength
    def receiveDamage (self, damage):
        self.health-=damage
    
# Viking

class Viking (Soldier):
    def __init__(self, name, health, strength):
        self.name = name
        self.health = health
        self.strength = strength
    def receiveDamage(self, damage):
        self.health-=damage
        if self.health>0:
            return (f"{self.name} has received {damage} points of damage")
        else:
            return (f"{self.name} has died in act of combat")
    def battleCry(self):
        return ("Odin Owns You All!")

# Saxon

class Saxon(Soldier):
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def receiveDamage (self, damage):
        self.health-=damage
        if self.health>0:
            return (f"A Saxon has received {damage} points of damage")
        else:
            return (f"A Saxon has died in combat")
# War
import random
class War:
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []
    def addViking(self, Viking=1):
        self.vikingArmy.append(Viking)
    def addSaxon(self, Saxon=1):
        self.saxonArmy.append(Saxon)
    def vikingAttack(self):
        Viking_soldier = random.choice (self.vikingArmy)
        Saxon_soldier = random.choice (self.saxonArmy)
        if Saxon.health<=0:
            self.saxonArmy.remove(Saxon_soldier)   
        return (Saxon.receiveDamage(Viking.strength))
    def saxonAttack(self):
        Saxon_soldier = random.choice(self.saxonArmy)
        Viking_soldier = random.choice(self.vikingArmy)
        if Viking.health<=0:
            self.vikingArmy.remove(Viking_soldier) 
        return (Viking.receiveDamage(Saxon.strength))
    def showStatus(self):
        if self.vikingArmy==0:
            return "Saxons have fought for their lives and survive another day..."
        elif self.saxonArmy==0:
            return "Vikings have won the war of the century!"
        else:
            return "Vikings and Saxons are still in the thick of battle."
            

