local Dialog = ImportPackage("dialogui")
local _ = function(k, ...) return ImportPackage("i18n").t(GetPackageName(), k, ...) end


local medicNpcIds = {}
local medicVehicleNpcIds = {}
local medicGarageIds = {}
local medicEquipmentNpcIds = {}

local wpObject

AddRemoteEvent("medic:setup", function(_medicNpcIds, _medicVehicleNpcIds, _medicGarageIds, _medicEquipmentNpcIds)
    medicNpcIds = _medicNpcIds
    medicVehicleNpcIds = _medicVehicleNpcIds
    medicGarageIds = _medicGarageIds
    medicEquipmentNpcIds = _medicEquipmentNpcIds
end)

AddEvent("OnTranslationReady", function()

end)


AddRemoteEvent("medic:callout:createwp", function(target)
    print('bonjour', target)
    local x,y,z = GetPlayerLocation(target)    
    wpObject = CreateWaypoint(x, y, z, "URGENCE MEDICALE")    
end)
