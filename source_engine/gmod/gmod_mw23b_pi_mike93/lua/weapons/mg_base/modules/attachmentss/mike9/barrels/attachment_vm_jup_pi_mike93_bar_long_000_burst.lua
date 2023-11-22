ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Mk2 Renetti Long Barrel + Burst"
ATTACHMENT.Model = Model("models/zaihny/mw23/attachments/mike93/attachment_vm_jup_pi_mike93_bar_long_000.mdl")
ATTACHMENT.Icon = Material("zaihny/mw23/attachments/icons/mike93/icon_attachment_vm_jup_pi_mike93_bar_long_000.vmt")
ATTACHMENT.ExcludedByAttachments = {"att_receiver"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.07
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.07
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Primary.RPM = 1000
    weapon.Primary.BurstRounds = 3
    weapon.Primary.BurstDelay = 0.2
    weapon.Firemodes[1].Name = "3rnd Burst"
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.3
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 2.5
end