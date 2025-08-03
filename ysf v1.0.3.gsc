// Made by unboundsprx - First .gsc mod for Black Ops II
// High risk of ban - use in offline or private custom games only
// 2147483647 = Max 32-bit signed integer

#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/gametypes/_hud;
#include maps/mp/gametypes/_hud_util;
#include maps/mp/gametypes/_hud_message;
#include maps/mp/gametypes/_globallogic;
#include maps/mp/_ambientpackage;
#include maps/mp/teams/_teams;
#include maps/mp/killstreaks/_ai_tank;
#include maps/mp/killstreaks/_remotemissile;
#include maps/mp/killstreaks/_killstreaks;
#include maps/mp/gametypes/_weapons;
#include maps/mp/killstreaks/_turret_killstreak;
#include maps/mp/killstreaks/_supplydrop;

init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for (;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");

    for (;;)
    {
        self waittill("spawned_player");

        // Create Main Menu
        self add_menu("AllPlayersMenu", level.menuname, "Verified");
        self add_option("AllPlayersMenu", "All -> Me", ::AllToMe);
        self add_option("AllPlayersMenu", "All -> Crosshairs", ::teleToCrosshairs);
        self add_option("AllPlayersMenu", "Kill All", ::AllPlayersKilled);
        self add_option("AllPlayersMenu", "KICK ALL", ::AllPlayersKick);
        self add_option("AllPlayersMenu", "Adventure Time", ::AllPlayersAdventure);
        self add_option("AllPlayersMenu", "Godmode", ::godmodeall);
        self add_option("AllPlayersMenu", "Achievements", ::AllPlayersAchievements);

        // Camos Submenu
        self add_menu("AllPlayersMenuv4", "AllPlayersMenu", "Camos");
        self add_option("AllPlayersMenu", "^5-->CAMOS", ::submenu, "AllPlayersMenuv4", "Camos");

        self add_option("AllPlayersMenuv4", "^1None", ::togglecamoall, 0);
        wait 2.5; self add_option("AllPlayersMenuv4", "^6Disco Camo^7", ::discocamoall);
        wait 2.5; self add_option("AllPlayersMenuv4", "Diamond", ::togglecamoall, 16);
        wait 2.5; self add_option("AllPlayersMenuv4", "Ghosts", ::togglecamoall, 29);
        wait 2.5; self add_option("AllPlayersMenuv4", "Afterlife", ::togglecamoall, 44);
        wait 2.5; self add_option("AllPlayersMenuv4", "Party Rock", ::togglecamoall, 25);
        wait 2.5; self add_option("AllPlayersMenuv4", "Art of War", ::togglecamoall, 12);
        wait 2.5; self add_option("AllPlayersMenuv4", "Benjamins", ::togglecamoall, 21);
        wait 2.5; self add_option("AllPlayersMenuv4", "DEVGRU", ::togglecamoall, 1);
        wait 2.5; self add_option("AllPlayersMenuv4", "A-TACS AU", ::togglecamoall, 2);
        wait 2.5; self add_option("AllPlayersMenuv4", "ERDL", ::togglecamoall, 3);
        wait 2.5; self add_option("AllPlayersMenuv4", "Siberia", ::togglecamoall, 4);
        wait 2.5; self add_option("AllPlayersMenuv4", "Blue Tiger", ::togglecamoall, 6);
        wait 2.5; self add_option("AllPlayersMenuv4", "Bloodshot", ::togglecamoall, 7);
        wait 2.5; self add_option("AllPlayersMenuv4", "Delta 6", ::togglecamoall, 8);
        wait 2.5; self add_option("AllPlayersMenuv4", "Weaponized 115", ::togglecamoall, 10);
        wait 2.5; self add_option("AllPlayersMenuv4", "Gold", ::togglecamoall, 11);
        wait 2.5; self add_option("AllPlayersMenuv4", "Carbon Fiber", ::togglecamoall, 15);
        wait 2.5; self add_option("AllPlayersMenuv4", "Typhon", ::togglecamoall, 17);
        wait 2.5; self add_option("AllPlayersMenuv4", "Cherry Blossom", ::togglecamoall, 26);
        wait 2.5; self add_option("AllPlayersMenuv4", "Ronin", ::togglecamoall, 40);
        wait 2.5; self add_option("AllPlayersMenuv4", "Skulls", ::togglecamoall, 41);
        wait 2.5; self add_option("AllPlayersMenuv4", "Choco", ::togglecamoall, 42);

        // Open menu with crouch
        self thread monitorOpenMenu();
        self notifyOnPlayerCommand("open_menu", "button_crouch");

        // Display title
        iprintlnbold("UNBOUND");

        // Maxed Stats
        self setPlayerData("experience", 2147483647);
        self setPlayerData("rank", 55);
        self setPlayerData("prestige", 11);
        self setPlayerData("kills", 2147483647);
        self setPlayerData("assists", 10000);
        self setPlayerData("deaths", 67);
        self setPlayerData("wins", 2147483647);
        self setPlayerData("losses", 0);

        // Optional Stats
        self setPlayerData("customClasses", 10);
        self setPlayerData("hasPrestiged", 1);
        self setPlayerData("prestigeTokens", 100);
        self setPlayerData("score", 2147483647);
        self setPlayerData("timePlayedTotal", 2147483647);

        // 🎮 Set clan tag to R3 icon
        self setClientDvar("clanName", "^7");
    }
}
