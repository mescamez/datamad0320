
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
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []
    def addViking(self, Viking=1):
        self.vikingArmy.append(Viking)
    def addSaxon(self, Saxon=1):
        self.saxonArmy.append(Saxon)
    def vikingAttack(self):
        Viking.attack = Saxon.receiveDamage
        if self.health<0:
            self.saxonArmy-=1     
            return f" {receiveDamage} of a Saxon with the {strength} of a Viking"
    def saxonAttack(self):
        Saxon.attack = Viking.receiveDamage
        if Viking[health]<0:
            self.vikingArmy-=1     
            return f" {receiveDamage} of a Viking with the {strength} of a Saxon"

