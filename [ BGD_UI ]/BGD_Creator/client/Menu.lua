ESX = exports["es_extended"]:getSharedObject()

local cooldown = true
local cooldown2 = true

getPlayerInfo = {
    firstName = nil,
    lastName = nil,
    dateOfBirth = nil,
    height = nil,
    sex = nil
}

local maxValues = exports.skinchanger:GetMaxVals()

function is_valid_date(str)
    local pattern = "(%d+)/(%d+)/(%d+)"
    local day, month, year = str:match(pattern)
    if day == nil or month == nil or year == nil or #year ~= 4 then
        return false
    end
    day, month, year = tonumber(day), tonumber(month), tonumber(year)
    -- Vérification de la validité des valeurs de jour, mois et année
    if day < 1 or day > 31 or month < 1 or month > 12 or year < 1 then
        return false
    end
    -- Vérification des mois à 30 jours
    if month == 4 or month == 6 or month == 9 or month == 11 then
        if day > 30 then
            return false
        end
    end
    -- Vérification du mois de février
    if month == 2 then
        -- Vérification de l'année bissextile
        local leap = (year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0))
        if leap then
            if day > 29 then
                return false
            end
        else
            if day > 28 then
                return false
            end
        end
    end
    return true
end


function CreatorMenu()
    local main = RageUI.CreateMenu("", "Que voulez-vous faire ?")
    main.Closable = false
    local selectGender = RageUI.CreateSubMenu(main, "", "Sexe")
    local editSkin = RageUI.CreateSubMenu(main, "", "Personnage")
    editSkin.Closable = false
    editSkin.EnableMouse = true
    local selectClothes = RageUI.CreateSubMenu(main, "", "Vêtement")

    local faceDominance = 5
    local skinDominance = 5

    RageUI.Visible(main, not RageUI.Visible(main))

    while main do
        Wait(0)
        RageUI.IsVisible(main, function()

            RageUI.Button("Prénom :", nil, {RightLabel = getPlayerInfo.firstName}, cooldown, {
                onSelected = function()
                    getPlayerInfo.firstName = Imput("Votre Prénom ? (ex : Jako)", "", 20)
                end
            })

            RageUI.Button("Nom de famille :", nil, {RightLabel = getPlayerInfo.lastName}, cooldown, {
                onSelected = function()
                    getPlayerInfo.lastName = Imput("Votre nom de famille ? (ex : Cooper)", "", 20)
                end
            })

            RageUI.Button("Date de naissance :", nil, {RightLabel = getPlayerInfo.dateOfBirth}, cooldown, {
                onSelected = function()
                    getPlayerInfo.dateOfBirth = Imput("Votre date de naissance ? (ex : 14/09/1993)", "", 10)
                end
            })

            RageUI.Button("Taille :", nil, {RightLabel = getPlayerInfo.height}, cooldown, {
                onSelected = function()
                    getPlayerInfo.height = Imput("Votre taille ? (ex : 193)", "", 3)
                end
            })

            RageUI.Button("Sexe :", nil, {RightLabel = getPlayerInfo.sex}, cooldown, {}, selectGender)

            if (getPlayerInfo.firstName == nil or #getPlayerInfo.firstName < 2) or (getPlayerInfo.lastName == nil or #getPlayerInfo.lastName < 2) or (getPlayerInfo.dateOfBirth == nil or not is_valid_date(getPlayerInfo.dateOfBirth)) or getPlayerInfo.height == nil or getPlayerInfo.sex == nil then
                RageUI.Button("Valider", "~r~Attention~s~ : Vous ne pourrez plus modifier votre identité ni votre sexe !", {RightBadge = RageUI.BadgeStyle.Tick}, false, {})
            else
                RageUI.Button("Valider", "~r~Attention~s~ : Vous ne pourrez plus modifier votre identité ni votre sexe !", {RightBadge = RageUI.BadgeStyle.Tick}, true, {
                    onSelected = function()
                        cooldown = false
                        TriggerServerEvent("BGD_Creator:save", getPlayerInfo)
                        DoScreenFadeOut(1000)
                        Wait(1000)
                        RenderScriptCams(false, false, 0, true, true)
                        TriggerServerEvent("BGD_Creator:setPlayerToBucket", GetPlayerServerId(PlayerId()))
                        SkinCam()
                        DoScreenFadeIn(1000)
                        Wait(200)
                        FreezeEntityPosition(PlayerPedId(), true)
                        RageUI.Visible(editSkin, true)
                    end
                })
            end

        end)

        RageUI.IsVisible(selectGender, function()

            RageUI.Button("Homme", nil, {}, true, {
                onSelected = function()
                    getPlayerInfo.sex = "m"
                    RageUI.GoBack()
                    TriggerEvent("skinchanger:change", "sex", 0)
                end
            })

            RageUI.Button("Femme", nil, {}, true, {
                onSelected = function()
                    getPlayerInfo.sex = "f"
                    RageUI.GoBack()
                    TriggerEvent("skinchanger:change", "sex", 1)

                    TriggerEvent("skinchanger:change", "glasses_1", 5)

                end
            })

        end)

        RageUI.IsVisible(editSkin, function()
            local mothers = {}
            for i = 0, maxValues.mom do table.insert(mothers, i) end
            RageUI.List("Mère", mothers, IndexList.List1, nil, {}, cooldown2, {
                onListChange = function(i, Item)
                    IndexList.List1 = i;
                    TriggerEvent("skinchanger:change", "mom", IndexList.List1 - 1)
                end,
            })

            local fathers = {}
            for i = 0, maxValues.dad do table.insert(fathers, i) end
            RageUI.List("Père", fathers, IndexList.List2, nil, {}, cooldown2, {
                onListChange = function(i, Item)
                    IndexList.List2 = i;
                    TriggerEvent("skinchanger:change", "dad", IndexList.List2 - 1)
                end,
            })

            RageUI.UISliderHeritage("Dominance visage", faceDominance, "Définissez la dominance père/mère de votre visage.", {
                onSliderChange = function(Index)
                    faceDominance = Index * 10
                    TriggerEvent("skinchanger:change", "face_md_weight", faceDominance * 10)
                end
            })

            RageUI.UISliderHeritage("Dominance peau", skinDominance, "Définissez la dominance père/mère de votre peau.", {
                onSliderChange = function(Index)
                    skinDominance = Index * 10
                    TriggerEvent("skinchanger:change", "skin_md_weight", skinDominance * 10)
                end
            })

            local cheveux = {} for i = 0, GetNumberOfPedDrawableVariations(PlayerPedId(), 2) - 1, 1 do cheveux[i] = i end
            RageUI.List("Cheveux", cheveux, IndexList.List3, nil, {}, cooldown2, {
                onListChange = function(i, Item)
                    IndexList.List3 = i;
                    TriggerEvent("skinchanger:change", "hair_1", IndexList.List3 - 1)
                end,
            })

            local barbe = {} for b = 0, GetNumHeadOverlayValues(1) -1, 1 do barbe[b] = b end
            RageUI.List("Barbe", barbe, IndexList.List4, nil, {}, cooldown2, {
                onListChange = function(i, Item)
                    IndexList.List4 = i;
                    TriggerEvent("skinchanger:change", "beard_1", IndexList.List4 - 1)
                end,
            })

            local sourcils = {} for c = 0, GetNumHeadOverlayValues(1) -1, 1 do sourcils[c] = c end
            RageUI.List("Sourcils", sourcils, IndexList.List5, nil, {}, cooldown2, {
                onListChange = function(Index, Item)
                    IndexList.List5 = Index
                    TriggerEvent("skinchanger:change", "eyebrows_1", IndexList.List5)
                end,
            })

            RageUI.List("Couleur des yeux", sourcils, IndexList.List6, nil, {}, cooldown2, {
                onListChange = function(Index, Item)
                    IndexList.List6 = Index
                    TriggerEvent("skinchanger:change", "eye_color", IndexList.List6)
                end,
            })

            RageUI.Button("Valider", "~r~Attention~s~ : Vous ne pourrez plus modifier votre personnage !", {RightBadge = RageUI.BadgeStyle.Tick}, true, {}, selectClothes)


            RageUI.ColourPanel("Couleur Principale", RageUI.PanelColour.HairCut, IndexPanel.ChevColor.primary[1], IndexPanel.ChevColor.primary[2], {
                onColorChange = function(MinimumIndex, CurrentIndex)
                    IndexPanel.ChevColor.primary[1] = MinimumIndex
                    IndexPanel.ChevColor.primary[2] = CurrentIndex
                    TriggerEvent("skinchanger:change", "hair_color_1",
                    IndexPanel.ChevColor.primary[2])
                end
            },5)

            RageUI.ColourPanel("Couleur Secondaire", RageUI.PanelColour.HairCut, IndexPanel.ChevColor.secondary[1], IndexPanel.ChevColor.secondary[2], {
                onColorChange = function(MinimumIndex, CurrentIndex)
                    IndexPanel.ChevColor.secondary[1] = MinimumIndex
                    IndexPanel.ChevColor.secondary[2] = CurrentIndex
                    TriggerEvent("skinchanger:change", "hair_color_2",
                    IndexPanel.ChevColor.secondary[2])
                end
            },5)

            RageUI.ColourPanel("Couleur Principale", RageUI.PanelColour.HairCut, IndexPanel.BarColor.primary[1], IndexPanel.BarColor.primary[2], {
                onColorChange = function(MinimumIndex, CurrentIndex)
                    IndexPanel.BarColor.primary[1] = MinimumIndex
                    IndexPanel.BarColor.primary[2] = CurrentIndex
                    TriggerEvent("skinchanger:change", "beard_3",
                    IndexPanel.BarColor.primary[2])
                end
            },6)

            RageUI.PercentagePanel(IndexPanel.percent1, "Opacité", "0%", "100%", {
                onProgressChange = function(Percentage)
                    IndexPanel.percent1 = Percentage
                    TriggerEvent("skinchanger:change", "beard_2", Percentage * 10)
                end
            },6)

            RageUI.ColourPanel("Couleur Principale", RageUI.PanelColour.HairCut, IndexPanel.SourColor.primary[1], IndexPanel.SourColor.primary[2], {
                onColorChange = function(MinimumIndex, CurrentIndex)
                    IndexPanel.SourColor.primary[1] = MinimumIndex
                    IndexPanel.SourColor.primary[2] = CurrentIndex
                    TriggerEvent("skinchanger:change", "eyebrows_3",
                    IndexPanel.SourColor.primary[2])
                end
            },7)
            
            RageUI.PercentagePanel(IndexPanel.percent2, "Opacité", "0%", "100%", {
                onProgressChange = function(Percentage)
                    IndexPanel.percent2 = Percentage
                    TriggerEvent("skinchanger:change", "eyebrows_2", Percentage * 10)
                end
            },7)
            
        end)

        RageUI.IsVisible(selectClothes, function()

            RageUI.Button("Chic", nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, {
                onSelected = function()
                    TriggerEvent('skinchanger:getSkin', function(skin)
                        local outfit
                        if skin.sex == 0 then
                            outfit = Creator.outfit.Chic.male
                        else
                            outfit = Creator.outfit.Chic.female
                        end
                        if outfit then
                            TriggerEvent('skinchanger:loadClothes', skin, outfit)
                        end
                    end)
                end
            })

            RageUI.Button("Décontraté", nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, {
                onSelected = function()
                    TriggerEvent('skinchanger:getSkin', function(skin)
                        local outfit
                        if skin.sex == 0 then
                            outfit = Creator.outfit.Decontract.male
                        else
                            outfit = Creator.outfit.Decontract.female
                        end
                        if outfit then
                            TriggerEvent('skinchanger:loadClothes', skin, outfit)
                        end
                    end)
                end
            })

            RageUI.Button("Valider", nil, {RightBadge = RageUI.BadgeStyle.Tick}, true, {
                onSelected = function()
                    RageUI.CloseAll()
                    RenderScriptCams(false, false, 0, true, true)
                    TriggerEvent('skinchanger:getSkin', function(skin)
                        TriggerServerEvent('esx_skin:save', skin)
                    end)
                    EndCreator()
                    cooldown2 = false
                    FreezeEntityPosition(PlayerPedId(), false)
                end
            })

        end)


        if (not (RageUI.Visible(main))) and not RageUI.Visible(selectGender) and not RageUI.Visible(editSkin) and not RageUI.Visible(selectClothes) then
            main = RMenu:DeleteType(main, true)
            selectGender = RMenu:DeleteType(selectGender, true)
            editSkin = RMenu:DeleteType(editSkin, true)
            selectClothes = RMenu:DeleteType(selectClothes, true)
        end
    end
end
