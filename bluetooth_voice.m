function ob=bluetooth_voice
clc;
disp('Searching Bluetooth Devices');
r=instrhwinfo('Bluetooth');
rn=r.RemoteNames;
[s,v] = listdlg('PromptString','Select a device:',...
                'SelectionMode','single',...
                'ListString',rn);
            if(v)
                sd=cell2mat(rn(s));
                b=instrhwinfo('bluetooth',sd);
                ob=eval(cell2mat(b.ObjectConstructorName));
                ob.Terminator='#' ;        
            end
end