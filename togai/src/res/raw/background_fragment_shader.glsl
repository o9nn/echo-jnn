// A simple fragment shader to sample a texture
precision mediump float; // Define default precision for floats

varying vec2 vTexCoord;
uniform sampler2D uTextureSampler; // The texture to sample

void main() {
    gl_FragColor = texture2D(uTextureSampler, vTexCoord);
}