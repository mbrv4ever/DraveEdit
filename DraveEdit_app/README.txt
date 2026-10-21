DraveEdit v0.21
==============

WYSIWYG HTML5-editor: bouw een webpagina door widgets te slepen, met live
voorbeeld en export naar gewone HTML of een installeerbare PWA. Alles draait
lokaal; de editor zit in dit pakket.


SNEL STARTEN (Windows)
----------------------
1. Pak alle bestanden uit in een map.
2. Dubbelklik op  run.bat
   - De eerste keer maakt het programma eenmalig een .venv aan en installeert
     het PyQt6 en QtWebEngine. LET OP: QtWebEngine is groot (paar honderd MB),
     dus de eerste keer duurt het even.
   - Daarna start DraveEdit meteen.
3. Sleep widgets vanuit het linkerpaneel naar de pagina.


VEREISTEN
---------
- Windows met Python 3.10 t/m 3.13 (https://www.python.org/downloads/).
  Python 3.14 is nog te nieuw voor de PyQt6-wheels; run.bat kiest zelf een
  geschikte versie.
- Internet bij de allereerste start (voor het installeren).


GEBRUIK
-------
- Sleep een widget (kop, paragraaf, knop, link, afbeelding, sectie,
  scheidingslijn, witruimte, invoerveld, tekstvak) naar de pagina.
- Klik een element aan om het rechts aan te passen (kleur, grootte,
  uitlijning, enz.). Dubbelklik op tekst om te typen. Sleep in een Sectie
  om te nestelen.
- Schikken: pijlen omhoog/omlaag, dupliceren, verwijderen (of Del).
  Ctrl+Z / Ctrl+Y voor ongedaan maken / opnieuw.
- Desktop / Tablet / Mobiel laat zien hoe het op die breedte oogt;
  Voorbeeld verbergt de editor-randen.

NIEUW in v0.2
------------
- Code is bewerkbaar: Bekijk code > pas de HTML aan (of plak) > Toepassen.
- Eigen CSS invoeren (live), plus CSS-class/-id per element.
- Bibliotheken aanzetten (jQuery, Bootstrap, Font Awesome, ...) of eigen URL.
- Uitlijning per element: links / midden / rechts.
- Meer formulier-elementen: formulier, label, keuzelijst, aanvinkvakje,
  keuzerondje, verzendknop; invoerveld heeft nu een type-keuze.
- Exporteer de PWA nu ook als een ZIP-bestand (Bestand-menu).

NIEUW in v0.3
------------
- Stijl-knop: visuele pagina-stijl (lettertype, kleuren, lettergrootte,
  achtergrondkleur/-afbeelding, titel/beschrijving) - geen CSS nodig.
- Exporteer HTML ook als ZIP met losse css/index_style.css.
- Export gebruikt nu een vollere <head> (meta-tags, theme-color, titel).
- 'Bekijk code' toont de volledige pagina (begint niet meer leeg);
  Toepassen leest de inhoud weer netjes terug.
- Bibliotheken: 'Toevoegen' van een eigen URL werkt.
- Witte vlakken in popups voorkomen (GPU-compositing uit bij start).

NIEUW in v0.4
------------
- Exporteren is nu EEN keuze: 'Website-zip (HTML + CSS + PWA)' zet alles
  samen in een zip (index.html, css/index_style.css, manifest.json, sw.js,
  icons/). Ook 'naar map' en 'als 1 HTML-bestand' blijven mogelijk.
- De <head> bevat weer exact jouw sjabloon, inclusief <meta spellcheck>.
- CSS-veld: gewoon typen = meteen live. (Het witte vlak van eerder was de
  GPU-glitch die het veld bedekte; dat is met de GPU-fix verholpen.)

NIEUW in v0.5 - visuele stijl-editor voor beginners
--------------------------------------------------
- 'Stijl' is nu een complete no-code editor:
  * Snelle thema's (Licht/Donker/Warm/Zakelijk) met 1 klik.
  * Select-menu met webveilige fonts; lettergrootte in keuzes.
  * Colorpickers voor tekst, links en achtergrond.
  * Achtergrondafbeelding KIEZEN VAN JE COMPUTER (geen URL typen);
    keuze vullend/passend/herhalen/een keer.
- Afbeelding-widget: ook 'Kies afbeelding van je computer'.
- Vrij CSS typen (knop CSS) en code bewerken (Bekijk code) blijft.

NIEUW in v0.6
------------
- Bibliotheken: er verschijnt nu een melding (popje onderin) zodra je een
  bibliotheek aan- of uitzet, en bij het toevoegen van een eigen URL.
  Zo zie je meteen dat het gelukt is.

NIEUW in v0.7
------------
- Snelgids-knop heet nu '? Snelgids' (niet alleen een vraagteken).
- Snelgids uitgebreid met alle functies (Stijl, code, CSS, bibliotheken,
  formulier-elementen, afbeelding van je computer, exporteren).
- Klikbare links naar leerzame sites (W3Schools, MDN, Google Fonts,
  Bootstrap, Font Awesome, W3C-validator). Die openen in je eigen browser.

NIEUW in v0.8 - toegankelijkheid (beter leesbaar)
-----------------------------------------------
- Veel hoger contrast: labels en tekst nu helder (WCAG AA, ~16:1).
- Grotere tekst in de panelen (labels/invoervelden).
- Menu Beeld > 'Hoog contrast' (aan/uit) maakt alles nog contrastrijker;
  je keuze wordt onthouden. Plus Grotere/Kleinere tekst (A+/A-, Ctrl +/-).

NIEUW in v0.9
------------
- Versienummer in de kop klopt nu (was 'v0.1', volgt nu het echte nummer).

NIEUW in v0.10
-------------
- Starter-sjablonen: Bestand > Nieuw van sjabloon (Landingspagina, Over mij,
  Contactpagina, Leeg) - meteen een startpunt.
- Voorbeeld in browser: Bestand > Voorbeeld in browser (of knop 'In browser')
  opent je pagina in je eigen browser.
- Toegankelijkheid controleren: Beeld > Toegankelijkheid controleren checkt
  je pagina op alt-teksten, koppen, lege links en labels.
- Dubbele statusbalk weg: nog maar 1 balk; meldingen verschijnen als popje.

NIEUW in v0.11
-------------
- 'Voorbeeld in browser' opent nu echt je browser (via een lokaal
  http-adres), niet je .html-editor. Werkt mooi met de losse CSS/PWA.
- Submenu-tekst (Nieuw van sjabloon) wordt niet meer afgekapt.

NIEUW in v0.12
-------------
- FIX 'Voorbeeld in browser' (ERR_EMPTY_RESPONSE): de mini-webserver logde
  naar stderr, die er onder pythonw niet is -> crash. Logging staat nu uit
  en de server verwerkt meerdere verbindingen tegelijk. Werkt nu.

NIEUW in v0.13 - layout/naast elkaar
----------------------------------
- Nieuwe widget 'Rij (naast elkaar)': sleep er knoppen/links/afbeeldingen in
  en ze staan naast elkaar, met ruimte ertussen. Rechts stel je de schikking
  in (links/midden/rechts/gespreid), de verticale uitlijning en de ruimte.
- Knoppen en links hebben nu standaard ruimte (plakken niet meer aan elkaar).
- Slepen in een rij toont een verticale invoeg-streep (i.p.v. horizontaal).
- Bestaande elementen kun je op de pagina verslepen om te herordenen.

NIEUW in v0.14 - licht/donker thema
----------------------------------
- De editor volgt nu automatisch het Windows-thema (licht of donker).
- Nieuwe lege sites krijgen meteen een bijpassende standaardstijl
  (donker in donkere modus, licht in lichte modus).
- Wil je het vastzetten? Beeld -> Thema -> Automatisch (Windows) / Licht /
  Donker. De keuze wordt onthouden.
- Werkt samen met Hoog contrast; beide blijven goed leesbaar (WCAG AA).
- Dit gaat over de editor zelf; bestaande projecten houden hun eigen
  Stijl-instellingen.

NIEUW in v0.15 - menu, labels en formulier-actie
-----------------------------------------------
- Menu (navigatie): nieuwe widget die links/knoppen naast elkaar EN
  gecentreerd zet (een <nav>, ook goed voor schermlezers). Lost op dat
  gecentreerde knoppen anders boven elkaar kwamen.
- Formuliervelden (invoerveld, tekstvak, keuzelijst) zitten nu altijd in
  een <label>, met een bijschrift dat je rechts instelt. Beter voor
  toegankelijkheid (schermlezers koppelen label aan veld).
- Per veld: naam (name=), breedte en 'Verplicht' aanvinken.
- Formulier heeft nu een Actie (waar het naartoe gaat), Methode (POST/GET)
  en 'Openen in' (zelfde/nieuwe tab).

NIEUW in v0.16 - uitlijnen knoppen/links + leesbaarheid
------------------------------------------------------
- Zet je een knop of link op 'midden' of 'rechts', dan worden die (en de
  knoppen/links ernaast) automatisch in een Menu gezet: ze staan dan
  NAAST elkaar EN gecentreerd, in plaats van boven elkaar.
- Zit een knop/link al in een Rij of Menu, dan lijnt 'midden/rechts' de
  hele groep uit (via de schikking).
- Links hebben geen vaste kleur meer; ze volgen nu de themakleur, zodat
  ze ook op een donkere achtergrond goed leesbaar zijn.

NIEUW in v0.17 - leesbaarheid hover + gids
----------------------------------------
- In het lichte thema werd palet-tekst bij hover wit (onleesbaar). Hover
  houdt nu gewoon de leesbare tekstkleur, met een accent-rand.
- Snelgids bijgewerkt: thema (volgt Windows) en het automatisch in een
  Menu zetten van gecentreerde knoppen/links.

NIEUW in v0.18 - taal volgt de computer (NL/EN)
----------------------------------------------
- De hele editor volgt nu automatisch de taal van de computer:
  Nederlands of Engels. Net als de andere Dravenlock-apps.
- Handmatig kiezen kan via Beeld -> Taal: Automatisch (computer) /
  Nederlands / English. De keuze wordt onthouden.
- Vertaald: palet, headerknoppen, eigenschappen-paneel, dialogen,
  statusbalk, toasts, menu's, toolbar en de volledige Snelgids.
- Nederlands blijft de basis: ontbreekt een vertaling, dan toont de app
  gewoon het Nederlands (er gaat dus nooit iets stuk).
- Nog Nederlands: de visuele Stijl-editor (kleurkiezers/presets); die
  volgt in een latere stap.

NIEUW in v0.19 - Stijl-editor ook vertaald
-----------------------------------------
- De visuele Stijl-editor (presets, kleurkiezers, lettertype, achtergrond)
  volgt nu ook de taal. Daarmee is de hele interface NL/EN.

NIEUW in v0.20 - huislogo + welkomstpagina
-----------------------------------------
- Het Dravenlock-draaklogo is nu het venster-/taakbalkpictogram en staat
  in de koptekst (logo.png / logo.ico horen naast de app te staan).
- Welkomstpagina bij het opstarten met korte uitleg wat DraveEdit is,
  inclusief dat de gemaakte sites meteen mobiel-vriendelijk zijn.
  Vink 'Niet meer tonen bij opstarten' aan om 'm over te slaan.
- De welkomstpagina volgt ook de taal (NL/EN).

NIEUW in v0.21
--------------
- Welkomstpagina: de ondertitel en het 'Niet meer tonen'-label staan nu
  in de gewone (donkere/zwarte) tekstkleur in plaats van lichtgrijs -
  beter leesbaar.


BESTANDEN
---------
- Bestand > Opslaan / Openen bewaart je project als .dehtml (bewerkbaar).
- Bestand > Exporteer HTML schrijft een nette, responsieve index.html.
- Bestand > Exporteer PWA (map) schrijft index.html + manifest.json +
  service-worker + icoontjes in een map.
  LET OP: een PWA werkt alleen vanaf een HTTPS-adres (of localhost). Zet de
  map dus op een webserver met https om de app te kunnen installeren.


ALS HET NIET START
------------------
- start-debug.bat : start met een consolevenster zodat je de fout ziet.
  De fout staat ook in draveedit-fout.txt naast het programma.
- herstel.bat : wist de .venv en installeert opnieuw met de juiste Python.


EEN .EXE MAKEN (optioneel)
--------------------------
- bouw-exe.bat : maakt een map dist\DraveEdit met DraveEdit.exe.
  Dit is bewust een MAP-build: QtWebEngine (Chromium) kan niet als een enkel
  bestand draaien. De map is groot maar werkt zonder aparte Python.


CONTACT / DONATIE
-----------------
service@dravenlock.nl
https://paypal.me/roger076

(c) Dravenlock
