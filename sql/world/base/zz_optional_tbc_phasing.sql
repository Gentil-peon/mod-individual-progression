/*  
    This will phase TBC npcs & objects placed in Outland & Quel'Danas areas until they were originally added to the game.
*/

/* 2.3 */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_t4' 
WHERE `map` = 530 AND `id1` IN (
23559, -- Budd Nedreck, Ghostlands
23565, -- Turgore, Ghostlands
23705, -- Catlord Corpse, Ghostlands
23716, -- Hexxer Corpse, Ghostlands
23718, -- Mack, Ghostlands
23724, -- Samir, Ghostlands
23747, -- Packhorse, Ghostlands
23748, -- Kurzel, Ghostlands
23761, -- Prigmon, Ghostlands
23762, -- Brend, Ghostlands
23764, -- Marge, Ghostlands
23766, -- Morgom, Ghostlands
25145 -- Budd's Bodyguard, Ghostlands
);

UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc_t4' 
WHERE `map` = 530 AND `id` IN (
186251, -- Meeting Stone, Ghostlands
186280, -- Orcish Grog, Ghostlands
186285, -- Zul'Aman Fire Med, Ghostlands
186286, -- Zul'Aman Fire Large, Ghostlands
186302, -- Case of Orcish Grog, Ghostlands
186323 -- Burning Troll Hut, Ghostlands
);

/* 2.4 */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_t5' 
WHERE `map` = 530 AND `id1` IN (
19202, -- Emissary Mordin, Shattrath
19475, -- Harbinger Haronem, Shattrath
24813, -- Exarch Larethor, Isle of Quel Danas
24923, -- Shattered Sun Channeler, Shattrath
24937, -- Magistrix Seyla, Hellfire Peninsula
24938, -- Shattered Sun Marksman, Shattrath + Isle of Quel Danas
25032, -- Eldara Dawnrunner, Isle of Quel Danas
25034, -- Tradesman Portanuus, Isle of Quel Danas
25088, -- Captain Valindria, Isle of Quel Danas
25115, -- Shattered Sun Warrior, Shattrath + Isle of Quel Danas
25133, -- Astromancer Darnarian, Isle of Quel Danas
25134, -- Shattered Sun Trainee, Shattrath
25135, -- Shattered Sun Trainee, Shattrath
25136, -- Shattered Sun Trainee, Shattrath
25137, -- Shattered Sun Trainee, Shattrath
25138, -- Captain Dranarus, Shattrath
25140, -- Lord Torvos, Shattrath
25141, -- Commander Steele, Shattrath
25142, -- Shattered Sun Marksman, Shattrath
25143, -- Shattered Sun Veteran, Shattrath
25153, -- Shattered Sun Magi, Shattrath
25155, -- Shattered Sun Cleric, Shattrath
25167, -- General Tiras'alan, Shattrath
25885, -- Whirligig Wafflefry, Shattrath
26560, -- Ohura, Isle of Quel Danas
27666, -- Ontuvo, Shattrath
27667, -- Anwehu, Shattrath
37527 -- Halduron Brightwing, Isle of Quel Danas
);

UPDATE `creature` SET `ScriptName` = 'npc_suns_reach_reclamation_ipp_tbc_t5' 
WHERE `map` = 530 AND `id1` IN (
24932, -- Exarch Nasuun, Shattrath
24965, -- Vindicator Xayann, Isle of Quel Danas
24967, -- Captain Theris Dawnhearth, Isle of Quel Danas
24975, -- Mar nah, Isle of Quel Danas
25046, -- Smith Hauthaa, Isle of Quel Danas
25057, -- Battlemage Arynna, Isle of Quel Danas
25061, -- Harbinger Inuuro, Isle of Quel Danas
25069, -- Magister Ilastar, Isle of Quel Danas
25108, -- Vindicator Kaalan, Isle of Quel Danas
25112 -- Anchorite Ayuri, Isle of Quel Danas
);

UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc_t5' 
WHERE `map` = 530 AND `id` IN (
187056, -- Shattrath Portal to Isle of Quel Danas, Shattrath
187116, -- Monument to the Fallen, Isle of Quel Danas
187345, -- Sunwell Plateau, Shattrath + Isle of Quel Danas
188171, -- Meeting Stone, Isle of Quel Danas
188172 -- Meeting Stone, Isle of Quel Danas
);
