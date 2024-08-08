local GunStorage = {}
GunStorage.ListOfGunsMedium = {
	["M4A1"] = {
		GunType = "medium",
		BulletsPerShot = 2,
		NumberOfShots = 1,
		BulletDmg = 40,
		EffectiveRng = {3,10},
		Accuracy = {80, 70, 30}, -- {80% (3-7), 70% (1-3 and 7-13), 20% (14+)}
		Specials = "+5% reload speed for 2 rounds"
	},
	["AK-47"] = {
		GunType = "medium",
		BulletsPerShot = 4,
		NumberOfShots = 1,
		BulletDmg = 23,
		EffectiveRng = {3,10},
		Accuracy = {80, 75, 20}, -- {80% (3-7), 50% (1-3 and 7-13), 20% (14+)}
		Specials = "+5% damage for 2 rounds but +10% recoil"
	},
	["FAMAS"] = {
		GunType = "medium",
		BulletsPerShot = 3,
		NumberOfShots = 1,
		BulletDmg = 35,
		EffectiveRng = {3,10},
		Accuracy = {85, 75, 25}, -- {85% (3-7), 55% (1-3 and 7-13), 25% (14+)}
		Specials = "+10% fire rate for 2 rounds"
	},
	["HK416"] = {
		GunType = "medium",
		BulletsPerShot = 2,
		NumberOfShots = 1,
		BulletDmg = 42,
		EffectiveRng = {3,10},
		Accuracy = {82, 72, 22}, -- {82% (3-7), 52% (1-3 and 7-13), 22% (14+)}
		Specials = "-5% enemy accuracy for 2 rounds"
	},
	["G36C"] = {
		GunType = "medium",
		BulletsPerShot = 2,
		NumberOfShots = 1,
		BulletDmg = 40,
		EffectiveRng = {3,10},
		Accuracy = {83, 73, 23}, -- {83% (3-7), 53% (1-3 and 7-13), 23% (14+)}
		Specials = "+5% movement speed for 2 rounds"
	},
	["AUG A3"] = {
		GunType = "medium",
		BulletsPerShot = 3,
		NumberOfShots = 1,
		BulletDmg = 38,
		EffectiveRng = {3,10},
		Accuracy = {84, 74, 24}, -- {84% (3-7), 54% (1-3 and 7-13), 24% (14+)}
		Specials = "+5% damage reduction for 2 rounds"
	},
	["Steyr AUG"] = {
		GunType = "medium",
		BulletsPerShot = 2,
		NumberOfShots = 1,
		BulletDmg = 44,
		EffectiveRng = {3,10},
		Accuracy = {85, 75, 25}, -- {85% (3-7), 55% (1-3 and 7-13), 25% (14+)}
		Specials = "+10% critical hit chance for 2 rounds"
	}
}
GunStorage.ListOfGunsShort = {
	["Glock 19"] = {
		GunType = "short",
		BulletsPerShot = 2,
		NumberOfShots = 1,
		BulletDmg = 25,
		EffectiveRng = "1-5",
		Accuracy = {90, 60, 50}, -- {90% (1-5), 60% (6-9), 30% (10+)}
		Specials = "+10% movement speed for 2 rounds"
	},
	["MP5"] = {
		GunType = "short",
		BulletsPerShot = 3,
		NumberOfShots = 1,
		BulletDmg = 20,
		EffectiveRng = "1-5",
		Accuracy = {90, 70, 40}, -- {90% (1-5), 60% (6-9), 30% (10+)}
		Specials = "-10% enemy accuracy for 1 round"
	},
	["Uzi"] = {
		GunType = "short",
		BulletsPerShot = 4,
		NumberOfShots = 1,
		BulletDmg = 22,
		EffectiveRng = "1-5",
		Accuracy = {90, 65, 35}, -- {90% (1-5), 65% (6-9), 35% (10+)}
		Specials = "+10% reload speed for 2 rounds"
	},
	["Remington 870"] = {
		GunType = "short",
		BulletsPerShot = 8,
		NumberOfShots = 1,
		BulletDmg = 15,
		EffectiveRng = "1-5",
		Accuracy = {95, 65, 35}, -- {95% (1-5), 65% (6-9), 35% (10+)}
		Specials = "+10% knockback to enemies for 1 round"
	},
	["Saiga-12"] = {
		GunType = "short",
		BulletsPerShot = 7,
		NumberOfShots = 1,
		BulletDmg = 18,
		EffectiveRng = "1-5",
		Accuracy = {90, 60, 30}, -- {90% (1-5), 60% (6-9), 30% (10+)}
		Specials = "+5% damage for 2 rounds but +10% recoil"
	},
	["P90"] = {
		GunType = "short",
		BulletsPerShot = 4,
		NumberOfShots = 1,
		BulletDmg = 22,
		EffectiveRng = "1-5",
		Accuracy = {90, 75, 55}, -- {85% (1-5), 55% (6-9), 25% (10+)}
		Specials = "+5% movement speed for 2 rounds"
	},
	["SPAS-12"] = {
		GunType = "short",
		BulletsPerShot = 9,
		NumberOfShots = 1,
		BulletDmg = 20,
		EffectiveRng = "1-5",
		Accuracy = {95, 65, 35}, -- {95% (1-5), 65% (6-9), 35% (10+)}
		Specials = "+10% critical hit chance for 1 round"
	}
}
GunStorage.ListOfGunsLong = {
	
	["Dragunov SVD"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 75,
		EffectiveRng = "9-15",
		Accuracy = {95, 90, 80}, -- {95% (9-15), 90% (6-9), 80% (16+)}
		Specials = "+5% reload speed for 2 rounds"
	},
	["M110 SASS"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 70,
		EffectiveRng = "8-14",
		Accuracy = {92, 87, 80}, -- {92% (8-14), 87% (5-8), 80% (15+)}
		Specials = "+5% movement speed for 2 rounds"
	},
	["SR-25"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 78,
		EffectiveRng = "9-15",
		Accuracy = {94, 89, 85}, -- {94% (9-15), 89% (6-9), 85% (16+)}
		Specials = "-5% enemy accuracy for 2 rounds"
	},
	["M24 Sniper Rifle"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 80,
		EffectiveRng = "10-15",
		Accuracy = {99, 95, 85}, -- {99% (10-15), 95% (7-10), 85% (16+)}
		Specials = "+10% critical hit chance for 1 round"
	},
	["L115A3"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 85,
		EffectiveRng = "10-15",
		Accuracy = {97, 93, 87}, -- {97% (10-15), 93% (7-10), 87% (16+)}
		Specials = "+5% damage for 2 rounds"
	},
	["AWM"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 90,
		EffectiveRng = "10-15",
		Accuracy = {98, 94, 88}, -- {98% (10-15), 94% (7-10), 88% (16+)}
		Specials = "+5% critical hit chance for 2 rounds"
	},
	["Barrett M82"] = {
		GunType = "long",
		BulletsPerShot = 1,
		NumberOfShots = 1,
		BulletDmg = 100,
		EffectiveRng = "12-15",
		Accuracy = {99, 95, 90}, -- {99% (12-15), 95% (9-12), 90% (16+)}
		Specials = "Penetrates through cover, dealing 50% damage to enemies behind the first target"
	}
	
}
return GunStorage
