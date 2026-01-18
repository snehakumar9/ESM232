# ESM 232 - Assignment 1
# Sneha Kumar
# January 9, 2026

# Function to Calculate Energy Produced from a P-V System
# Summary: The total amount of energy produced by a photo-voltaic system is based on
# the average annual solar radiation of the site at which the system is installed, as well as
# the total size of the photo-voltaic system (surface area, measured in square meters) and
# the average yield and performance ratio of the panel.
# The following function computes the total energy (in kWh) produced, given all of the above listed variables.

# The formula to calculate this is E = A x r x H x PR, where:
# @param E is energy produced (in kWh)
# @param A is the area of the solar panel (in sq. meters)
# @param r is the panel yield (typically around 0.2)
# @param H is average annual solar radiation (in kWh/sq.meters)
# @param PR is the performance ratio (typically around 0.75)

# The following function calculates the total energy produced (in kWh)
solarenergyfunction <- function(A, R=0.2, H, PR=0.75)
{E = A*R*H*PR
ifelse(A<0, NA, return(E))}