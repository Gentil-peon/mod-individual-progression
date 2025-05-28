/*  
    This will phase WotLK npcs & objects until they were originally added to the game.
*/

/* 3.3 */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_icc' 
WHERE `map` = 571 AND `id1` IN (
36624, -- Caladis Brightspear, Icecrown
36642, -- Myralion Sunblaze, Icecrown
36656, -- Silver Covenant Sentinel, Icecrown
36657, -- Sunreaver War Mage, Icecrown
37742, -- Drugan Deepdraught, Icecrown
37965, -- Argent Commander, Icecrown
37967, -- Ebon Blade Commander, Icecrown
37968 -- Argent Hippogryph, Icecrown
);

UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_wotlk_icc' 
WHERE `map` = 571 AND `id` IN (
195695,
202184,
202218
);
