 //made by unboundsprx, first .gsc made for black ops II
//High chance of banned. use in offline games, use in online custom for unlocking.
//2147483647 = bit integer
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
self add_menu("AllPlayersMenu", level.menuname, "Verified");
		self add_option("AllPlayersMenu", "All -> Me", ::AllToMe);
		self add_option("AllPlayersMenu", "All -> Crosshairs", ::teleToCrosshairs);
		self add_option("AllPlayersMenu", "Kill All", ::AllPlayersKilled);
		self add_option("AllPlayersMenu", "KICK ALL", ::AllPlayersKick);
		self add_option("AllPlayersMenu", "Adventure Time", ::AllPlayersAdventure);
		self add_option("AllPlayersMenu", "Godmode", ::godmodeall);
		self add_option("AllPlayersMenu", "Achievements", ::AllPlayersAchievements);
		self add_menu("AllPlayersMenuv4", "AllPlayersMenu", "Verified");
		self add_option("AllPlayersMenu", "^5-->CAMOS", ::submenu, "AllPlayersMenuv4", "Camos");
		self add_option("AllPlayersMenuv4", "^1None", ::togglecamoall, 0);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "^6Disco Camo^7", ::discocamoall);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Diamond", ::togglecamoall, 16);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Ghosts", ::togglecamoall, 29);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Afterlife", ::togglecamoall, 44);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Party Rock", ::togglecamoall, 25);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Art of War", ::togglecamoall, 12);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Benjamins", ::togglecamoall, 21);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "DEVGRU", ::togglecamoall, 1);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "A-TACS AU", ::togglecamoall, 2);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "ERDL", ::togglecamoall, 3);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Siberia", ::togglecamoall, 4);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Choco", ::togglecamoall, 5);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Blue Tiger", ::togglecamoall, 6);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Bloodshot", ::togglecamoall, 7);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Delta 6", ::togglecamoall, 8); 
		wait 2.5s)
		(then self add_option("AllplayersMenuv4", "Weaponized 115", ::togglecamoall, 1);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Gold", ::togglecamoall, 2);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Carbon Fiber", ::togglecamoall, 3);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Typhon", ::togglecamoall, 4);
		wait 2.5)
		(then self add_option("AllPlayersMenuv4", "Cherry Blossom", ::togglecamoall, 5);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Ronin", ::togglecamoall, 6);
		wait 2.5s)
		(then self add_option("AllPlayersMenuv4", "Skulls", ::togglecamoall, 7);
		self thread monitorOpenMenu();
self notifyOnPlayerCommand("open_menu", "button_crouch");
iprintlnbold("UNBOUND")
self setPlayerData( "experience", 2147483647 ); // Max XP voor level 55
self setPlayerData( "rank", 55);   // Level 55
self setPlayerData( "prestige", 2147483647 );       // Prestige 11 (0 = geen prestige)
self setPlayerData( "kills", 2147483647); //20k kills for the player
self setPlayerData( "assists", 10000); //10k assists for the player 
self setPlayerData( "deaths", 67); //67 so tuff boi
self setPlayerData( "wins", 2147483647); //no wins pls ahh
self setPlayerData( "losses", 0); //nullus ahh 
//================================
//optioneel
//================================
self setPlayerData( "customClasses", 10 );  //optioneel
self setPlayerData( "hasPrestiged", 1 ); //optioneel
self setPlayerData( "prestigeTokens", 100) //optioneel
self setPlayerData( "score", 2147483647) //optioneel ofc
self setPlayerData( "timePlayedTotal", 2147483647)	//32 bit integer  

