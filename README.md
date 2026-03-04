# Aktiver fysik (Enable Physics)

> Husk: Du kan indstille tilesets til at tage mindre plads i fysik-verdenen!

---

### Del 1: Tilføj fysik til tilemap

Først skal vi tilføje fysik til vores tilemap, så spilleren kan kollidere med verdenen.

---

### Del 2: Giv spilleren tyngdekraft

**1.**
Tilføj tyngdekraft (gravity) til din `spiller.tscn`.
Tyngdekraft betyder, at spilleren hele tiden vil falde ned.

Læg mærke til: Når du starter spillet nu, falder spilleren ikke endnu. Det ordner vi i de næste trin!

![Step 1](screenshots/player_physics/step-1.png)

---

**2.**
Opdater bevægelseskoden, så den kun registrerer `left` og `right`.

Læg mærke til, at du nu kun kan gå frem og tilbage. Vi bruger `up` til at hoppe – det kommer vi til senere!

![Step 2](screenshots/player_physics/step-2.png)

---

**3.**
Tilføj nu følgende kode. Vi sætter `velocity.y` til at være `GRAVITY * delta`, så spilleren falder med en bestemt hastighed.

Vær opmærksom på: Hvis du har skrevet `_delta` med en understregning foran, skal du fjerne understregningen nu.

Vi tilføjer også `if not is_on_floor()` – det er en indbygget metode, som tjekker, om spilleren rører gulvet. På den måde falder spilleren kun, når hun ikke står på noget!

![Step 3](screenshots/player_physics/step-3.png)
