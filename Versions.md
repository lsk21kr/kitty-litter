# Version History
## v1.0 (2023-07-19)
* Added
  * Cats and ocelots excrete when on a sand block
  * After a delay, the sand block turns into a suspicious sand block
  * Cats leave faecal matter (brown dye) in the suspicious sand
  * Ocelots in jungle biome leave cocoa bin in the suspicious sand by chance, otherwise leave faecal matter
  * If the bottom block changes while excretion, it will fail and give angry particle.
  * Cats/ocelots with NoAI set are ignored, unless <u>guris.kittylitter</u> tag is given.
  * Settings menu to configure following settings (<u>/function guris:kittylitter/settings</u>)
    * Toggle for shivering when in urge for excretion
    * Time it takes between excretion for cats and ocelots respectively. Default is 24000 ticks (20 minutes)
    * Time it takes to excrete for cats and ocelots respectively. Default is 100 ticks (5 seconds)

## v1.1 (2023-07-19)
* Fixed
  * Changed check order for bottom block. Cat/ocelots will now excrete well.