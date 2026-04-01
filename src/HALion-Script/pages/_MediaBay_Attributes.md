/* ANCHOR: all */
The following attributes are stored in VST presets and allow for browsing them in MediaBay. They can be written with [savePreset](./savePreset.md) and [setMediaBayAttributes](./setMediaBayAttributes.md).

// ANCHOR: setMediaBayAttributes
// ANCHOR: savePreset_attributes
|Attribute|Value|Value Type|
|:-|:-|:-|
|MediaAuthor|"Author"|string|
|MediaComment|"Comment"|string|
|MediaKeywords|"Keywords"|string|
|MediaLibraryManufacturerName|"ManufacturerName"|string|
|MediaLibraryName|"LibraryName"|string|
|MediaRating|"Number", 1 to 5 stars.|string|
|MusicalArticulations|"Articulation1\|Articulation2\|..."|string|
|MusicalCategory|"Category"|string|
|MusicalGmSound|"Number", the GM program number. |string|
|MusicalInstrument|"Category\|Subcategory"|string|
|MusicalMoods|"Mood1\|Mood2\|..."|string|
|MusicalProperties|"Property1\|Property2\|..."|string|
|MusicalRootKey|"RootKey"|string|
|MusicalSignature|"4/4"|string|
|MusicalStyle|"Style"|string|
|MusicalSubStyle|"Style\|Substyle"|string|
|MusicalTempo|"Number", the tempo in BPM.|string|
// ANCHOR_END: savePreset_attributes

The following attributes can only be written with [setMediaBayAttributes](./setMediaBayAttributes.md). They are needed for audio files that come with Cubase, such as loop sets. VST presets must not use them.

// ANCHOR: setMediaBayAttributes_attributes
|Attribute|Value|Value Type|
|:-|:-|:-|
|MediaGenre|"Genre"|string|
|MusicalBeats|"Number of beats."|number|
|MusicalCharacter|"Character1\|Character2\|..."|string|
// ANCHOR_END: setMediaBayAttributes_attributes
// ANCHOR_END: setMediaBayAttributes

// ANCHOR: savePreset_arguments
The following attributes are written exclusively with the arguments of [savePreset](./savePreset.md). [setMediaBayAttributes](./setMediaBayAttributes.md) cannot be used to set them.

|Attribute|Value|Value Type|
|:-|:-|:-|
|PlugInName|"Name", set with the ``plugin`` argument of [savePreset](./savePreset.md).|string|
|VST3UnitTypePath|"program" or "program/layer", set with the ``attr`` argument of [savePreset](./savePreset.md).|string|
// ANCHOR_END: savePreset_arguments
/* ANCHOR_END: all */
