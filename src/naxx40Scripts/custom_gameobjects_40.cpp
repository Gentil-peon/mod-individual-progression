#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "naxxramas.h"

class gobject_naxx40_tele : public GameObjectScript
{
private:
    static bool isAttuned(Player* player)
    {
        if (player->IsGameMaster() || sIndividualProgression->isExcludedFromProgression(player))
            return true;
        if (player->GetQuestStatus(NAXX40_ATTUNEMENT_1) == QUEST_STATUS_REWARDED)
            return true;
        if (player->GetQuestStatus(NAXX40_ATTUNEMENT_2) == QUEST_STATUS_REWARDED)
            return true;
        if (player->GetQuestStatus(NAXX40_ATTUNEMENT_3) == QUEST_STATUS_REWARDED)
            return true;
        return false;
    }

public:
    gobject_naxx40_tele() : GameObjectScript("gobject_naxx40_tele") { }

    struct gobject_naxx40_teleAI: GameObjectAI
    {
        explicit gobject_naxx40_teleAI(GameObject* object) : GameObjectAI(object) { };

    };

    GameObjectAI* GetAI(GameObject* object) const override
    {
        return new gobject_naxx40_teleAI(object);
    }

    bool OnGossipHello(Player* player, GameObject* /*go*/) override
    {
        if(player->GetRaidDifficulty() == RAID_DIFFICULTY_10MAN_HEROIC)
        {
            player->SetRaidDifficulty(RAID_DIFFICULTY_25MAN_HEROIC); // quick hack #ZhengPeiRu21/mod-individual-progression/issues/359
            player->SendRaidDifficulty(true, RAID_DIFFICULTY_25MAN_HEROIC); // quick hack #ZhengPeiRu21/mod-individual-progression/issues/359

            player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
            player->SendRaidDifficulty(true, RAID_DIFFICULTY_10MAN_HEROIC);

            if ((!sIndividualProgression->requireNaxxStrath || player->GetQuestStatus(NAXX40_ENTRANCE_FLAG) == QUEST_STATUS_REWARDED) 
                && isAttuned(player) 
                && player->GetGroup() && player->GetGroup()->isRaidGroup() && player->GetGroup()->GetLeader()->GetLevel() < 80)
            {
                player->TeleportTo(533, 3006.05f, -3466.81f, 298.219f, 4.6824f);
                return true;
            }
            else
                return false;
        }
        else
        {
            if (player->GetGroup() && player->GetGroup()->isRaidGroup() && player->GetGroup()->GetLeader()->GetLevel() < 80)
            {
                player->SetRaidDifficulty(RAID_DIFFICULTY_25MAN_HEROIC); // quick hack #ZhengPeiRu21/mod-individual-progression/issues/359
                player->SendRaidDifficulty(true, RAID_DIFFICULTY_25MAN_HEROIC); // quick hack #ZhengPeiRu21/mod-individual-progression/issues/359

                player->SetRaidDifficulty(RAID_DIFFICULTY_10MAN_HEROIC);
                player->SendRaidDifficulty(true, RAID_DIFFICULTY_10MAN_HEROIC);
            }
            return false;
        }
    }
};

void AddSC_custom_gameobjects_40()
{
    new gobject_naxx40_tele();
}
