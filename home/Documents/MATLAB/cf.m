%CF plot gstar job schedule

[~,S] = system('ssh rpolking@g2.hpc.swin.edu.au ''/opt/torque/bin/qstat | grep `whoami` '' ');
t0 = datetime;
if S
	S = strsplit(S, '\n');  S = S(1:end-1);
	figure, hold on
	ylim([0 length(S)+1])
	title 'When my jobs are scheduled'
	A = gca;  A.YTick = [];
	for j = 1:length(S)
		s = strsplit(S{j});
		job = sscanf(s{1}, '%d');  name = s{2};
		[out,T] = system(sprintf( ...
			'ssh rpolking@g2.hpc.swin.edu.au ''/opt/moab/bin/showstart %d'' ', ...
			job));
		if out > 0
			text(datenum(t0), j, sprintf('%d still being queued', job), ...
				'HorizontalAlignment', 'left', 'VerticalAlignment', 'bot')
			continue
		end
		T = strsplit(T, '\n');
		T = T(cellfun(@(x) ismember(1,x), strfind(T, 'Estimated')));
		for i = 1:2
			a = strsplit(T{i});  a = a{6};
			if a(1) == '-'
				a = a(2:end);
				sn = -1;
			else
				sn = 1;
			end
			a = cellfun(@str2num, strsplit(a,':'), 'UniformOutput', false);
			if length(a) == 4
				a = [24*a{1}+a{2} a(3:4)];
			end
			assert(length(a) == 3)
			sf(i) = t0 + sn*duration(a{:});
		end
		text(datenum(mean(sf)), j, sprintf('%s %d', name, job), ...
			'HorizontalAlignment', 'center', 'VerticalAlignment', 'bot')
		plot(sf, [j j], '-k', 'LineWidth', 3)
	end
	ylim([0 length(S)+1])
	plot([t0 t0], ylim, '--k')
	title 'When my jobs are scheduled'
	A = gca;  A.YTick = [];
end