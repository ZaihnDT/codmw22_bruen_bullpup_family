ATTACHMENT.Base = "att_receiver"
ATTACHMENT.Name = "STB 556"
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_ar_augolf_receiver.vmt")
ATTACHMENT.CosmeticChange = true
ATTACHMENT.ExcludedCategories = {"Rails"}
ATTACHMENT.ExcludedAttachments =  {"attachment_vm_sm_augolf_lmgrail", "attachment_vm_sm_augolf_mag", "attachment_vm_sm_augolf_drummag", "attachment_vm_sm_augolf_smg_xmag",
    "attachment_vm_sm_augolf_armag", "attachment_vm_sm_augolf_stock_tactical", "attachment_vm_sm_augolf_stockl", "attachment_vm_sm_augolf_stocks", 
 "attachment_vm_sm_augolf_smgbarrel", "attachment_vm_sm_augolf_lmgbarrel", "attachment_vm_sm_augolf_arbarrel"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetWorldModel("models/zaihny/mw22/weapons/w_augolf.mdl")
    weapon:SetViewModel("models/zaihny/mw22/weapons/v_augolf.mdl")
    weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.25)
end

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
if (weapon.SoundOverrides == nil) then
  weapon.SoundOverrides = {}
end

weapon.SoundOverrides["wfoly_plr_sm_augolf_raise_01"] = Sound("mwii.augolf.raise")
weapon.SoundOverrides["wfoly_plr_sm_augolf_drop_01"] = Sound("mwii.augolf.drop")
weapon.SoundOverrides["wfoly_plr_sm_augolf_drop_quick_01"] = Sound("mwii.augolf.drop")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_02"] = Sound("mwii.augolf.empty_boltlock")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_drum_02"] = Sound("mwii.augolf.empty_boltlock")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_waffle_02"] = Sound("mwii.augolf.empty_boltlock")
weapon.SoundOverrides["wfoly_plr_sm_augolf_raise_first_02"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_08"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_drum_08"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_06"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_drum_05"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_waffle_06"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_waffle_08"] = Sound("mwii.augolf.empty_boltclose")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_waffle_02"] = Sound("mwii.augolf.reload_magout")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_waffle_04"] = Sound("mwii.augolf.reload_magout")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_055"] = Sound("mwii.augolf.reload_magin")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_065"] = Sound("mwii.augolf.reload_magin")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_02"] = Sound("mwii.augolf.reload_fast_magout")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_waffle_02"] = Sound("mwii.augolf.reload_fast_magout")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_fast_04"] = Sound("mwii.augolf.reload_fast_magin")
weapon.SoundOverrides["wfoly_plr_sm_augolf_reload_empty_fast_05"] = Sound("mwii.augolf.reload_fast_magin")
end
