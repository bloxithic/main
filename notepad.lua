function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then
            Ms = "Bandit [Lv. 5]"
            QuestName = "BanditQuest1"
            QuestNumber = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Ms = "Monkey [Lv. 14]"
            QuestName = "JungleQuest"
            QuestNumber = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Ms = "Gorilla [Lv. 20]"
            QuestName = "JungleQuest"
            QuestNumber = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Ms = "Pirate [Lv. 35]"
            QuestName = "BuggyQuest1"
            QuestNumber = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Ms = "Brute [Lv. 45]"
            QuestName = "BuggyQuest1"
            QuestNumber = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Ms = "Desert Bandit [Lv. 60]"
            QuestName = "DesertQuest"
            QuestNumber = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Ms = "Desert Officer [Lv. 70]"
            QuestName = "DesertQuest"
            QuestNumber = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Ms = "Snow Bandit [Lv. 90]"
            QuestName = "SnowQuest"
            QuestNumber = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Ms = "Snowman [Lv. 100]"
            QuestName = "SnowQuest"
            QuestNumber = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Ms = "Chief Petty Officer [Lv. 120]"
            QuestName = "MarineQuest2"
            QuestNumber = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Ms = "Sky Bandit [Lv. 150]"
            QuestName = "SkyQuest"
            QuestNumber = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
        elseif MyLevel == 175 or MyLevel <= 224 then
            Ms = "Dark Master [Lv. 175]"
            QuestName = "SkyQuest"
            QuestNumber = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
        elseif MyLevel == 225 or MyLevel <= 274 then
            Ms = "Toga Warrior [Lv. 225]"
            QuestName = "ColosseumQuest"
            QuestNumber = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Ms = "Gladiator [Lv. 275]"
            QuestName = "ColosseumQuest"
            QuestNumber = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309)
        elseif MyLevel == 300 or MyLevel <= 329 then
            Ms = "Military Soldier [Lv. 300]"
            QuestName = "MagmaQuest"
            QuestNumber = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
        elseif MyLevel == 300 or MyLevel <= 374 then
            Ms = "Military Spy [Lv. 330]"
            QuestName = "MagmaQuest"
            QuestNumber = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Ms = "Fishman Warrior [Lv. 375]"
            QuestName = "FishmanQuest"
            QuestNumber = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
        elseif MyLevel == 400 or MyLevel <= 449 then
            Ms = "Fishman Commando [Lv. 400]"
            QuestName = "FishmanQuest"
            QuestNumber = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
        elseif MyLevel == 450 or MyLevel <= 474 then
            Ms = "God's Guard [Lv. 450]"
            QuestName = "SkyExp1Quest"
            QuestNumber = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
        elseif MyLevel == 475 or MyLevel <= 524 then
            Ms = "Shanda [Lv. 475]"
            QuestName = "SkyExp1Quest"
            QuestNumber = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
        elseif MyLevel == 525 or MyLevel <= 549 then
            Ms = "Royal Squad [Lv. 525]"
            QuestName = "SkyExp2Quest"
            QuestNumber = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Ms = "Royal Soldier [Lv. 550]"
            QuestName = "SkyExp2Quest"
            QuestNumber = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Ms = "Galley Pirate [Lv. 625]"
            QuestName = "FountainQuest"
            QuestNumber = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
        elseif MyLevel >= 650 then
            Ms = "Galley Captain [Lv. 650]"
            QuestName = "FountainQuest"
            QuestNumber = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then
            Ms = "Raider [Lv. 700]"
            QuestName = "Area1Quest"
            QuestNumber = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Ms = "Mercenary [Lv. 725]"
            QuestName = "Area1Quest"
            QuestNumber = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936)
        elseif MyLevel == 775 or MyLevel <= 874 then
            Ms = "Swan Pirate [Lv. 775]"
            QuestName = "Area2Quest"
            QuestNumber = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Ms = "Marine Lieutenant [Lv. 875]"
            QuestName = "MarineQuest3"
            QuestNumber = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-2913.26367, 73.0011826)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Ms = "Marine Captain [Lv. 900]"
            QuestName = "MarineQuest3"
            QuestNumber = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Ms = "Zombie [Lv. 950]"
            QuestName = "ZombieQuest"
            QuestNumber = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Ms = "Vampire [Lv. 975]"
            QuestName = "ZombieQuest"
            QuestNumber = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Ms = "Snow Trooper [Lv. 1000]"
            QuestName = "SnowMountainQuest"
            QuestNumber = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Ms = "Winter Warrior [Lv. 1050]"
            QuestName = "SnowMountainQuest"
            QuestNumber = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Ms = "Lab Subordinate [Lv. 1100]"
            QuestName = "IceSideQuest"
            QuestNumber = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Ms = "Horned Warrior [Lv. 1125]"
            QuestName = "IceSideQuest"
            QuestNumber = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Ms = "Magma Ninja [Lv. 1175]"
            QuestName = "FireSideQuest"
            QuestNumber = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
        elseif MyLevel == 1200 or MyLevel <= 1349 then
            Ms = "Lava Pirate [Lv. 1200]"
            QuestName = "FireSideQuest"
            QuestNumber = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Ms = "Arctic Warrior [Lv. 1350]"
            QuestName = "FrostQuest"
            QuestNumber = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314)
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Ms = "Snow Lurker [Lv. 1375]"
            QuestName = "FrostQuest"
            QuestNumber = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Ms = "Sea Soldier [Lv. 1425]"
            QuestName = "ForgottenQuest"
            QuestNumber = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
        elseif MyLevel >= 1450 then
            Ms = "Water Fighter [Lv. 1450]"
            QuestName = "ForgottenQuest"
            QuestNumber = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
        end
    end
    if ThreeWorld then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            QuestName = "PiratePortQuest"
            QuestNumber = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            QuestName = "PiratePortQuest"
            QuestNumber = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            QuestName = "AmazonQuest"
            QuestNumber = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            QuestName = "AmazonQuest"
            QuestNumber = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            QuestName = "AmazonQuest2"
            QuestNumber = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(5825.2241210938, 682.89245605469, 704.57958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            QuestName = "AmazonQuest2"
            QuestNumber = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            QuestName = "MarineTreeIsland"
            QuestNumber = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            QuestName = "MarineTreeIsland"
            QuestNumber = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Ms = "Fishman Raider [Lv. 1775]"
            QuestName = "DeepForestIsland3"
            QuestNumber = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            QuestName = "DeepForestIsland3"
            QuestNumber = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            QuestName = "DeepForestIsland"
            QuestNumber = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            QuestName = "DeepForestIsland"
            QuestNumber = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            QuestName = "DeepForestIsland2"
            QuestNumber = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            QuestName = "DeepForestIsland2"
            QuestNumber = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            QuestName = "HauntedQuest1"
            QuestNumber = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            QuestName = "HauntedQuest1"
            QuestNumber = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Ms = "Demonic Soul [Lv. 2025]"
            QuestName = "HauntedQuest2"
            QuestNumber = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Ms = "Posessed Mummy [Lv. 2050]"
            QuestName = "HauntedQuest2"
            QuestNumber = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Ms = "Peanut Scout [Lv. 2075]"
            QuestName = "NutsIslandQuest"
            QuestNumber = 1
            NameMon = "Peanut Scout"
            CFrameQuest =
                CFrame.new(
                -2104.35669,
                38.1299706,
                -10194.0654,
                0.777809024,
                -4.20693302e-09,
                0.62850064,
                1.93921803e-08,
                1,
                -1.73054406e-08,
                -0.62850064,
                2.56483261e-08,
                0.777809024
            )
            CFrameMon =
                CFrame.new(
                -2126.40723,
                90.5567474,
                -10301.9639,
                -0.835617959,
                5.5450208e-08,
                -0.549311042,
                -1.3585427e-08,
                1,
                1.21611308e-07,
                0.549311042,
                1.09083217e-07,
                -0.835617959
            )
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Ms = "Peanut President [Lv. 2100]"
            QuestName = "NutsIslandQuest"
            QuestNumber = 2
            NameMon = "Peanut President"
            CFrameQuest =
                CFrame.new(
                -2104.35669,
                38.1299706,
                -10194.0654,
                0.777809024,
                -4.20693302e-09,
                0.62850064,
                1.93921803e-08,
                1,
                -1.73054406e-08,
                -0.62850064,
                2.56483261e-08,
                0.777809024
            )
            CFrameMon =
                CFrame.new(
                -2118.75439,
                70.3045197,
                -10509.3223,
                0.585819364,
                1.20945716e-08,
                -0.810441673,
                7.93158179e-08,
                1,
                7.225605e-08,
                0.810441673,
                -1.06609832e-07,
                0.585819364
            )
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Ms = "Ice Cream Chef [Lv. 2125]"
            QuestName = "IceCreamIslandQuest"
            QuestNumber = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest =
                CFrame.new(
                -820.218994,
                65.8453293,
                -10966.1689,
                0.802985847,
                8.21155055e-08,
                -0.595998108,
                -5.4771629e-08,
                1,
                6.39845297e-08,
                0.595998108,
                -1.87348856e-08,
                0.802985847
            )
            CFrameMon =
                CFrame.new(
                -685.287781,
                96.3186417,
                -10957.5898,
                -0.859360993,
                -6.76117935e-08,
                0.511369407,
                -7.04737957e-08,
                1,
                1.37852645e-08,
                -0.511369407,
                -2.41916265e-08,
                -0.859360993
            )
        elseif MyLevel >= 2150 then
            Ms = "Ice Cream Commander [Lv. 2150]"
            QuestName = "IceCreamIslandQuest"
            QuestNumber = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest =
                CFrame.new(
                -820.218994,
                65.8453293,
                -10966.1689,
                0.802985847,
                8.21155055e-08,
                -0.595998108,
                -5.4771629e-08,
                1,
                6.39845297e-08,
                0.595998108,
                -1.87348856e-08,
                0.802985847
            )
            CFrameMon =
                CFrame.new(
                -635.736145,
                143.049561,
                -11335.2236,
                -0.901281416,
                2.6901164e-08,
                0.433234096,
                -1.9257731e-09,
                1,
                -6.61001209e-08,
                -0.433234096,
                -6.04091213e-08,
                -0.901281416
            )
        end
    end
end

CheckQuest()
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
