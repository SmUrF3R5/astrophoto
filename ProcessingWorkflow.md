# Introduction


# Workflow Steps

- Siril - Stack photos
- Graxpert
    + Crop 
    + Extract Background (mess around with the different AI model versions)
    + Denoise (mess around with the different AI model versions)
    + Save Fits file

- Siril
    - Open Graxpert created fit file
    - Photometric Color Calibration
    - Starnet star removal with pre stretch checked
    - Asinh Transformation 
    - Histogram Transformation
    - Remove Green noise
    - Color saturation each layer
    - Save the starless as a 32bit tif

- Astrosharp
    - Open the 32 bit tif and use 
    - mess around with the different AI models and sliders
    - export image

- Siril
    - open Astrosharp tif image
    - convert to fits
    - Starnet recomposition
    - save final (fits, tif, jpg)



# Resources
- [Siril]()
- Siril Scripts
    - [Seestar stacker]()
    - [Hubble color calibration]()
    - [Drizzle scripts]()
- [Starnet++]()
- [Graxpert]()
- [AstroSharp]()
- [ESTAP]()
