
load('q_in_originale_mae.mat')
load('qd_in_originale_mae.mat')

rayon = 150;

tic
for speed = 29:33;
    for k_av = [0 50000 100000 150000 200000];
        for k_arr = [0 50000 100000 150000 200000];
            display('------------------------')
            display('------------------------')
            display(speed)
            display(k_av)
            display(k_arr)
            display('------------------------')
            display('------------------------')
            name = strcat(['originale' '_R_' num2str(rayon) '_speed_' num2str(speed) '_kav_' num2str(k_av) '_karr_' num2str(k_arr) '.anim']);
            [~,~,~,] = startLimo([0 10], 0, name, q_in, qd_in, speed, [k_av k_arr]);
        end
    end
end
toc

