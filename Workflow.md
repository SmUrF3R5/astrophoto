# Introduction


# Workflow Steps

- Siril - Stack photos
    - Seestar Preprocessing script 
    - Crop
    - Background Extraction
    - Place squares on background only no stars or nebulosity
        mess around with Smoothing

    - Dynamic PSF Threshold 0.10 0.70
    - Deconvolution
        PSF from Stars
        PSF size 6-15 
        Iterations 4 usually 2
        Generate PSF
        Apply

    - save linear
    - remove stars in linear with prestretch   
    - Manual Color Calibration

remove green noise
# Split channels into Red, Green, & Blue files
# These files are created in the working directory
# and can be deleted when the script finishes.
split R G B

#Create the RGB composite from the split channel files
rgbcomp -lum=R.fit R.fit R.fit G.fit

# Load the completed file
load composed_lrgb.fit

#Remove green noise
rmgreen




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
