/*
author:  Inigo Quiles
description: repite operation of one 2D SDFs 
use: <vec4> opElongate( in <vec3> p, in <vec3> h )
license: |
    The MIT License
    Copyright © 2018 Inigo Quilez
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

    A technique used to generate new types of primitives in an exact way,
    without breaking the metric or introducing distortions to the field.

    Related techniques:
    Elongation  : https://www.shadertoy.com/view/Ml3fWj
    Rounding    : https://www.shadertoy.com/view/Mt3BDj
    Onion       : https://www.shadertoy.com/view/MlcBDj
    Metric      : https://www.shadertoy.com/view/ltcfDj
    Combination : https://www.shadertoy.com/view/lt3BW2
    Repetition  : https://www.shadertoy.com/view/3syGzz
    Extrusion2D : https://www.shadertoy.com/view/4lyfzw
    Revolution2D: https://www.shadertoy.com/view/4lyfzw
    
    More information here: http://iquilezles.org/www/articles/distfunctions/distfunctions.htm
*/

#ifndef FNC_OPREPITE
#define FNC_OPREPITE

// Create multiple copies of an object - http://iquilezles.org/www/articles/distfunctions/distfunctions.htm
vec2 opRepite( in vec2 p, in float s, in vec2 lima, in vec2 limb ) {
    return p-s*clamp(round(p/s),lima,limb);
}

// Create infinite copies of an object -  http://iquilezles.org/www/articles/distfunctions/distfunctions.htm
vec2 opRepite( in vec2 p, in float s ) {
    return mod(p+s*0.5,s)-s*0.5;
}

#endif

