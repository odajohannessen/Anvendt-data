% dx and dy: spatial grid spacing
% dt: temporal grid spacing
% Nx and Ny: amount of spatial grid points
% Nt: amount of temporal grid points
% c: wave speed
% f0: peak frequency of source
% t0: time delay (check this)
% sx and sy: location of source

function wave = numericalsolver(dx,dy,dt,Nx,Ny,Nt,c,f0,t0,sx,sy)
    
    tic
    
    % Spatial grid
    x = 0:dx:(Nx*dx); 
    y = 0:dy:(Ny*dy);
    
    % Time steps
    tfinal = Nt*dt;
    t = 0:dt:tfinal;   
    i = 2:Nx;
    j = 2:Ny;
    
    % Solution arrays
    p_n = zeros(Nx,Ny); % solution at next time step
    p_c = zeros(Nx,Ny); % solution at current time step
    p_p = zeros(Nx,Ny); % solution at previous time step
    
    %k
    h = dx; % to reduce computational time h = dx = dy;
    k = ((dt*c)/h)^2;
    l = h^(2)*k;
    
    % Initial conditions
    p1 = 0; % n = 1 + 0
    p2 = l*ricker(t,t0,f0); % n = 1+1
    dtp2 = ;
    
    % Boundary conditions (reflective boundary, p = 0)
    Pbndx0 = 0;
    Pbndy0 = 0;
    PbndLx = 0;
    PbndLy = 0;
    
    for n = 2 : Nt
        p(i,j,n+1) =  ;
        
  
    end
    
    tok
    
    %plot
    
end