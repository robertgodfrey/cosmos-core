/*! \file convert_test.cpp
*   \brief Command line simulator
*/
#include "physicslib.h"
#include "mathlib.h"
#include "jsonlib.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

cosmosstruc *cdata;
locstruc tloc, loc, iloc;
rvector ilvlh;
double utc, value;
kepstruc kep;

void compare();

int main(int argc, char *argv[])
{
rvector vec1;

iloc.pos.eci.s.col[0] = 5111777.399;
iloc.pos.eci.s.col[1] = 4451164.779;
iloc.pos.eci.s.col[2] = -6767.025;
iloc.pos.eci.v.col[0] = -5022.687260;
iloc.pos.eci.v.col[1] = 5768.132100;
iloc.pos.eci.v.col[2] = 6.979330;
eci2kep(&iloc.pos.eci,&kep);

utc = 56536.916666670;
//utc = 51544.5;

iloc.pos.geoc.s.col[0] = 1.02445483207703e-008;
iloc.pos.geoc.s.col[1] = 6.77814000000000e+006;
iloc.pos.geoc.s.col[2] = -2.55795384873636e-013;
iloc.pos.geoc.v.col[0] = -7.15418000000000e+003;
iloc.pos.geoc.v.col[1] = 3.80042924903862e-012;
iloc.pos.geoc.v.col[2] = 5.78053230282372e-015;
iloc.pos.geoc.a.col[0] = 4.89496454722542e-003;
iloc.pos.geoc.a.col[1] = -7.59651669139105;
iloc.pos.geoc.a.col[2] = 1.54689460491473e-006;

iloc.pos.geos.s.phi = 0.;
iloc.pos.geos.s.lambda = 1.57079633;
iloc.pos.geos.s.r = 6778140.000;
iloc.pos.geos.v.phi = 0.;
iloc.pos.geos.v.lambda = 0.00105548;
iloc.pos.geos.v.r = 0.;
iloc.pos.geos.a.phi = 0.;
iloc.pos.geos.a.lambda = 0.0000000005;
iloc.pos.geos.a.r = -0.0454021;

iloc.pos.geod.s.lat = iloc.pos.geos.s.phi;
iloc.pos.geod.s.lon = iloc.pos.geos.s.lambda;
iloc.pos.geod.s.h = iloc.pos.geos.s.r - 6378137;
iloc.pos.geod.v.lat = iloc.pos.geos.v.phi;
iloc.pos.geod.v.lon = iloc.pos.geos.v.lambda;
iloc.pos.geod.v.h = iloc.pos.geos.v.r;
iloc.pos.geod.a.lat = iloc.pos.geos.a.phi;
iloc.pos.geod.a.lon = iloc.pos.geos.a.lambda;
iloc.pos.geod.a.h = iloc.pos.geos.a.r;

iloc.pos.eci.s.col[0] = 5111777.399;
iloc.pos.eci.s.col[1] = 4451164.779;
iloc.pos.eci.s.col[2] = -6767.025;
iloc.pos.eci.v.col[0] = -5022.687260;
iloc.pos.eci.v.col[1] = 5768.132100;
iloc.pos.eci.v.col[2] = 6.979330;
iloc.pos.eci.a.col[0] = -6.539801981;
iloc.pos.eci.a.col[1] = -5.701131464;
iloc.pos.eci.a.col[2] = 8.657247835e-003;

iloc.att.icrf.s = q_eye();
iloc.att.icrf.v = rv_unitz();
iloc.att.icrf.a = rv_zero();

iloc.utc = utc;
iloc.pos.eci.pass++;
pos_eci(&iloc);

iloc.att.lvlh.s = q_eye();
iloc.att.lvlh.v = rv_zero();
iloc.att.lvlh.a = rv_zero();
iloc.att.lvlh.pass++;
att_lvlh(&iloc);

quaternion qe_z, qe_y, fqe;

qe_z = q_conjugate(q_change_between_rv(iloc.pos.eci.s,iloc.pos.geoc.s));
qe_y = q_conjugate(q_change_between_rv(transform_q(qe_z,rv_unitz()),rv_unitz()));
fqe = q_mult(qe_z,qe_y);
fqe = q_dcm2quaternion_rm(iloc.pos.extra.e2j);

vec1 = transform_q(iloc.att.icrf.s,iloc.pos.eci.s);
vec1 = transform_q(iloc.att.geoc.s,iloc.pos.geoc.s);
vec1 = transform_q(iloc.att.icrf.s,iloc.pos.eci.v);
vec1 = transform_q(iloc.att.geoc.s,iloc.pos.geoc.v);
vec1 = transform_q(iloc.att.icrf.s,iloc.att.icrf.v);
vec1 = transform_q(iloc.att.geoc.s,iloc.att.geoc.v);
vec1 = transform_q(iloc.att.lvlh.s,iloc.att.lvlh.v);

vec1 = transform_q(iloc.att.icrf.s,rv_unitx());
vec1 = transform_q(iloc.att.icrf.s,rv_unity());
vec1 = transform_q(iloc.att.icrf.s,rv_unitz());
vec1 = transform_q(iloc.att.geoc.s,rv_unitx());
vec1 = transform_q(iloc.att.geoc.s,rv_unity());
vec1 = transform_q(iloc.att.geoc.s,rv_unitz());
vec1 = transform_q(iloc.att.lvlh.s,rv_unitx());
vec1 = transform_q(iloc.att.lvlh.s,rv_unity());
vec1 = transform_q(iloc.att.lvlh.s,rv_unitz());
vec1 = transform_q(iloc.att.topo.s,rv_unitx());

ilvlh.col[0] = ilvlh.col[1] = 0.;
ilvlh.col[2] = -length_rv(iloc.pos.eci.s);

rvector tpos = rotate_q(iloc.att.icrf.s,iloc.pos.eci.s);
tpos = transform_q(iloc.att.icrf.s,iloc.pos.eci.s);
tpos = rotate_q(iloc.att.geoc.s,iloc.pos.geoc.s);
tpos = transform_q(iloc.att.geoc.s,iloc.pos.geoc.s);

loc.utc = iloc.utc;
loc.pos.baryc = iloc.pos.baryc;
loc.att.icrf = iloc.att.icrf;
loc.pos.baryc.pass++;
pos_baryc(&loc);
printf("From Barycentric\n");
compare();
printf("\n");

//pos_clear(loc);
loc.pos.eci = iloc.pos.eci;
loc.att.icrf = iloc.att.icrf;
loc.pos.eci.pass++;
pos_eci(&loc);
printf("From ECI\n");
compare();
printf("\n");

//pos_clear(loc);
loc.pos.geoc = iloc.pos.geoc;
loc.att.geoc = iloc.att.geoc;
loc.pos.geoc.pass++;
pos_geoc(&loc);
printf("From Geocentric\n");
compare();
printf("\n");

//pos_clear(loc);
loc.pos.geod = iloc.pos.geod;
loc.att.geoc = iloc.att.geoc;
loc.pos.geod.pass++;
pos_geod(&loc);
printf("From Geodetic\n");
compare();
printf("\n");

}


void compare()
{
double mag1, mag2;
uvector u1, u2;
rvector vec1;

printf("pos_bary: ");
mag1 = length_rv(iloc.pos.baryc.s);
mag2 = length_rv(rv_sub(loc.pos.baryc.s,iloc.pos.baryc.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.baryc.v);
mag2 = length_rv(rv_sub(loc.pos.baryc.v,iloc.pos.baryc.v));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.baryc.a);
mag2 = length_rv(rv_sub(loc.pos.baryc.a,iloc.pos.baryc.a));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_eci: ");
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(loc.pos.eci.s,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.eci.v);
mag2 = length_rv(rv_sub(loc.pos.eci.v,iloc.pos.eci.v));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.eci.a);
mag2 = length_rv(rv_sub(loc.pos.eci.a,iloc.pos.eci.a));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("att_icrf: ");
mag1 = length_rv(rv_quaternion2axis(q_mult(iloc.att.icrf.s,q_conjugate(loc.att.icrf.s))));
if (mag1 > DPI)
	mag1 = length_rv(rv_quaternion2axis(q_smult(-1.,q_mult(iloc.att.icrf.s,q_conjugate(loc.att.icrf.s)))));
printf("Theta: %.10g ",mag1);
mag1 = length_rv(iloc.att.icrf.v);
mag2 = length_rv(rv_sub(loc.att.icrf.v,iloc.att.icrf.v));
printf("Omega: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.att.icrf.a);
mag2 = length_rv(rv_sub(loc.att.icrf.a,iloc.att.icrf.a));
printf("Alpha: %.10g %.10g ",mag2,(mag2)/mag1);
vec1 = transform_q(q_conjugate(loc.att.icrf.s),transform_q(loc.att.lvlh.s,transform_q(q_conjugate(loc.att.lvlh.s),transform_q(loc.att.icrf.s,iloc.pos.eci.s))));
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(vec1,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_geoc: ");
mag1 = length_rv(iloc.pos.geoc.s);
mag2 = length_rv(rv_sub(loc.pos.geoc.s,iloc.pos.geoc.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.geoc.v);
mag2 = length_rv(rv_sub(loc.pos.geoc.v,iloc.pos.geoc.v));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.geoc.a);
mag2 = length_rv(rv_sub(loc.pos.geoc.a,iloc.pos.geoc.a));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("att_geoc: ");
mag1 = length_rv(rv_quaternion2axis(q_mult(iloc.att.geoc.s,q_conjugate(loc.att.geoc.s))));
if (mag1 > DPI)
	mag1 = length_rv(rv_quaternion2axis(q_smult(-1.,q_mult(iloc.att.geoc.s,q_conjugate(loc.att.geoc.s)))));
printf("Theta: %.10g ",mag1);
mag1 = length_rv(iloc.att.geoc.v);
mag2 = length_rv(rv_sub(loc.att.geoc.v,iloc.att.geoc.v));
printf("Omega: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.att.geoc.a);
mag2 = length_rv(rv_sub(loc.att.geoc.a,iloc.att.geoc.a));
printf("Alpha: %.10g %.10g ",mag2,(mag2)/mag1);
vec1 =
transform_q(q_conjugate(loc.att.icrf.s),transform_q(loc.att.geoc.s,iloc.pos.geoc.s));
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(vec1,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_geos: ");
u1.s = iloc.pos.geos.s;
u2.s = loc.pos.geos.s;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
u1.s = iloc.pos.geos.v;
u2.s = loc.pos.geos.v;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
u1.s = iloc.pos.geos.a;
u2.s = loc.pos.geos.a;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_geod: ");
u1.g = iloc.pos.geod.s;
u2.g = loc.pos.geod.s;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
u1.g = iloc.pos.geod.v;
u2.g = loc.pos.geod.v;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
u1.g = iloc.pos.geod.a;
u2.g = loc.pos.geod.a;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_sci: ");
mag1 = length_rv(iloc.pos.sci.s);
mag2 = length_rv(rv_sub(loc.pos.sci.s,iloc.pos.sci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.sci.v);
mag2 = length_rv(rv_sub(loc.pos.sci.v,iloc.pos.sci.v));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.sci.a);
mag2 = length_rv(rv_sub(loc.pos.sci.a,iloc.pos.sci.a));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_selc: ");
mag1 = length_rv(iloc.pos.selc.s);
mag2 = length_rv(rv_sub(loc.pos.selc.s,iloc.pos.selc.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.selc.v);
mag2 = length_rv(rv_sub(loc.pos.selc.v,iloc.pos.selc.v));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.pos.selc.a);
mag2 = length_rv(rv_sub(loc.pos.selc.a,iloc.pos.selc.a));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("att_selc: ");
mag1 = length_rv(rv_quaternion2axis(q_mult(iloc.att.selc.s,q_conjugate(loc.att.selc.s))));
if (mag1 > DPI)
	mag1 = length_rv(rv_quaternion2axis(q_smult(-1.,q_mult(iloc.att.selc.s,q_conjugate(loc.att.selc.s)))));
printf("Theta: %.10g ",mag1);
mag1 = length_rv(iloc.att.selc.v);
mag2 = length_rv(rv_sub(loc.att.selc.v,iloc.att.selc.v));
printf("Omega: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.att.selc.a);
mag2 = length_rv(rv_sub(loc.att.selc.a,iloc.att.selc.a));
printf("Alpha: %.10g %.10g ",mag2,(mag2)/mag1);
vec1 =
transform_q(q_conjugate(loc.att.icrf.s),transform_q(loc.att.selc.s,iloc.pos.selc.s));
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(vec1,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("pos_selg: ");
u1.g = iloc.pos.selg.s;
u2.g = loc.pos.selg.s;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
u1.g = iloc.pos.selg.v;
u2.g = loc.pos.selg.v;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("V: %.10g %.10g ",mag2,(mag2)/mag1);
u1.g = iloc.pos.selg.a;
u2.g = loc.pos.selg.a;
u1.r.col[3] = u2.r.col[3] = 0.;
mag1 = length_rv(u1.r);
mag2 = length_rv(rv_sub(u2.r,u1.r));
printf("A: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("att_lvlh: ");
mag1 = length_rv(rv_quaternion2axis(q_mult(iloc.att.lvlh.s,q_conjugate(loc.att.lvlh.s))));
if (mag1 > DPI)
	mag1 = length_rv(rv_quaternion2axis(q_smult(-1.,q_mult(iloc.att.lvlh.s,q_conjugate(loc.att.lvlh.s)))));
printf("Theta: %.10g ",mag1);
mag1 = length_rv(iloc.att.lvlh.v);
mag2 = length_rv(rv_sub(loc.att.lvlh.v,iloc.att.lvlh.v));
printf("Omega: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.att.lvlh.a);
mag2 = length_rv(rv_sub(loc.att.lvlh.a,iloc.att.lvlh.a));
printf("Alpha: %.10g %.10g ",mag2,(mag2)/mag1);
vec1 = transform_q(q_conjugate(loc.att.icrf.s),transform_q(loc.att.lvlh.s,ilvlh));
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(vec1,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

printf("att_topo: ");
mag1 = length_rv(rv_quaternion2axis(q_mult(iloc.att.topo.s,q_conjugate(loc.att.topo.s))));
if (mag1 > DPI)
	mag1 = length_rv(rv_quaternion2axis(q_smult(-1.,q_mult(iloc.att.topo.s,q_conjugate(loc.att.topo.s)))));
printf("Theta: %.10g ",mag1);
mag1 = length_rv(iloc.att.topo.v);
mag2 = length_rv(rv_sub(loc.att.topo.v,iloc.att.topo.v));
printf("Omega: %.10g %.10g ",mag2,(mag2)/mag1);
mag1 = length_rv(iloc.att.topo.a);
mag2 = length_rv(rv_sub(loc.att.topo.a,iloc.att.topo.a));
printf("Alpha: %.10g %.10g ",mag2,(mag2)/mag1);
vec1 =
transform_q(q_conjugate(loc.att.icrf.s),transform_q(loc.att.topo.s,transform_q(q_conjugate(loc.att.topo.s),transform_q(loc.att.icrf.s,iloc.pos.eci.s))));
mag1 = length_rv(iloc.pos.eci.s);
mag2 = length_rv(rv_sub(vec1,iloc.pos.eci.s));
printf("S: %.10g %.10g ",mag2,(mag2)/mag1);
printf("\n");

}
