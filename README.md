# Bihar District-Wise Computation of HDI & Visualization Using QGIS

## Project Description
This project visualizes the Human Development Index (HDI) for the districts in Bihar, India, using QGIS. 
The aim is to provide a clear and insightful representation of HDI values across the state, highlighting regional disparities and aiding in data-driven decision-making. 
The map includes district names and a color-coded heat map for easy interpretation.

## Dataset
The HDI data was computed from the National Family Health Survey (NFHS) dataset. 
The district boundary shapefile was obtained from the GADM database. 
The data was cleaned and standardized before being used in QGIS to ensure accurate visualization.

## Project Structure
- 'Bihar_HFI_Computed.csv' - CSV file with the computed values for each district
- 'Bihar_HDI_Heatmap.png' - Final exported heatmap image
- 'do file.do' - Stata commands used to computed Education Index, Health Index, Wealth Index and HDI Index using the raw NFHS data
- 'IAPR71FL.do' - Conatins the do file of the raw NFHS-4 data
- `README.md` - This README file.

## Results
The final map clearly shows the variation in HDI across Bihar's districts. 
Areas with higher and lower HDI are easily identifiable, providing valuable insights for policymakers and researchers.
