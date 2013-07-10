data MetricUnit = Meter 
                | Liter 
                | KiloGram 
                deriving (Show, Eq)

data ImperialUnit = Yard
                  | Gallon
                  | Pound
                  deriving (Show, Eq)

data Measurement = MetricMeasurement Double MetricUnit
                 | ImperialMeasurement Double ImperialUnit
                 deriving (Show)

symbol :: MetricUnit -> String
symbol m
    | m == Meter = "m"
    | m == Liter = "L"
    | m == KiloGram = "kg"

convert :: Measurement -> Measurement
convert (MetricMeasurement u m)
  | m == Meter    = ImperialMeasurement (1.0936 * u) Yard
  | m == Liter    = ImperialMeasurement (0.2642 * u) Gallon
  | m == KiloGram = ImperialMeasurement (2.2046 * u) Pound

convert (ImperialMeasurement u m)
  | m == Yard   = MetricMeasurement (u / 1.0936) Meter
  | m == Gallon = MetricMeasurement (u / 0.2642) Liter
  | m == Pound  = MetricMeasurement (u / 2.2046) KiloGram