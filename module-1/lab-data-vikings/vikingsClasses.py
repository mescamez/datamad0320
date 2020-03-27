
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

class War:
    def __init__(self, vikingArmy, saxonArmy):
        self.vikingArmy = vikingArmy
        self.saxonArmy = saxonArmy
    def addViking(self, n=1):
        self.vikingArmy+=n
    def addSaxon(self, n=1):
        self.saxonArmy+=n
