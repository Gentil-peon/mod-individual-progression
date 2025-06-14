/* Drop chance for Pristine Tigress Fang was incorrectly set to 100 - updated to 10 */
UPDATE `creature_loot_template` SET `Chance` = 10 WHERE `Item` = 3839;

/* Drop chance for Aged Gorilla Sinew was incorrectly set to 10 - updated to 4 */
UPDATE `creature_loot_template` SET `Chance` = 4 WHERE `Item` = 3862;

/* Drop chance for Jungle Stalker Feather was incorrectly set to 80 - updated to 25 */
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3863;

/* Landro for TCG promotion in Booty Bay */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_aq' WHERE `entry` = 17249;

/* Landro Hired Bodyguard in Booty Bay */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` = 21045;
