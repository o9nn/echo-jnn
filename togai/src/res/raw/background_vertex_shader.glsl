// A simple vertex shader for a full-screen quad
attribute vec4 aPosition;
attribute vec2 aTexCoord;
uniform mat4 uMatrix; // For projection and model-view

varying vec2 vTexCoord; // Passed to the fragment shader

void main() {
    gl_Position = uMatrix * aPosition;
    vTexCoord = aTexCoord;
}