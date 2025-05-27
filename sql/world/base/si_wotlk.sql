/*-- SCOURCE INVASION - WotLK additions --*/

DELETE FROM `gameobject` WHERE `id` IN (190610); -- Orders from the Lich King
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`, `ScriptName`) 
VALUES (660610, 190610, 532, 0, 0, 1, 1, -11083.367, -1972.86, 77.576, 3.11328, 0, 0, 0, 0, 120, 100, 1, 0, 'gobject_ipp_si');

UPDATE `creature` SET `phaseMask` = 65536 WHERE `id1` = 28194; -- Prince Tenris Mirkblood, @IPPPHASE 65536
