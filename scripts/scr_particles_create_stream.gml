/// Create a burst of particles (emitter needed)
// scr_particles_create_stream(x, y, ptype, pemitter, num_particles)

px = argument0; // particles x position
py = argument1; // particles y position
pt = argument2; // particles type
pe = argument3; // particle emitter
pn = argument4; // particles to generate

switch (pe) {
    // ADD YOUR EMITTERS HERE IN A CASE STATEMENT!
    case 0: part_emitter_region(sprSystem, sprEmitter[0], px-64, px+64, py-64, py+64, ps_shape_ellipse, ps_distr_gaussian); break;
    case 1: part_emitter_region(sprSystem, sprEmitter[1], px-5, px+5, py-14, py+14, ps_shape_diamond, ps_distr_linear); break;
    case 2: part_emitter_region(sprSystem, sprEmitter[2], px-16, px+16, py-1, py+1, ps_shape_diamond, ps_distr_linear); break;
    case 3: part_emitter_region(sprSystem, sprEmitter[3], px-4, px+4, py-4, py+4, ps_shape_ellipse, ps_distr_gaussian); break;
}
part_emitter_stream(sprSystem, sprEmitter[pe], sprParticle[pt], pn);
