hdr_hallucination_matlab
========================

Hdr hallucination based on research paper by Wang, Wei, Guo, Shum in 2007 (http://www.kunzhou.net/publications/HDR-egsr07.pdf). Implemented in MATLAB.

User runs hdr_hallucination(input_image), selects overexposed and corresponding underexposed regions. The program will then hallucinate an HDR result. Base functionality being worked on right now is a single iteration of the algorithm for regions that can be hallucinated without regards to differing source/destination patch warping. Future versions may run more as an interactive application where a user may see results immediately and can modify as many regions as needed.

Included is tracks.png for demonstrationg purposes.
