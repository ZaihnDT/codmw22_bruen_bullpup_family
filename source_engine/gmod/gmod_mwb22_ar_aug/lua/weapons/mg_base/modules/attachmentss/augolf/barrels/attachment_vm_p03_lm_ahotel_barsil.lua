ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Bruen Turaco 686mm"
ATTACHMENT.Model = Model("models/zaihny/mw22/attachments/augolf/attachment_vm_p03_lm_ahotel_barsil.mdl")
ATTACHMENT.Icon = Material("zaihny/mw22/attachments/icons/augolf/icon_attachment_vm_p03_lm_ahotel_barsil.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver", "attachment_vm_p03_sm_apapa_receiver"}
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.89
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.89
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
    weapon.Cone.Hip = weapon.Cone.Hip * 0.91
    weapon:doSuppressorStats()
    weapon.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
    weapon.Primary.Sound = Sound("mwii.augolf.fire.sup")
end