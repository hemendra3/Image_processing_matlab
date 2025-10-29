# Image Processing & Block Motion Estimation in MATLAB

This project demonstrates basic image processing and block-based motion estimation (using the Sum of Absolute Differences, SAD) in MATLAB. It can be used to study how motion estimation is performed in video compression algorithms.

## Features

- Reads two consecutive image frames (e.g., from a video sequence).
- Converts RGB images to a YCbCr-like color space (luminance-chrominance).
- Extracts the luminance ("Y") channel for analysis.
- (Optionally) Resizes frames to 640x480.
- Divides frames into 16x16 blocks and performs motion estimation using SAD within a search window.
- Visualizes the reference, prediction, and processed frames.

## Files

- `processing.m` — Main MATLAB script for reading images, converting color spaces, and performing block-based motion estimation.
- (Missing) `RG2YCBCR.m` — Custom function to convert RGB images to YCbCr. You need to provide or implement this.
- `Car001.tiff`, `Car002.tiff` — Example image frames (not included; supply your own).

## Usage

1. Place `processing.m` and your image frames (e.g., `Car001.tiff`, `Car002.tiff`) in the same directory.
2. Provide (or implement) the `RG2YCBCR.m` function, or replace its usage with MATLAB’s built-in `rgb2ycbcr`.
3. Open MATLAB and run the script:
   ```matlab
   processing
   ```
4. The script will display:
   - The original frames,
   - The YCbCr-converted frames,
   - (Optionally) visualization of motion vectors (if you fix/complete the plotting code).

## Notes

- The script is **not fully functional** as is. It requires:
  - Bug fixes (syntax errors, variable naming consistency).
  - The missing `RG2YCBCR` function.
  - Correct block indexing for the SAD calculation.
- Intended for educational use to illustrate motion estimation concepts.

## To Do

- Fix syntax and logic errors in the code.
- Implement or provide the `RG2YCBCR` function.
- Add error handling for image loading.
- Improve visualization of motion vectors.

## References

- [MATLAB: rgb2ycbcr documentation](https://www.mathworks.com/help/images/ref/rgb2ycbcr.html)
- [Block Matching Algorithms for Motion Estimation](https://en.wikipedia.org/wiki/Block-matching_algorithm)
