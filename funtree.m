function  writel(varargin)
if nargin == 1
    fprintf('%d',varargin{1})
elseif nargin == 2
    fprintf(varargin{2},'%d',varargin{1});
end
end