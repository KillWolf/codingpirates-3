Aktiver fysisk (enable physics)

Husk man kan specificere tilesets til at tage mindre physics plads

### Del 1:

Tilføj physics til tilemap


#### Del 2

**1.**
Tilføj gravity (tyngdekraft) til jeres spiller.tscn. Gravity (tyngdekraft) gør at spiller.tscn hele tiden vil falde ned af. 
Læg mærke til, at når i starter spillet, så falder spilleren ikke endnu. Det kommer vi til.

indsæt billede screenshots/player_physics/step-1

**2.**
Opdater bevægelseskoden til kun at registere `left`og `right`. Læg mærke til, at nu kan i kun gå frem og tilbage. `up` vil blive brugt senere.

indsæt billede screenshots/player_physics/step-2

**3.**
Tilføj nu følgende kode. Vi sætter nu velocity.y til at være GRAVITY * delta. Vær opmærksom på, at hvis i skrevet _ delta med et undestregning, så skal i nu fjerne det. 
Vi tilføjer også `if not is_on_floor` som er en indbygget metode i spiller. Den tjekker, hvis spilleren kolliderer

Det gør, at spilleren falder med en bestemt hastighed. 

indsæt billede screenshots/player_physics/step-3

**4.**
Vi tilføjer nu `const JUMP_VELOCITY = -500` i toppen, og nede i `_physics_process` tjekker vi, at spilleren `is_on_floor`, altså, at spilleren står på en tile. Hvis spilleren er på en tile, så kan den hoppe.

indsæt billede screenshots/player_physics/step-4

---

**Har du tid til mere? Prøv disse udfordringer!**

**Leg med tallene:**
Prøv at ændre tallene for `GRAVITY`, `JUMP_VELOCITY` eller `speed` øverst i din kode. Hvad sker der, hvis du gør tyngdekraften meget lille? Kan du lave måne-fysik? Hvad hvis du hopper utrolig højt?

**Byg dit level:**
Åbn dit tilemap og byg videre på dit level! Tilføj flere platforme, lav en hemmelig passage, eller gør banen længere. Det er dit spil – giv det dit eget præg!

**Tilføj en kasse:**
Download grafikken fra Grafik-sektionen nedenfor. Tilføj en `RigidBody2D` til din scene, og sæt grafikken på den. En `RigidBody2D` har allerede fysik indbygget – den falder ned og kolliderer med dine tiles helt af sig selv, uden at du skal skrive kode!

---

**Grafik**
https://ibingames.itch.io/free-pixelart-chestsboxes-pack-16-16px/download/eyJpZCI6MzMyNjMzOCwiZXhwaXJlcyI6MTc3MjY1NzU0OH0%3d.1oSk4jtrNw3C7c1Dln%2fy4h%2fLWX0%3d