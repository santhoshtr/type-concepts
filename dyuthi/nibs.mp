input plain_ex;

thick:= 30;
thin:=10;
% Ellipitical nibs
vardef terminal_thick_nib = fix_nib(thick*1.2, thick*1.2, 0) enddef;
vardef terminal_thin_nib = fix_nib(thin, thin, 0) enddef;
% Razor nibs
vardef thick_nib = fix_nib(thick, 0, 0) enddef;
vardef thin_nib = fix_nib(thin, 0, 0) enddef;