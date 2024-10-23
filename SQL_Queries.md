## Cars Dataset SQL Queries

**Selecting Data base.**

````sql
USE cars;
````

**Dataset Overview.**

````sql
select * from cars;
````
**Results :**

| model      | displ      | cyl      | trans      | drive      | fuel      | veh_class      | air_pollution_score      | city_mpg      | hwy_mpg      | cmb_mpg      | greenhouse_gas_score      | smartway      |
| ---------- | ---------- | -------- | ---------- | ---------- | --------- | -------------- | ------------------------ | ------------- | ------------ | ------------ | ------------------------- | ------------- |
| ACURA RDX  | 3.5        | 6        | SemiAuto-6 | 2WD        | Gasoline  | small SUV      | 3                        | 20            | 28           | 23           | 5                         | No            |
| ACURA RDX  | 3.5        | 6        | SemiAuto-6 | 4WD        | Gasoline  | small SUV      | 3                        | 19            | 27           | 22           | 4                         | No            |
| ACURA TLX  | 2.4        | 4        | AMS-8      | 2WD        | Gasoline  | small car      | 3                        | 23            | 33           | 27           | 6                         | No            |
| ACURA TLX  | 3.5        | 6        | SemiAuto-9 | 2WD        | Gasoline  | small car      | 3                        | 20            | 32           | 24           | 5                         | No            |
| ACURA TLX  | 3.5        | 6        | SemiAuto-9 | 4WD        | Gasoline  | small car      | 3                        | 21            | 30           | 24           | 5                         | No            |
| ACURA TLX AWD A-SPEC | 3.5        | 6        | SemiAuto-9 | 4WD        | Gasoline  | small car      | 3                        | 20            | 29           | 23           | 5                         | No            |
| ACURA TLX FWD A-SPEC | 3.5        | 6        | SemiAuto-9 | 2WD        | Gasoline  | small car      | 3                        | 20            | 30           | 23           | 5                         | No            |
| ALFA ROMEO 4C | 1.8        | 4        | AutoMan-6  | 2WD        | Gasoline  | small car      | 1                        | 24            | 34           | 28           | 6                         | No            |
| ALFA ROMEO Giulia | 2.9        | 6        | Auto-8     | 2WD        | Gasoline  | midsize car    | 3                        | 17            | 24           | 20           | 4                         | No            |
| ALFA ROMEO Giulia | 2.9        | 6        | Auto-8     | 2WD        | Gasoline  | midsize car    | 3                        | 17            | 24           | 20           | 4                         | No            |
| AUDI A3    | 2          | 4        | AMS-6      | 4WD        | Gasoline  | small car      | 7                        | 24            | 31           | 27           | 6                         | No            |
| AUDI A3    | 2          | 4        | AMS-7      | 2WD        | Gasoline  | small car      | 7                        | 26            | 35           | 29           | 6                         | No            |
| AUDI A3 Cabriolet | 2          | 4        | AMS-6      | 4WD        | Gasoline  | small car      | 7                        | 22            | 30           | 25           | 5                         | No            |
| AUDI A3 Cabriolet | 2          | 4        | AMS-7      | 2WD        | Gasoline  | small car      | 7                        | 25            | 33           | 28           | 6                         | No            |
| AUDI A4    | 2          | 4        | AMS-7      | 4WD        | Gasoline  | small car      | 5                        | 24            | 34           | 27           | 6                         | No 

**Querry : max score given for air pollution and green house score for each fuel type.**

**Results :**

| fuel      | max_air_pol      | max_greenhouse_score      |
| --------- | ---------------- | ------------------------- |
| Gasoline  | 7                | 10                        |
| Electricity | 7              | 10                        |
| Ethanol   | 5                | 6                         |
| Gas       | 5                | 6                         |
| Diesel    | 3                | 7                         |


**Query : Average display and cyl of each car model.*

````sql
select model, round(avg(displ)) as avg_disp, round(avg(Cyl)) as avg_cyl from cars
group by model;
````

**Results :**

| model      | avg_disp      | avg_cyl      |
| ---------- | ------------- | ------------ |
| ACURA RDX  | 4             | 6            |
| ACURA TLX  | 3             | 5            |
| ACURA TLX AWD A-SPEC | 4             | 6            |
| ACURA TLX FWD A-SPEC | 4             | 6            |
| ALFA ROMEO 4C | 2             | 4            |
| ALFA ROMEO Giulia | 3             | 6            |
| AUDI A3    | 2             | 4            |
| AUDI A3 Cabriolet | 2             | 4            |
| AUDI A4    | 2             | 4            |
| AUDI A4 Ultra | 2             | 4            |
| AUDI A5    | 2             | 4            |
| AUDI A5 Cabriolet | 2             | 4            |
| AUDI A5 Sportback quattro | 2             | 4            |
| AUDI A6    | 2             | 5            |
| AUDI A7    | 3             | 6            |
| AUDI A8 L  | 3             | 6            |
| AUDI Q3    | 2             | 4            |
| AUDI Q5    | 2             | 4            |
| AUDI Q7    | 2             | 5            |
| AUDI RS3   | 2             | 5            |
| AUDI S3    | 2             | 4            |
| AUDI S4    | 3             | 6            |
| AUDI S5    | 3             | 6            |
| AUDI S5 Cabriolet | 3             | 6            |
| AUDI S5 Sportback | 3             | 6            |
| AUDI SQ5   | 3             | 6            |
| AUDI TT Coupe | 2             | 4            |
| AUDI TT RS | 2             | 5            |
| AUDI TT Roadster | 2             | 4            |
| AUDI TTS Coupe | 2             | 4            |
| AUDI allroad quattro | 2             | 4            |
| BENTLEY Bentayga | 6             | 12           |
| BENTLEY Chiron | 8             | 16           |
| BMW 230i Convertible | 2             | 4            |
| BMW 230i Coupe | 2             | 4            |
| BMW 230i xDrive Convertible | 2             | 4            |
| BMW 230i xDrive Coupe | 2             | 4            |
| BMW 320i   | 2             | 4            |
| BMW 330i   | 2             | 4            |
| BMW 330i Gran Turismo | 2             | 4            |
| BMW 330i Sports Wagon | 2             | 4            |
| BMW 340i   | 3             | 6            |
| BMW 340i Gran Turismo | 3             | 6            |
| BMW 430i Convertible | 2             | 4            |
| BMW 430i Coupe | 2             | 4            |
| BMW 430i Gran Coupe | 2             | 4            |
| BMW 440i Convertible | 3             | 6            |
| BMW 440i Coupe | 3             | 6            |
| BMW 440i Gran Coupe | 3             | 6            |
| BMW 530i   | 2             | 4            |
| BMW 540i   | 3             | 6            |
| BMW 640i Convertible | 3             | 6            |
| BMW 640i Gran Coupe | 3             | 6            |
| BMW 650i Convertible | 4             | 8            |
| BMW 650i Gran Coupe | 4             | 8            |
| BMW 740i   | 3             | 6            |
| BMW 750i   | 4             | 8            |
| BMW Alpina B6 Gran Coupe | 4             | 8            |
| BMW Alpina B7 | 4             | 8            |
| BMW M2     | 3             | 6            |
| BMW M240i Convertible | 3             | 6            |
| BMW M240i Coupe | 3             | 6            |
| BMW M3     | 3             | 6            |
| BMW M4 Convertible | 3             | 6            |
| BMW M4 Coupe | 3             | 6            |
| BMW M4 DTM Champions Edition | 3             | 6            |
| BMW M550i  | 4             | 8            |
| BMW M6 Convertible | 4             | 8            |
| BMW M6 Gran Coupe | 4             | 8            |
| BMW M760i xDrive | 7             | 12           |
| BMW X1 sDrive28i | 2             | 4            |
| BMW X1 xDrive28i | 2             | 4            |
| BMW X4 M40i | 3             | 6            |
| BMW X4 xDrive28i | 2             | 4            |
| BUICK Encore | 1             | 4            |
| BUICK Lacrosse | 3             | 5            |
| CADILLAC ATS | 3             | 5            |
| CADILLAC ATS-V | 4             | 6            |
| CADILLAC CT6 | 3             | 5            |
| CADILLAC CTS | 3             | 5            |
| CADILLAC CTS-V | 6             | 8            |
| CADILLAC Escalade | 6             | 8            |
| CADILLAC XT5 | 4             | 6            |
| CHEVROLET Camaro | 4             | 7            |
| CHEVROLET Colorado | 3             | 5            |
| CHEVROLET Colorado ZR2 | 3             | 5            |
| CHEVROLET Corvette | 6             | 8            |
| CHEVROLET Cruze | 2             | 4            |
| CHEVROLET Cruze Hatchback | 2             | 4            |
| CHEVROLET Cruze Premier | 1             | 4            |
| CHEVROLET Cruze Premier Hatchback | 1             | 4            |
| CHEVROLET Equinox | 2             | 4            |
| CHEVROLET Impala | 3             | 6            |
| CHEVROLET Malibu | 2             | 4            |
| CHEVROLET Silverado 15 | 5             | 8            |
| CHEVROLET Sonic | 1             | 4            |
| CHEVROLET Sonic 5 | 1             | 4            |
| CHEVROLET Suburban 1500 | 5             | 8            |
| CHEVROLET Tahoe 1500 | 6             | 8            |
| CHEVROLET Traverse | 4             | 6            |
| CHEVROLET Trax | 1             | 4            |
| CHRYSLER 300 | 4             | 6            |
| CHRYSLER Pacifica | 4             | 6            |
| DODGE Challenger | 6             | 8            |
| DODGE Challenger GT | 4             | 6            |
| DODGE Challenger SRT | 6             | 8            |
| DODGE Charger | 4             | 7            |
| DODGE Charger SRT | 6             | 8            |
| DODGE Durango | 5             | 7            |
| DODGE Durango  SRT | 6             | 8            |
| DODGE Journey | 3             | 5            |
| FERRARI 488 Spider | 4             | 8            |
| FERRARI 488 gtb | 4             | 8            |
| FERRARI 812 Superfast | 6             | 12           |
| FERRARI California T | 4             | 8            |
| FERRARI GTC4Lusso | 6             | 12           |
| FERRARI GTC4Lusso T | 4             | 8            |
| FIAT 500L  | 1             | 4            |
| FORD F150  | 4             | 7            |
| FORD F150 Raptor | 4             | 6            |
| FORD Flex  | 4             | 6            |
| FORD Fusion | 2             | 4            |
| FORD Fusion Hybrid | 2             | 4            |
| FORD Transit Connect | 2             | 4            |
| GENESIS G80 | 4             | 7            |
| GENESIS G90 | 4             | 7            |
| GMC Acadia | 3             | 5            |
| GMC Canyon | 3             | 5            |
| GMC Sierra 15 | 5             | 8            |
| GMC Terrain | 2             | 4            |
| GMC Yukon 1500 | 6             | 8            |
| GMC Yukon 1500 XL | 6             | 8            |
| GMC Yukon XL 1500 | 6             | 8            |
| HONDA Civic 5Dr | 2             | 4            |
| HONDA Fit  | 2             | 4            |
| HONDA HR-V | 2             | 4            |
| HONDA Ridgeline | 4             | 6            |
| HYUNDAI Elantra | 2             | 4            |
| HYUNDAI Elantra GT | 2             | 4            |
| HYUNDAI Elantra SE | 2             | 4            |
| HYUNDAI Santa Fe | 3             | 6            |
| HYUNDAI Santa Fe Sport | 2             | 4            |
| HYUNDAI Santa Fe Sport Ultimate | 2             | 4            |
| HYUNDAI Santa Fe Ultimate | 3             | 6            |
| HYUNDAI Sonata | 2             | 4            |
| HYUNDAI Sonata SE | 2             | 4            |
| INFINITI Q50 | 2             | 5            |
| INFINITI Q50 Hybrid | 4             | 6            |
| INFINITI Q50 Red Sport | 3             | 6            |
| INFINITI Q70 | 5             | 7            |
| INFINITI Q70 Hybrid | 4             | 6            |
| INFINITI QX30 | 2             | 4            |
| JAGUAR F-Pace | 2             | 5            |
| JAGUAR F-Type Convertible | 3             | 6            |
| JAGUAR F-Type Coupe | 3             | 6            |
| JAGUAR F-Type R Convertible | 5             | 8            |
| JAGUAR F-Type R Coupe | 5             | 8            |
| JAGUAR F-Type S Convertible | 3             | 6            |
| JAGUAR F-Type S Coupe | 3             | 6            |
| JAGUAR XE  | 2             | 5            |
| JAGUAR XF  | 2             | 5            |
| JEEP Cherokee | 3             | 5            |
| JEEP Cherokee 4x4 Active Drive II | 3             | 5            |
| JEEP Cherokee Trailhawk | 3             | 5            |
| JEEP Compass | 2             | 4            |
| JEEP Grand Cherokee | 4             | 7            |
| JEEP Grand Cherokee SRT | 6             | 8            |
| KIA Forte  | 2             | 4            |
| KIA Forte5 | 2             | 4            |
| KIA Optima | 2             | 4            |
| KIA Optima FE | 2             | 4            |
| KIA Rio    | 2             | 4            |
| KIA Sedona | 3             | 6            |
| KIA Sedona SX | 3             | 6            |
| KIA Sedona SXL | 3             | 6            |
| KIA Sorento | 3             | 5            |
| KIA Sorento FE | 3             | 6            |
| KIA Soul   | 2             | 4            |
| KIA Sportage | 2             | 4            |
| KIA Sportage FE | 2             | 4            |
| LAMBORGHINI Aventador Coupe | 6             | 12           |
| LAMBORGHINI Aventador Roadster | 6             | 12           |
| LAMBORGHINI Aventador S Coupe | 6             | 12           |
| LAMBORGHINI Aventador S Roadster | 6             | 12           |
| LAND ROVER Range Rover Velar | 2             | 5            |
| LEXUS GX 460 | 5             | 8            |
| LEXUS LC 500 | 5             | 8            |
| LEXUS LC 500h | 4             | 6            |
| LEXUS LX 570 | 6             | 8            |
| LINCOLN Continental | 3             | 6            |
| LINCOLN MKT | 4             | 6            |
| LINCOLN MKT Livery | 4             | 6            |
| MASERATI Ghibli | 3             | 6            |
| MASERATI Ghibli S | 3             | 6            |
| MASERATI Ghibli S Q4 | 3             | 6            |
| MASERATI Granturismo | 5             | 8            |
| MASERATI Granturismo Convertible | 5             | 8            |
| MASERATI Levante | 3             | 8            |
| MASERATI Levante S | 3             | 8            |
| MASERATI Quattroporte S | 3             | 6            |
| MASERATI Quattroporte S Q4 | 3             | 6            |
| MAZDA 3    | 2             | 4            |
| MAZDA CX-3 | 2             | 4            |
| MAZDA CX-9 | 2             | 4            |
| MERCEDES-BENZ AMG C63 | 4             | 8            |
| MERCEDES-BENZ AMG C63 S | 4             | 8            |
| MERCEDES-BENZ AMG CLA45 4Matic | 2             | 4            |
| MERCEDES-BENZ AMG CLS63 4Matic | 6             | 8            |
| MERCEDES-BENZ AMG E63 S 4Matic | 4             | 8            |
| MERCEDES-BENZ AMG GLA45 4Matic | 2             | 4            |
| MERCEDES-BENZ AMG GLE 43 4Matic | 3             | 6            |
| MERCEDES-BENZ AMG GLE63 | 6             | 8            |
| MERCEDES-BENZ AMG GLE63 S | 6             | 8            |
| MERCEDES-BENZ AMG GLS63 | 6             | 8            |
| MERCEDES-BENZ AMG GT | 4             | 8            |
| MERCEDES-BENZ AMG GT S | 4             | 8            |
| MERCEDES-BENZ AMG S63 4Matic | 4             | 8            |
| MERCEDES-BENZ AMG SL63 | 6             | 8            |
| MERCEDES-BENZ AMG SL65 | 6             | 12           |
| MERCEDES-BENZ C300 | 2             | 4            |
| MERCEDES-BENZ C300 4Matic | 2             | 4            |
| MERCEDES-BENZ CLA250 | 2             | 4            |
| MERCEDES-BENZ CLA250 4Matic | 2             | 4            |
| MERCEDES-BENZ CLS550 | 5             | 8            |
| MERCEDES-BENZ CLS550 4Matic | 5             | 8            |
| MERCEDES-BENZ E300 | 2             | 4            |
| MERCEDES-BENZ E300 4Matic | 2             | 4            |
| MERCEDES-BENZ GLA 250 | 2             | 4            |
| MERCEDES-BENZ GLA250 4Matic | 2             | 4            |
| MERCEDES-BENZ GLC 300 | 2             | 4            |
| MERCEDES-BENZ GLC 300 4Matic | 2             | 4            |
| MERCEDES-BENZ GLE350 | 4             | 6            |
| MERCEDES-BENZ GLE350 4Matic | 4             | 6            |
| MERCEDES-BENZ GLS450 4Matic | 3             | 6            |
| MERCEDES-BENZ GLS550 4Matic | 5             | 8            |
| MERCEDES-BENZ S560 4Matic | 4             | 8            |
| MERCEDES-BENZ S560 4Matic Maybach | 4             | 8            |
| MERCEDES-BENZ SL550 | 5             | 8            |
| MERCEDES-BENZ SLC300 | 2             | 4            |
| MINI Cooper Clubman | 2             | 3            |
| MINI Cooper Clubman All4 | 2             | 3            |
| MINI Cooper Convertible | 2             | 3            |
| MINI Cooper Countryman | 2             | 3            |
| MINI Cooper Countryman All4 | 2             | 3            |
| MINI Cooper Hardtop | 2             | 3            |
| MINI Cooper S Clubman | 2             | 4            |
| MINI Cooper S Clubman All4 | 2             | 4            |
| MINI Cooper S Convertible | 2             | 4            |
| MINI Cooper S Countryman | 2             | 4            |
| MINI Cooper S Countryman All4 | 2             | 4            |
| MINI Cooper S Hardtop | 2             | 4            |
| MINI JCW Countryman All4 | 2             | 4            |
| MINI John Cooper Works Clubman All4 | 2             | 4            |
| MINI John Cooper Works Convertible | 2             | 4            |
| MINI John Cooper Works Hardtop | 2             | 4            |
| MITSUBISHI Mirage | 1             | 3            |
| MITSUBISHI Mirage G4 | 1             | 3            |
| NISSAN 370Z | 4             | 6            |
| NISSAN 370Z Roadster | 4             | 6            |
| NISSAN Armada | 6             | 8            |
| NISSAN Versa | 2             | 4            |
| PORSCHE 911 Carrera | 3             | 6            |
| PORSCHE 911 Carrera 4 | 3             | 6            |
| PORSCHE 911 Carrera 4 Cabriolet | 3             | 6            |
| PORSCHE 911 Carrera 4 GTS | 3             | 6            |
| PORSCHE 911 Carrera 4 GTS Cabriolet | 3             | 6            |
| PORSCHE 911 Carrera 4S | 3             | 6            |
| PORSCHE 911 Carrera 4S Cabriolet | 3             | 6            |
| PORSCHE 911 Carrera Cabriolet | 3             | 6            |
| PORSCHE 911 Carrera GTS | 3             | 6            |
| PORSCHE 911 Carrera GTS Cabriolet | 3             | 6            |
| PORSCHE 911 Carrera S | 3             | 6            |
| PORSCHE 911 Carrera S Cabriolet | 3             | 6            |
| PORSCHE 911 Targa 4 | 3             | 6            |
| PORSCHE 911 Targa 4 GTS | 3             | 6            |
| PORSCHE 911 Targa 4S | 3             | 6            |
| PORSCHE 911 Turbo | 4             | 6            |
| PORSCHE 911 Turbo Cabriolet | 4             | 6            |
| PORSCHE 911 Turbo S | 4             | 6            |
| PORSCHE 911 Turbo S Cabriolet | 4             | 6            |
| PORSCHE Boxster | 2             | 4            |
| PORSCHE Boxster S | 2             | 4            |
| PORSCHE Cayenne GTS | 4             | 6            |
| PORSCHE Cayenne S | 4             | 6            |
| PORSCHE Macan | 2             | 4            |
| PORSCHE Macan GTS | 3             | 6            |
| PORSCHE Macan S | 3             | 6            |
| PORSCHE Panamera | 3             | 6            |
| PORSCHE Panamera 4 | 3             | 6            |
| PORSCHE Panamera 4 Executive | 3             | 6            |
| PORSCHE Panamera 4S | 3             | 6            |
| PORSCHE Panamera 4S Executive | 3             | 6            |
| PORSCHE Panamera Turbo | 4             | 8            |
| PORSCHE Panamera Turbo Executive | 4             | 8            |
| RAM 1500   | 6             | 8            |
| RAM Promaster City | 2             | 4            |
| SUBARU Crosstrek | 2             | 4            |
| SUBARU Forester | 2             | 4            |
| SUBARU Impreza | 2             | 4            |
| SUBARU Impreza Sport | 2             | 4            |
| SUBARU Legacy | 3             | 5            |
| SUBARU Outback | 3             | 5            |
| SUBARU WRX | 2             | 4            |
| TOYOTA 4Runner | 4             | 6            |
| TOYOTA Avalon | 4             | 6            |
| TOYOTA Avalon Hybrid | 2             | 4            |
| TOYOTA C-HR | 2             | 4            |
| TOYOTA Camry | 3             | 5            |
| TOYOTA Camry Hybrid LE | 2             | 4            |
| TOYOTA Camry Hybrid XLE/SE | 2             | 4            |
| TOYOTA Camry LE/SE | 2             | 4            |
| TOYOTA Camry XLE/XSE | 2             | 4            |
| TOYOTA Camry XSE | 4             | 6            |
| TOYOTA Corolla | 2             | 4            |
| TOYOTA Corolla LE Eco | 2             | 4            |
| TOYOTA Corolla iM | 2             | 4            |
| TOYOTA Land Cruiser | 6             | 8            |
| TOYOTA Prius c | 2             | 4            |
| TOYOTA RAV4 | 2             | 4            |
| TOYOTA RAV4 Hybrid | 2             | 4            |
| TOYOTA RAV4 LE/XLE | 2             | 4            |
| TOYOTA RAV4 Limited | 2             | 4            |
| TOYOTA Sequoia | 6             | 8            |
| TOYOTA Tundra | 5             | 8            |
| TOYOTA Yaris | 2             | 4            |
| VOLKSWAGEN Beetle | 2             | 4            |
| VOLKSWAGEN Beetle Convertible | 2             | 4            |
| VOLKSWAGEN Beetle Dune | 2             | 4            |
| VOLKSWAGEN Beetle Dune Convertible | 2             | 4            |
| VOLKSWAGEN Golf R | 2             | 4            |
| VOLKSWAGEN Jetta | 2             | 4            |
| VOLKSWAGEN Passat | 2             | 4            |
| VOLKSWAGEN Tiguan | 2             | 4            |
| VOLKSWAGEN Tiguan 4Motion | 2             | 4            |
| VOLVO Atlas | 4             | 6            |
| VOLVO Atlas 4Motion | 4             | 6            |
| VOLVO S60  | 2             | 4            |
| VOLVO S60 CC | 2             | 4            |
| VOLVO S60 Inscription | 2             | 4            |
| VOLVO S60 Polestar | 2             | 4            |
| VOLVO S90  | 2             | 4            |
| VOLVO V60  | 2             | 4            |
| VOLVO V60 CC | 2             | 4            |
| VOLVO V60 Polestar | 2             | 4            |
| VOLVO V90  | 2             | 4            |
| VOLVO V90 CC | 2             | 4            |
| VOLVO XC 60 | 2             | 4            |
| VOLVO XC 90 | 2             | 4            |
| BMW 330e   | 2             | 4            |
| BMW 530e   | 2             | 4            |
| BMW 740e   | 2             | 4            |
| CHEVROLET Volt | 2             | 4            |
| FORD Fusion Energi Plug-in Hybrid | 2             | 4            |
| KARMA Revero | 2             | 4            |
| MINI Cooper SE Countryman All4 | 2             | 3            |
| TOYOTA Sequoia FFV | 6             | 8            |
| TOYOTA Tundra FFV | 6             | 8            |

**Querry : Air polution and greenhouse score of each fuel type.**

````sql
select fuel, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by fuel
order by air_pol desc, Avg_greenscore desc;
````

**Results :**

| fuel      | air_pol      | Avg_greenscore      |
| --------- | ------------ | ------------------- |
| Electricity | 5            | 10                  |
| Gasoline  | 4            | 5                   |
| Ethanol   | 4            | 4                   |
| Gas       | 4            | 4                   |
| Diesel    | 2            | 6                   |



**Querry : Air polution and greenhouse score of each vehicle type**

````sql
select veh_class, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by veh_class
order by air_pol desc;
````

**Results :**

| veh_class      | air_pol      | Avg_greenscore      |
| -------------- | ------------ | ------------------- |
| midsize car    | 5            | 6                   |
| small SUV      | 4            | 5                   |
| small car      | 4            | 5                   |
| large car      | 4            | 5                   |
| station wagon  | 4            | 6                   |
| pickup         | 4            | 3                   |
| standard SUV   | 3            | 3                   |
| special purpose | 3            | 3                   |
| minivan        | 3            | 4                   |

**Querry : Air polution and greenhouse score of each transmission type.**

````sql
select trans, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by trans
order by air_pol desc;
````

**Results :**

| trans      | air_pol      | Avg_greenscore      |
| ---------- | ------------ | ------------------- |
| SCV-10     | 7            | 7                   |
| AMS-6      | 6            | 5                   |
| SCV-7      | 6            | 7                   |
| SCV-6      | 6            | 7                   |
| SemiAuto-6 | 5            | 5                   |
| AMS-8      | 5            | 5                   |
| SemiAuto-8 | 5            | 5                   |
| CVT        | 5            | 9                   |
| Man-5      | 5            | 7                   |
| SemiAuto-9 | 4            | 5                   |
| Man-6      | 4            | 5                   |
| Auto-6     | 4            | 4                   |
| SemiAuto-10 | 4            | 3                   |
| Auto-9     | 4            | 5                   |
| AutoMan-7  | 4            | 5                   |
| Auto-7     | 4            | 3                   |
| Auto-8     | 3            | 3                   |
| SemiAuto-7 | 3            | 4                   |
| Auto-10    | 3            | 3                   |
| Auto-4     | 3            | 6                   |
| SemiAuto-5 | 3            | 3                   |
| AMS-7      | 2            | 4                   |
| AutoMan-6  | 1            | 6                   |
| Man-7      | 1            | 4                   |
| SCV-8      | 1            | 5                   |
| Auto-1     | 1            | 10                  |

**Qerry : Air polution and greenhouse score of each drive type**

````sql
select drive, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by drive
order by air_pol desc;
````

**Results :**


| drive      | air_pol      | Avg_greenscore      |
| ---------- | ------------ | ------------------- |
| 2WD        | 4            | 5                   |
| 4WD        | 4            | 4                   |


**Querry :which fuel gives best mileage in city and highway**

````sql
select fuel, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by fuel
order by Avg_city, avg_highway;
````

**Results :**

| fuel      | Avg_city      | avg_highway      | Diff_avg      |
| --------- | ------------- | ---------------- | ------------- |
| Ethanol   | 13            | 18               | 5             |
| Gas       | 18            | 25               | 7             |
| Gasoline  | 21            | 28               | 7             |
| Diesel    | 27            | 37               | 10            |
| Electricity | 76            | 75               | -1            |


**Querry : which drive gives best mileage in city and highway**

````sql
select drive, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by drive
order by Avg_city, avg_highway;
````

**Results :**

| drive      | Avg_city      | avg_highway      | Diff_avg      |
| ---------- | ------------- | ---------------- | ------------- |
| 4WD        | 20            | 27               | 7             |
| 2WD        | 22            | 30               | 8             |


**Querry : which transmission type gives best mileage in city and highway.**

````sql
select trans, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by trans
order by Avg_city, avg_highway;
````

**Results :**


| trans      | Avg_city      | avg_highway      | Diff_avg      |
| ---------- | ------------- | ---------------- | ------------- |
| Auto-10    | 14            | 22               | 8             |
| Auto-7     | 16            | 21               | 5             |
| Auto-8     | 16            | 23               | 7             |
| SemiAuto-5 | 17            | 21               | 4             |
| SemiAuto-10 | 17            | 22               | 5             |
| Auto-6     | 17            | 24               | 7             |
| Man-7      | 19            | 27               | 8             |
| AMS-7      | 20            | 26               | 6             |
| SemiAuto-7 | 20            | 26               | 6             |
| AMS-8      | 20            | 28               | 8             |
| Auto-9     | 20            | 28               | 8             |
| SemiAuto-9 | 20            | 29               | 9             |
| SCV-8      | 21            | 26               | 5             |
| AutoMan-7  | 21            | 28               | 7             |
| SemiAuto-6 | 22            | 29               | 7             |
| Man-6      | 22            | 30               | 8             |
| AMS-6      | 23            | 30               | 7             |
| SemiAuto-8 | 23            | 31               | 8             |
| AutoMan-6  | 24            | 34               | 10            |
| Auto-4     | 25            | 32               | 7             |
| SCV-10     | 26            | 35               | 9             |
| Man-5      | 27            | 35               | 8             |
| SCV-7      | 28            | 35               | 7             |
| SCV-6      | 34            | 37               | 3             |
| Auto-1     | 40            | 41               | 1             |
| CVT        | 46            | 48               | 2             |



**Query : which vehicle class gives best mileage in city and highway**

````sql
select veh_class, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by veh_class
order by Diff_avg desc,Avg_city, avg_highway;
````

**Results :**


| veh_class      | Avg_city      | avg_highway      | Diff_avg      |
| -------------- | ------------- | ---------------- | ------------- |
| large car      | 20            | 29               | 9             |
| midsize car    | 25            | 33               | 8             |
| minivan        | 18            | 25               | 7             |
| small car      | 23            | 30               | 7             |
| station wagon  | 25            | 32               | 7             |
| standard SUV   | 16            | 22               | 6             |
| small SUV      | 22            | 28               | 6             |
| pickup         | 17            | 22               | 5             |
| special purpose | 17            | 21               | 4             |

**Creating View**

````sql
create or replace view wheel_drive as select fuel, veh_class, case 
when drive = "2WD" then 1
end as 2wd,
case
when drive = "4WD" then 1
end as 4wd
from cars;
````

**Query : number of 2-wheeldrive and 4-wheeldrive cars for each fuel type**

````sql
select fuel, sum(2wd) as sum_2wd, sum(4wd) as sum_4wd from wheel_drive group by fuel;
````


| fuel      | sum_2wd      | sum_4wd      |
| --------- | ------------ | ------------ |
| Gasoline  | 418          | 334          |
| Diesel    | 10           | 9            |
| Ethanol   | 12           | 14           |
| Electricity | 6            | 6            |
| Gas       | 12           | 14           |


**Query : number of 2-wheeldrive and 4-wheeldrive cars for each Vehicle type**

````sql
select veh_class, sum(2wd) as sum_2wd, sum(4wd) as sum_4wd from wheel_drive group by veh_class;
````

**Results :**

| veh_class      | sum_2wd      | sum_4wd      |
| -------------- | ------------ | ------------ |
| small SUV      | 35           | 73           |
| small car      | 185          | 100          |
| midsize car    | 88           | 51           |
| large car      | 52           | 36           |
| standard SUV   | 29           | 58           |
| station wagon  | 18           | 17           |
| pickup         | 39           | 39           |
| special purpose | 7            | 3            |
| minivan        | 5            |              |



````sql
create or replace view fuel_type as select veh_class , case
when fuel = "Gasoline" then 1
else 0
end as Gasoline,
case
when fuel = 'Diesel'then 1
else 0
end as Diesel,
case
when fuel = "Ethanol" then 1
else 0
end as Ethanol,
case
when fuel = "Electricity" then 1
else 0
end as Electricity,
case
when fuel = "Gas" then 1
else 0
end as Gas
from cars;
````

**Query : Number of fuel types of each vehicle class.**

````sql
select veh_class,sum(Gasoline) as Total_Gasoline,sum(Diesel) as Total_Diesel,
sum(Ethanol) as Total_Ethanol, sum(Electricity) as Total_Electricity,
sum(Gas) as Total_Gas  from fuel_type group by veh_class;
````

**Results :**

| veh_class      | Total_Gasoline      | Total_Diesel      | Total_Ethanol      | Total_Electricity      | Total_Gas      |
| -------------- | ------------------- | ----------------- | ------------------ | ---------------------- | -------------- |
| small SUV      | 95                  | 6                 | 3                  | 1                      | 3              |
| small car      | 273                 | 4                 | 1                  | 6                      | 1              |
| midsize car    | 132                 | 4                 | 0                  | 3                      | 0              |
| large car      | 77                  | 0                 | 5                  | 1                      | 5              |
| standard SUV   | 66                  | 0                 | 10                 | 1                      | 10             |
| station wagon  | 35                  | 0                 | 0                  | 0                      | 0              |
| pickup         | 59                  | 5                 | 7                  | 0                      | 7              |
| special purpose | 10                  | 0                 | 0                  | 0                      | 0              |
| minivan        | 5                   | 0                 | 0                  | 0                      | 0              |

