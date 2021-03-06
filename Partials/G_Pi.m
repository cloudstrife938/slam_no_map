function dg_pi = G_Pi(alpha_u,alpha_v,b,d,s1,s2,s3,u,u0,v,v0)
%G_PI
%    DG_PI = G_PI(ALPHA_U,ALPHA_V,B,D,S1,S2,S3,U,U0,V,V0)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    28-Nov-2019 12:08:37

t2 = sparse(s1.^2);
t3 = sparse(s1.^3);
t4 = sparse(s2.^2);
t5 = sparse(s2.^3);
t6 = sparse(s3.^2);
t7 = sparse(s3.^3);
t8 = sparse(s1.*s2.*2.0);
t9 = sparse(s1.*s3.*2.0);
t10 = sparse(s2.*s3.*2.0);
t11 = sparse(1.0./alpha_v);
t12 = sparse(1.0./d);
t14 = sparse(-s1);
t15 = sparse(-s2);
t16 = sparse(-s3);
t17 = sparse(-u0);
t18 = sparse(-v0);
t13 = sparse(t12.^2);
t19 = sparse(-t8);
t20 = sparse(-t9);
t21 = sparse(s1.*t4);
t22 = sparse(s2.*t2);
t23 = sparse(s1.*t6);
t24 = sparse(s3.*t2);
t25 = sparse(s2.*t6);
t26 = sparse(s3.*t4);
t27 = sparse(t2.*8.0);
t28 = sparse(t4.*8.0);
t29 = sparse(t6.*8.0);
t30 = sparse(t17+u);
t31 = sparse(t18+v);
t32 = sparse(t2+t4+t6+1.0);
t33 = sparse(t27+t29);
t34 = sparse(t28+t29);
t35 = sparse(1.0./t32.^2);
t36 = sparse(t3+t10+t14+t21+t23);
t37 = sparse(t7+t8+t16+t24+t26);
t38 = sparse(t5+t15+t20+t22+t25);
t39 = sparse(t7+t16+t19+t24+t26);
t40 = sparse(t33.*t35);
t41 = sparse(t34.*t35);
t42 = sparse(t40-1.0);
t43 = sparse(t41-1.0);
dg_pi = sparse([1,2,3,1,2,3,1,2,3],[1,1,1,2,2,2,3,3,3],[b.*t12.*t43,b.*t12.*t35.*t37.*-4.0,b.*t12.*t35.*t38.*4.0,alpha_u.*b.*t11.*t12.*t35.*t39.*4.0,alpha_u.*b.*t11.*t12.*t42,alpha_u.*b.*t11.*t12.*t35.*t36.*-4.0,-b.*t13.*t30.*t43-alpha_u.*b.*t13.*t35.*(t5+t9+t15+t22+t25).*4.0-alpha_u.*b.*t11.*t13.*t31.*t35.*t39.*4.0,alpha_u.*b.*t13.*t35.*(t3-t10+t14+t21+t23).*4.0+b.*t13.*t30.*t35.*t37.*4.0-alpha_u.*b.*t11.*t13.*t31.*t42,alpha_u.*b.*t13.*(t35.*(t27+t28)-1.0)-b.*t13.*t30.*t35.*t38.*4.0+alpha_u.*b.*t11.*t13.*t31.*t35.*t36.*4.0],3,3);
