function top()
% time output and productivity

	% tasks is a cell array whose rows are {name dates hours outputs completions}

	plandir = '/Users/rpolkinghorne/workshop/plans';
	D = dir(plandir);  D = D(~[D.isdir]);
	tasks = {};
	for s = {D.name}
		F = fopen(fullfile(plandir, s{:}));
		tasks = [tasks; readtasks(F, s)];
		fclose(F);
	end
	disp(tasks)
end

function X = readtasks(F, name)
	% skip to DONE section
	X = {};  tab = sprintf('\t');
	while true
		L = fgetl(F);
		if ~ischar(L), return, end
		if strcmp(strtrim(L), 'DONE'), break, end
	end
	
	% read until we find something that isn't a date or an indented comment
	% precondition: L is 'DONE'
	T = [];  H = [];  P = [];
	while true
		L = fgetl(F);
		if ~ischar(L), break, end
		L = strsplit(L, tab);  L = strtrim(L);
		lx = strcmp(L, '');
		if lx(1), continue, end
		if length(L) == 4
			L = {L{1:2} '0' L{3:4}};
		end
		lx(end) = true;  ix = find(~lx);
		C = {'' '0' '0' 'nan'};  C(ix) = L(ix);
		try
			t = datetime(C{1}, 'InputFormat', 'yyyy-MM-dd');
		catch it
			break
		end
		X = [name C];
	end
end
