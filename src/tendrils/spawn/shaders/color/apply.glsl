/**
 * Directly uses a normal image - brightness being speed in a direction defined
 * by the `rgba` channels.
 */

#pragma glslify: luma = require(glsl-luma)

#pragma glslify: tau = require(../../../shaders/const/tau)
#pragma glslify: angleToPos = require(../../../shaders/utils/angle-to-pos)

vec4 apply(in vec2 uv, in vec2 pos, in vec4 data) {
    return vec4(pos,
        angleToPos((data.r+data.g+data.b)/3.0*tau)*luma(data)*data.a*0.01);
}

#pragma glslify: export(apply)
