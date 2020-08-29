import converters
from converters import kg_to_lbs 

value = kg_to_lbs(70)
value = converters.lbs_to_kg(70)  # we must use converters. cause we did not do from converters import lbs_to_kg

print(value)