CREATE TABLE car_makers (
    Id        INTEGER,
    PRIMARY KEY (Id),
    Maker     TEXT,
    FullName  TEXT,
    Country   TEXT,
    FOREIGN KEY (Country) REFERENCES countries (CountryId)
);
CREATE TABLE car_names (
    MakeId  INTEGER,
    PRIMARY KEY (MakeId),
    Model   TEXT,
    Make    TEXT,
    FOREIGN KEY (Model) REFERENCES model_list (Model)
);
CREATE TABLE cars_data (
    Id          INTEGER,
    PRIMARY KEY (Id),
    MPG         TEXT,
    Cylinders   INTEGER,
    Edispl      REAL,
    Horsepower  TEXT,
    Weight      INTEGER,
    Accelerate  REAL,
    Year        INTEGER,
    FOREIGN KEY (Id) REFERENCES car_names (MakeId)
);
CREATE TABLE continents (
    ContId     INTEGER,
    PRIMARY KEY (ContId),
    Continent  TEXT   
);
CREATE TABLE countries (
    CountryId    INTEGER,
    PRIMARY KEY (CountryId),
    CountryName  TEXT,
    Continent    INTEGER,
    FOREIGN KEY (Continent) REFERENCES continents (ContId)
);
CREATE TABLE model_list (
    ModelId  INTEGER UNIQUE,
    PRIMARY KEY (ModelId),
    Maker    INTEGER,
    Model    TEXT,
    FOREIGN KEY (Maker) REFERENCES car_makers (Id)
);