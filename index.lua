-- FAHRENHEIT TO CELSIUS CONVERSION
function fahrenheitToCelsius(degrees)
    offsetDegrees = degrees - 32
    conversionFactor = 5/9
    return offsetDegrees * conversionFactor
  end
  
  -- FAHRENHEIT TO KELVIN CONVERSION
  function fahrenheitToKelvin(degrees)
    degreesCelsius = fahrenheitToCelsius(degrees)
    return degreesCelsius + 273.15
  end
  
  -- FAHRENHEIT TO WARMTH CONVERSION
  function fahrenheitToWarmth(degrees)
    degreesWarmth = fahrenheitToCelsius(degrees)
    degreesWarmth = degreesWarmth + 273.15
    return degreesWarmth / 42
  end
  
  function convertTemperature(targetUnit, degrees)
    correctedString = string.lower(targetUnit)
    if correctedString == "kelvin" then
      return fahrenheitToKelvin(degrees)
    elseif correctedString == "celsius" then
      return fahrenheitToCelsius(degrees)
    elseif correctedString == "warmth" then
      return fahrenheitToWarmth(degrees)
    else
      print("Invalid Input")
      return nil
    end
  end
  
  inputDegrees = 200
  convertedDegrees = convertTemperature("warmth", inputDegrees)
  
  print(convertedDegrees)
  