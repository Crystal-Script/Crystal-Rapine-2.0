Config = {}

Config.locales = {
    ['start-rapina'] = 'Premi ~INPUT_CONTEXT~ per iniziare la rapina',
    ['rapina-annullata'] = 'Ti sei allontanato troppo dalla rapina al ',
    ['rapina-iniziata'] = 'Rapina al ',
    ['rapina-completata'] = 'Rapina al ',
    ['completata'] = ' completata',
    ['no-poliziotti'] = 'Non ci sono abbastanza poliziotti'
}

Config.dispatch = op -- op sta per opdispatch se mettere custom andate nel client potete il vostro export

Config.rapine = {

    ----------------- negozietti  --------------------------------------

    ["shop_247_civic_125"] = {
        label = 'Negozietto',
        position = vector3(28.2276, -1339.1611, 29.4970), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        tempoprossimarapina = 3500, -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
        maxdistance = 12.0,
    },

    ["asdds"] = {
        label = 'Negozietto',
        position = vector3(-3047.14, 585.1044, 7.9089), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 12.0,
        tempoprossimarapina = 3500 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asdasd"] = {
        label = 'Negozietto',
        position = vector3(1734.5442, 6420.2920, 35.0372), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 12.0,
        tempoprossimarapina = 3500 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["fsdsf"] = {
        label = 'Negozietto',
        position = vector3(1959.4332, 3748.2185, 32.3438), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 12.0,
        tempoprossimarapina = 3500 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["fsdsxcvf"] = {
        label = 'Negozietto',
        position = vector3(546.4512, 2663.2932, 42.1566), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 12.0,
        tempoprossimarapina = 3500 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["fsdXCVsxcvf"] = {
        label = 'Negozietto',
        position = vector3(378.1100, 333.0941, 103.5663), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(10000, 15000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 200, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 2, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 12.0,
        tempoprossimarapina = 3500 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

-------------------------- banche -------------------
    ["banca11"] = {
        label = 'Banca',
        position = vector3(146.1887, -1044.9368, 29.3778), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asd"] = {
        label = 'Banca',
        position = vector3(-1212.02, -336.304, 37.790), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asASDd"] = {
        label = 'Banca',
        position = vector3(-2957.47, 481.0664, 15.706), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asASSDd"] = {
        label = 'Banca',
        position = vector3(310.6031, -283.170, 54.174), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asASsSDd"] = {
        label = 'Banca',
        position = vector3(-353.847, -54.1397, 49.045), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asASSsSDd"] = {
        label = 'Banca',
        position = vector3(1177.154, 2711.799, 38.097), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 500, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },

    ["asAwSSsSDd"] = {
        label = 'Banca',
        position = vector3(-622.746, -230.870, 38.057), -- Posizioni
        blip = 156,
        blipColor = 40,
        blipScale = 1.0,
        blipText = "Rapina",
        guadagno = math.random(80000, 150000), ----- lo script decidera a caso se darti un numero da 80000 a 120000
        duratarapina = 700, --  Il tempo necessario per compiere una rapina in questo luogo
        poliziotti = 3, --  Il numero di poliziotti che risponderanno a una rapina in corso
        maxdistance = 15.0,
        tempoprossimarapina = 400 -- traccia dell'ultima volta in cui questo negozio o banca è stato rapinato.
    },
}
