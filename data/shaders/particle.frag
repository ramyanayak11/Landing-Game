{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #version 150\
in vec4 vColor;\
out vec4 outputColor;\
\
void main()\{\
    // smooth radial falloff\
    float d = length(gl_PointCoord - vec2(0.5));\
    float alpha = smoothstep(0.5, 0.0, d);\
    outputColor = vec4(vColor.rgb, vColor.a * alpha);\
\}}