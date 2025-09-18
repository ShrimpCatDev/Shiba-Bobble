extern float time;
extern vec4 color1;
extern vec4 color2;

vec4 effect(vec4 color, Image texture, vec2 tex, vec2 screen) {
    if(mod((screen.y+screen.x+(time*86))/2,32)>16){
        return color1;
    }
    else{
        return color2;
    }
}