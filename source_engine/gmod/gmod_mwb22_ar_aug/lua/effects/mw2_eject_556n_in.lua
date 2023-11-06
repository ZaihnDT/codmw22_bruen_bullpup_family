AddCSLuaFile()

EFFECT.Model = Model("models/zaihny/mw22/casings/556n_in.mdl")
EFFECT.Scale = 0.7
EFFECT.Force = 100
EFFECT.Offset = Vector()
EFFECT.Sounds = {
    Default = Sound("MW_Casings.556.cement"),
    Water = Sound("MW_Casings.556.water"),
    [MAT_DIRT] = Sound("MW_Casings.556.dirt"),
    [MAT_GLASS] = Sound("MW_Casings.556.glass"),
    [MAT_TILE] = Sound("MW_Casings.556.glass"),
    [MAT_GRASS] = Sound("MW_Casings.556.grass"),
    [MAT_FOLIAGE] = Sound("MW_Casings.556.grass"),
    [MAT_SLOSH] = Sound("MW_Casings.556.mud"),
    [MAT_FLESH] = Sound("MW_Casings.556.mud"),
    [MAT_BLOODYFLESH] = Sound("MW_Casings.556.mud"),
    [MAT_ALIENFLESH] = Sound("MW_Casings.556.mud"),
    [MAT_EGGSHELL] = Sound("MW_Casings.556.mud"),
    [MAT_METAL] = Sound("MW_Casings.556.metal"), 
    [MAT_COMPUTER] = Sound("MW_Casings.556.metal"),
    [MAT_GRATE] = Sound("MW_Casings.556.metal"), 
    [MAT_SAND] = Sound("MW_Casings.556.sand"), 
    [MAT_SNOW] = Sound("MW_Casings.556.sand"),
    [MAT_VENT] = Sound("MW_Casings.556.metal"),
    [MAT_WOOD] = Sound("MW_Casings.556.wood_hollow")
}
    
include("mwb_shelleject.lua")           