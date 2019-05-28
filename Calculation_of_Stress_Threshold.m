function varargout =Calculation_of_Stress_Threshold(varargin)
% CALCULATION_OF_STRESS_THRESHOLD MATLAB code for Calculation_of_Stress_Threshold.fig

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculation_of_Stress_Threshold_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculation_of_Stress_Threshold_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
function Calculation_of_Stress_Threshold_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
guidata(hObject, handles);
%%%%%ͼ�񱳾�
%ha=axes('units','normalized','position',[0 0 1 1]);
%uistack(ha,'down')
%image(imread('C:\��������ȱ�ݹܵ���Ӧ����ֵ�������\������и�������\beijing2.jpg'))
%colormap gray
%set(ha,'handlevisibility','off','visible','off');

set(handles.text18,'visible','off');

set(handles.radiobutton14,'visible','off');
set(handles.radiobutton15,'visible','off');
set(handles.uibuttongroup6,'visible','off');
set(handles.text61,'visible','off');
clc
set(gcf,'NumberTitle','off','name','��������ȱ��ѹ���ܵ�Ӧ����ֵ����')  
set(handles.radiobutton19,'value',1);
set(handles.radiobutton1,'value',1);
function varargout = Calculation_of_Stress_Threshold_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
function edit2_Callback(hObject, eventdata, handles)

%%90-104�жϿɱ༭��Ϊ�Ǹ�ʵ��
shuzi=str2double(get(handles.edit2,'string'));
shuzi8=str2double(get(handles.edit8,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit2,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit2,'string',[]);
    return;
  
elseif (shuzi/(0.5*shuzi8-0.5*shuzi)>0.1)||(shuzi8*0.5<shuzi)
    ferr = warndlg('������������B/R��0.1', '�������')
    set(handles.edit2,'string',[]);
    return;   
end
function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_Callback(hObject, eventdata, handles)
nw27=get(handles.radiobutton27,'value');    %����
shuzi8=str2double(get(handles.edit8,'string'));
shuzi=str2double(get(handles.edit3,'string'));
if nw27==1
      if shuzi>3.14159*shuzi8
       ferr = warndlg('�������Ƴ�����С�ڹܵ����ܳ�', '�������');
       set(handles.edit3,'string',[]);  
       return;
      end
end
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit3,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit3,'string',[]);
    return;

end
function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit4_Callback(hObject, eventdata, handles)

shuzi2=str2double(get(handles.edit2,'string'));
shuzi=str2double(get(handles.edit4,'string'));
if isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit4,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit4,'string',[]);
    return;
elseif shuzi>=shuzi2
    ferr = warndlg('������ȳߴ����С�ں��', '�������');
    set(handles.edit4,'string',[]);
    return;
 
end
function edit4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.edit2,'string',[]);
set(handles.edit3,'string',[]);
set(handles.edit4,'string',[]);
set(handles.edit5,'string',[]);
set(handles.edit6,'string',[]);
set(handles.edit8,'string',[]);
set(handles.edit11,'string',[]);
set(handles.edit29,'string',[]);


set(handles.edit15,'string',[]);
set(handles.edit16,'string',[]);
set(handles.edit17,'string',[]);
set(handles.edit18,'string',[]);

set(handles.edit23,'string',[]);
set(handles.edit24,'string',[]);
set(handles.edit25,'string',[]);

set(handles.text47,'string','');
set(handles.text50,'string','');
set(handles.text54,'string','');
set(handles.text62,'string','');
set(handles.text64,'string','');

   


cla(handles.axes6);

function pushbutton4_Callback(hObject, eventdata, handles)

set(gcf,'visible','off');
function edit5_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit5,'string'));
shuzi2=str2double(get(handles.edit2,'string'));

if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit5,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit5,'string',[]);
    return;
elseif shuzi>=shuzi2
    ferr = warndlg('P1�ߴ����С�ں��', '�������');
    set(handles.edit5,'string',[]);
    return;
   
end
function edit5_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit6_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit6,'string'));
shuzi2=str2double(get(handles.edit2,'string'));
shuzi4=str2double(get(handles.edit4,'string'));
shuzi5=str2double(get(handles.edit5,'string'));

if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit6,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit6,'string',[]);
    return;
 elseif (shuzi+shuzi4+shuzi5>shuzi2)||(shuzi+shuzi4+shuzi5<shuzi2)
    ferr = warndlg('p1+p2+h������ں��', '�������');
    set(handles.edit6,'string',[]);
    return;
end
function edit6_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit8_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit8,'string'));
shuzi2=str2double(get(handles.edit2,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit8,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit8,'string',[]);
    return; 
end
function edit8_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit11_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit11,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit11,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit11,'string',[]);
    return;
end
function edit11_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit12_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit2,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit1,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit1,'string',[]);
    return;
end
function edit12_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit14_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit14,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit14,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit14,'string',[]);
    return;
end
function edit14_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit15_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit15,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit15,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit15,'string',[]);
    return;
end
function edit15_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit16_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit16,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit16,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit16,'string',[]);
    return;
end
function edit16_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton6_Callback(hObject, eventdata, handles)
%%%%%%%չ������������ʱ���ˣ�����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%�ѷ���򻯱���                                                 %%
%aaΪ��Ч���Ƴߴ�                                                  %%
%%ooΪ�Ҧ�                                                         %%
%%����Ǳ������Ƽ�Ϊtype=1                                         %%
%%�����������Ƽ�Ϊtype=2                                         %%
%%����Ǵ�͸���Ƽ�Ϊtype=3                                         %%
%d=��  sdrΪsqrt(��r)                                             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

B_shuru=str2double(get(handles.edit2,'string'));%BΪ�ں�
B=B_shuru/1000  ;                                %%ת��Ϊ���ʵ�λ
L_shuru=str2double(get(handles.edit3,'string'));%LΪ����ͶӰ��ߴ�
L=L_shuru/1000;
h_shuru=str2double(get(handles.edit4,'string'));%hΪ�����ؾ�������ߴ�
h=h_shuru/1000;
p1_shuru=str2double(get(handles.edit5,'string'));%p1Ϊ�����ھ��ߴ�
p1=p1_shuru/1000;;
p2_shuru=str2double(get(handles.edit6,'string'));%p2Ϊ�����⾶�ߴ�
p2=p2_shuru/1000;
os_shuru=str2double(get(handles.edit15,'string'));%osΪ�ܵ����ϵ�����Ӧ��
os=os_shuru*10^6 ;
ob_shuru=str2double(get(handles.edit29,'string'));%osΪ�ܵ����ϵĿ���Ӧ��
ob=ob_shuru*10^6;
E_shuru=str2double(get(handles.edit16,'string'));%EΪ�ܵ����ϵĵ���ģ��GPa
E=E_shuru*10^9   ;                             %Pa
v=str2double(get(handles.edit17,'string'));%vΪ�ܵ����ϵĲ��ɱ�

obb_shuru=str2double(get(handles.edit18,'string'));%obbΪ�������������Ӧ��
obb=obb_shuru*10^+6;
dc_shuru=str2double(get(handles.edit24,'string'));%�ȶ�����С�ڵ���0.2mm�����Ͷ�
dc=dc_shuru/1000;
di_shuru=str2double(get(handles.edit23,'string'));%�ȶ����ƴ��ڵ���0.2mm�����Ͷ�
di=di_shuru/1000;
JIC_shuru=str2double(get(handles.edit25,'string'));%����J���ֶ����Ͷ�JIC
JIC=JIC_shuru*(10^3);


dt=str2double(get(handles.edit11,'string'));%dtΪ������²�
%o=str2double(get(handles.edit9,'string'));%oΪ�ѷ촹ֱ����������Ӧ��
D_shuru=str2double(get(handles.edit8,'string'));%DΪ������ֱ��
D=D_shuru/1000;

nw1=get(handles.radiobutton1,'value');      %������
nw2=get(handles.radiobutton2,'value');      %��������
nw7=get(handles.radiobutton7,'value');      %�������
nw11=get(handles.radiobutton11,'value');    %��͸����
nw13=get(handles.radiobutton13,'value');    %��������
nw14=get(handles.radiobutton14,'value');    %һ��
nw15=get(handles.radiobutton15,'value');    %����
nw19=get(handles.radiobutton19,'value');    %dc
nw20=get(handles.radiobutton20,'value');    %di
nw21=get(handles.radiobutton21,'value');    %JIC
nw25=get(handles.radiobutton25,'value');    %����
nw27=get(handles.radiobutton27,'value');    %����


set(handles.text62,'string',[]);
set(handles.text64,'string',[]);
%%%���϶����Ͷ��밴ťҪһ��
if (dc>0)&&(nw19==0)
    ferr = warndlg('��������Ͷ�ʱ��ѡ��ť��༭��һ��', '�������');    
    return  
   elseif  (di>0)&&(nw20==0)
    ferr = warndlg('��������Ͷ�ʱ��ѡ��ť��༭��һ��', '�������');    
    return 
   elseif  (JIC>0)&&(nw21==0)
    ferr = warndlg('��������Ͷ�ʱ��ѡ��ť��༭��һ��', '�������');    
    return 
end
    
    
    
%%%����os��ȷ��
if (obb<os)&&(obb>0)
    os=obb;
end

%%����Ǳ������Ƽ�Ϊtype=1
%%�����������Ƽ�Ϊtype=2
%%����Ǵ�͸���Ƽ�Ϊtype=3


if nw13==1  %%���������������Ϊ��������
     result_yuan='��������';
    if h>0.7*B %����Ϊ��͸����
        a=0.5*(L+2*h);
        c=0;               %%%%%δУ��
        result='��͸����';
        type= 3 ;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
    else 
        if h<0.5*L %����Ϊ��Բ��������
            a=h;
            c=0.5*L;
            result='����Բ�α�������a= ';
               type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
        else  
                a=h;
                c=h;
                result='��Բ�α�������a= ';
                   type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           
        end
    end
end
if p1>p2   %��֤p2Ϊ��ֵ
    p=p1;p1=p2;p2=p;
end

if nw7==1  %Ϊ�������
     result_yuan='�������';
    if  p2<0.4*h   %����Ϊ��͸����
      a=0.5*(L+2*h);c=0 ;  %%%%δУ��
       result='��͸����';
          type=  3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
        
    else
       if  p1<0.4*h   %����Ϊ����Բ�α�������
           a=h+p1;
           c=0.5*L;
            result='����Բ�α�������a= ';
            type=1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
       else
           if h<L   %����Ϊ��Բ���������
               a=0.5*h;
               c=0.5*L;
                result='��Բ���������';
                   type=  2;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           else
                   a=0.5*h;
                   c=0.5*h;
                    result='Բ���������';
                       type=  2;
           set(handles.text49,'visible','on');
           set(handles.text50,'visible','on');
           set(handles.text52,'visible','on');
             
           end
       end
    end
end


if nw11==1   %����Ϊ��͸����
     result_yuan='��͸����';
    a=0.5*L;  ;c=0;%%%δ����
       result='��͸����';
       type=3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
end
if type==1
        c2=2*c;
        set(handles.text46,'visible','off');
        set(handles.text54,'string',result);
        set(handles.text47,'string',num2str(a*1000));
        set(handles.text50,'string',num2str(c2*1000));
else 
    set(handles.text46,'visible','on');    
    a2=2*a;
    c2=2*c;

set(handles.text54,'string',result);
set(handles.text47,'string',num2str(a2*1000));
set(handles.text50,'string',num2str(c2*1000));
end
%%����Ϊ���Ƶ�Ч���㳤��
switch type
    case 1   %��Ϊa/c���ܿ���0
        dd4=(0.5-1/(0.65+a/c)+14*(1-a/c).^24)*(a/B).^4;
        F1=1.13-0.09*a/c + (-0.54+0.89/(0.2+a/c))*(a/B).^2+dd4
        fai=(1+1.464*(a/c).^1.65).^0.5
        aa=((F1/fai).^2)*a
    case 2
        e=B/2-(a+p1);
        dd1=(1.01-0.37*a/c).^2;
        dd2=((2*a/B)/(1-2*e/B)).^1.8;
        dd3=1-0.4*a/c-(e/B).^2;
        Q=dd1/((1-dd2*dd3).^1.08);
         aa=Q*a;
    case 3
         aa=a;
end


%%����ΪKt�ļ���
switch type   %matlab�е�switch����c���ԣ���Ҫbreak���
    case 1
        if (B-a)/B<=0.15         %%%%�������ƵĦ�ȡΪ���
            Kt=1.5;
        elseif (B-a)/B>0.15
            Kt=1.0;
            else
              Kt=3-10*((B-a)/B);
        end
    case 2
         if p1/B<=0.15
            Kt=1.5;
        elseif p1/B>0.15
            Kt=1.0;
            else
              Kt=3-10*(p1/B);
         end
    case  3
        Kt=1.5;  
end
%%����ΪXr�ļ���
switch type
    case 1
        if nw25==1      %%����
            Xr=0.6;
        end
        if nw27==1      %%����
            Xr=0.6;
        end
        
    otherwise
        if nw25==1
            Xr=0.6;
        end
        if nw27==1
            Xr=0.2;
        end
  
end                                                               
Qb=1.8*dt*10^6;

  %%%%%�����������
%%%%����ǰ����
if nw13==1
    result_yuan='��������';
elseif nw7==1
    result_yuan='�������';
else
    result_yuan='��͸����';
end
fprintf('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n')
fprintf('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n')
fprintf('����ǰԭʼ����Ϊ')
fprintf('%s',result_yuan)
fprintf('\t�ܵ��ں�B=')
fprintf('%d',B)
fprintf('\t �ܵ��������h=')
fprintf('%d',h)
fprintf('\t �ܵ����Ƴ���L=')
fprintf('%d\n',L)
 
if type==1
fprintf('���򻯺�����Ϊ')
fprintf('%s',result)
fprintf('%d\t',a)
fprintf('2c=')
fprintf('%d\n',2*c)
elseif type==2
fprintf('���򻯺�����Ϊ')
fprintf('%s',result)
fprintf('2a=')
fprintf('%d\t',2*a)
fprintf('2c=')
fprintf('%d\n',2*c)
else
fprintf('���򻯺�����Ϊ')
fprintf('%s',result)
fprintf('2a=')
fprintf('%d\t',2*a)  
end
fprintf('��Ч���Ƴߴ�Ϊ��')
fprintf('%d\n',aa) 
fprintf('������²�Ϊ��')
fprintf('%d\n',dt) 

                                                               
%%����Ϊ����������
if nw1==1    %�������������
    cla;
    fprintf('����Ϊ����������Ӧ���¶�Ӧ�Ļ�������\n')
 axis([0 1 0 1]);
    %����Ϊ�غɱȲ���  Lrmax�ļ���
if ((os+ob)/(2*os))<1.2
    Lrmax=(os+ob)/(2*os);
else
   Lrmax=1.2;
end
 %%����ΪMg��ƽ���ļ��㣬��Mg2ΪMg��ƽ��
R=0.5*(D-B) ;   %�ܵ���ƽ���뾶
if nw25==1   %��������
    Mg2=1+1.61 *aa.^2/(R*B) ;
end
if nw27==1  %��������
    Mg2=1+0.32*aa.^2/(R*B) ;
end
 %%���ڼ����������Ͷ�
 if nw19==1
  dc=str2double(get(handles.edit24,'string'))/1000;%�ȶ�����С��0.2mm�����Ͷ�
 end
 if nw20==1
 dc=str2double(get(handles.edit23,'string'))/1000;%�ȶ�����С��0.2mm�����Ͷ�
end
if nw21==1
dc=JIC/(1.5*os);
end
 Sr=0;sdr=0;o=0;
 axis([0 1 0 1]);
 xlabel('Sr','FontSize',10);   
 ylabel('sqrt(  ��r)','FontSize',10);                  %���������������С
 plot([0,0.8],[0.7,0.7],'k')     %ˮƽ��
 hold on
 plot([0.8,0.8],[0,0.7],'k')     %��ֱ��
 hold on
  plot(Sr,sdr,'.k')  
i=-1;
 while (Sr<0.8)&&(sdr<0.7)   %%%%%%%%%%%��ʼѭ��
 i=i+1;
oo=Kt*o+Xr*Qb;    %%ooΪ�Ҧ�             %%%%%%%%%�˴���ʼ��o

Ri=0.5*D-B;                   %%RiΪ�����ھ�
 switch type
     case 1

        Mg=sqrt(1+1.6*(c*c/(Ri*B))) ;
        ddc1=1.2*o/os;
        ddc2=1-a/(B*Mg);
        ddc3=1-a/B;
        Lr=ddc1*ddc2/ddc3;
     case 2
         zeta=2*a*c/(B*(B+c));
         gama=p1/B;
         dd5=3*zeta*o;
         dd6=(1-zeta)*(1-zeta)+4*gama*zeta;
         Lr=(dd5+(dd5.^2+9*dd6*o.^2).^0.5)/(3*dd6*os);
     case 3
     if  nw25==1          %��Ϊ����͸���Ƶ���˼�������������      �Ѿ��ʹ�
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
     if nw27==1           
      %   Lr=o/os;
         Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
 end   
  Sr=Lr/Lrmax;
%%����Ϊ�ļ�sqrt(��r)�ļ���
 if oo<os
     d=((pi*aa*os*(oo/os).^2)*Mg2)/E;
 else 
     if os>=Kt*o
     d=0.5*pi*aa*os*((oo/os)+1)*Mg2/E;
     elseif o>0
         set(handles.text64,'string',num2str((o-1*10^6)/1000000));
     return
     end
 end
 sdr=sqrt(d/dc);  %%sdrΪsqrt(dr)

 %%�����ǹ�������������
  axis([0 1 0 1]);
 plot(Sr,sdr,'.k')  
 hold on
 
 pause(0.0001);
     if (Sr>0.8)||(sdr>0.7)
        set(handles.text62,'string','�ڼ�������');
        set(handles.text64,'string',num2str((o-1*10^6)/1000000));
     end
     if rem(i,20)==0
         fprintf('��1=')
         fprintf('%10.4d\t',o*10^-6)
         fprintf('�Ҧ�=')
         fprintf('%10.4d\t',oo*10^-6)     
         fprintf('Lr=')
         fprintf('%10.4d\t',Lr)   
         fprintf('Sr=')
         fprintf('%10.4d\t',Sr) 
         fprintf('��=')
         fprintf('%10.4d',d)           
         fprintf('   sqrt(��r)=')
         fprintf('%10.4d\n',sdr)  
         
     end
  o=o+1*10^6;  
 end               %%�������ѽ�������Ϊ�������ֵ��Ϣ%%%%%%

o=o-2*10^6;       %%oΪӦ����ֵ
oo=Kt*o+Xr*Qb;           
Ri=0.5*D-B;                   
 switch type
     case 1
        Mg=sqrt(1+1.6*(c*c/(Ri*B))) ;
        ddc1=1.2*o/os;
        ddc2=1-a/(B*Mg);
        ddc3=1-a/B;
        Lr=ddc1*ddc2/ddc3;
     case 2
         zeta=2*a*c/(B*(B+c));
         gama=p1/B;
         dd5=3*zeta*o;
         dd6=(1-zeta)*(1-zeta)+4*gama*zeta;
         Lr=(dd5+(dd5.^2+9*dd6*o.^2).^0.5)/(3*dd6*os);
     case 3
     if  nw25==1          %��Ϊ����͸���Ƶ���˼�������������      �Ѿ��ʹ�
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
     if nw27==1           
         Lr=o/os;
     end
 end   
  Sr=Lr/Lrmax;
%%����Ϊ�ļ�sqrt(��r)�ļ���
 if oo<os
     d=((pi*aa*os*(oo/os).^2)*Mg2)/E;
 else 
     if os>=Kt*o
     d=0.5*pi*aa*os*((oo/os)+1)*Mg2/E;
     elseif o>0
         set(handles.text64,'string',num2str(o-0.5));
     return
     end
 end
 sdr=sqrt(d/dc);  
     fprintf('��1=')
     fprintf('%10.6d\t',o*10^-6)
     fprintf('�Ҧ�=')
     fprintf('%d\t',oo*10^-6)   
     %%%%%%%%���Ժ�ɾ��
               fprintf('Mg2=')
     fprintf('%10.4d\t',Mg2)  
%          fprintf('F1=')
 %    fprintf('%10.4d\n',F1)  
 %         fprintf('FAI=')
 %    fprintf('%10.4d\t',fai)  
%            fprintf('aa=')   
%     fprintf('%10.4d\t',aa)   
             fprintf('d=')   
     fprintf('%10.4d\t',d)        
     
     %%%%%%%%
     fprintf('Lr=')
     fprintf('%10.4d\t',Lr)   
     fprintf('Lrmax=')
     fprintf('%10.4d\t',Lrmax)   
     fprintf('Sr=')
     fprintf('%10.4d\t',Sr) 
     fprintf('  sqrt(��r)=')
     fprintf('%10.4d\n',sdr)  
end                   %%%����������

 %%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
if nw2==1     %���볣����������
    cla;
    fprintf('����Ϊ������������Ӧ���¶�Ӧ�Ļ�������\n')
        if  nw14==1      %ʧЧ���Ϊһ��
              safe1=1.0; %ȱ�ݱ����ߴ�ְ�ȫϵ��
              safe2=1.1; %ȱ���϶����Ͷȷְ�ȫϵ��
              safe3=1.2; %һ��Ӧ���ְ�ȫϵ��
              safe4=1.0; %����Ӧ���ְ�ȫϵ��
       end
        if  nw15==1      %ʧЧ���Ϊ����
              safe1=1.1; %ȱ�ݱ����ߴ�ְ�ȫϵ��
              safe2=1.2; %ȱ���϶����Ͷȷְ�ȫϵ��
              safe3=1.5; %һ��Ӧ���ְ�ȫϵ��
              safe4=1.0; %����Ӧ���ְ�ȫϵ��
        end
    %���¹���dc
    if nw19==1
    dc=str2double(get(handles.edit24,'string'))/1000;%�ȶ�����С��0.2mm�����Ͷ�
    end
   if nw20==1
    dc=str2double(get(handles.edit23,'string'))/1000;%�ȶ�����С��0.2mm�����Ͷ�
   end
 
   %���¹�����Kc
   if (nw21==1)
       Kc=(E*JIC/(1-v*v)).^0.5;
   end

   if nw19==1||(nw20==1)
       Kc=(1.5*dc*os*E/(1-v*v)).^0.5;
   end
       Kp=Kc/safe2;
       a=a*safe1;
       c=c*safe1;
       Qb=Qb*safe4;
          %%�����ǰ�ȫ���߷���
   axis([0,1.5,0,1.2]);
   x1A=0:0.05:1.25;
   y1=(1-0.14.*x1A.^2).*(0.3+0.7*exp(-0.65.*(x1A.^6)));
   plot(x1A,y1,'k');
   hold on; 
   y125=(1-0.14*1.25.^2)*(0.3+0.7*exp(-0.65*1.25.^6));
   plot([1.25,1.25],[0,y125]),'k';       %��ֱ��
   hold on;
 Lr=0;o=0;;oo=0;KrA=0;KrB=0;yLrMAX=1;i=-1;Krmax_Lr=1;KIPA=0;KIPB=0;
 dafaiA=0;dafaiB=0;rouA=0;rouB=0;
   %%%%%%%%%%%%%%%%%%%%%%%%%%��ʼѭ��
  while (Lr<1.25)&&(KrA<Krmax_Lr)&&(KrB<Krmax_Lr)  
      i=i+1;
      o_cun=o-1*10^6;
%      oo_cun=oo;
      KIPA_cun=KIPA;
      KIPB_cun=KIPB;
      dafaiA_cun=dafaiA;
      dafaiB_cun=dafaiB;
      rouA_cun=rouA;
      rouB_cun=rouB;

      KrA_cun=KrA;
      KrB_cun=KrB;
      Lr_cun=Lr;
      Krmax_Lr_cun=Krmax_Lr;
       o=o*safe3;
 %      oo=Kt*o+Xr*Qb;
       %����Ϊ�غɱȲ���Lr  Lrmax�ļ���
 Lrmax=1.25;    %������ƽ̨�ĵ�̼�ּ������岻��ֺ���
 Ri=0.5*D-B;                   %%RneiΪ�����ھ�
 switch type
     case 1

        Mg=sqrt(1+1.6*(c*c/(Ri*B))) ;
        ddc1=1.2*o/os;
        ddc2=1-a/(B*Mg);
        ddc3=1-a/B;
        Lr=ddc1*ddc2/ddc3;
     case 2
         zeta=2*a*c/(B*(B+c));
         gama=p1/B;
         dd5=3*zeta*o;
         dd6=(1-zeta)*(1-zeta)+4*gama*zeta;
         Lr=(dd5+(dd5.^2+9*dd6*o.^2).^0.5)/(3*dd6*os);
     case 3
     if  nw25==1          %��Ϊ����͸���Ƶ���˼�������������      �Ѿ��ʹ�
         if B/Ri<=0.1
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
        else 
           ferr = warndlg('�������������B/R<0.1', '����');
         
         end
     end
     if nw27==1           
      Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     
     end
 end
           
       

   %���¹���KIP��KIS�ļ���
    
  switch type
      case 1   %��������
           %������fmA  fmB
           dd11=(1+1.464*(a/c).^1.65).^0.5;
           dd12=(0.89/(0.2+a/c)-0.54)*(a/B).^2;
           dd13=(0.5-1/(0.65+a/c)+14*(1-a/c).^24)*(a/B).^4;
           fmA=(1/dd11)*(1.13-0.09*a/c+dd12+dd13);
           fmB=((1.1+0.35*(a/B).^2)*(a/c).^0.5)*fmA;
            %������fbA  fbB
            fbA=(1+(-1.22-0.12*a/c)*(a/B)+(0.55-1.05*(a/c).^0.75+0.47*(a/c).^1.5)*(a/B).^2)*fmA;
            fbB=(1-0.34*a/B-0.11*a.^2/(c*B))*fmB;
           
          KIPA=((pi*a).^0.5)*o*fmA;
          KIPB=((pi*a).^0.5)*o*fmB;
          KISA=((pi*a).^0.5)*Qb*fbA;
          KISB=((pi*a).^0.5)*Qb*fbB;
      case 2   %�������
          e1=0.5*B-a-p1;
          dd14=1.01-0.37*a/c;
          dd15=((2*a/B)/(1-2*e1/B)).^1.8;
          dd16=1-0.4*a/c-(e1/B).^2;
          dd17=1-0.4*a/c-0.8*(e1/B).^2;
          dd18=2*e/B+a/B+0.34*a.^2/(c*B);
          dd19=2*e/B-a/B-0.34*a.^2/(c*B);          
          fmA=dd14/((1-dd15*dd16).^0.54);
          fmB=dd14/((1-dd15*dd17).^0.54);
          fbA=dd18*fmA;
          fbB=dd19*fmB;
          
          KIPA=((pi*a).^0.5)*o*fmA;
          KIPB=((pi*a).^0.5)*o*fmB;
          KISA=((pi*a).^0.5)*Qb*fbA;
          KISB=((pi*a).^0.5)*Qb*fbB;   
          
      case 3   %��͸����
          KIPA=((pi*a).^0.5)*o;
          KIPB=((pi*a).^0.5)*o;
          KISA=((pi*a).^0.5)*Qb;
          KISB=((pi*a).^0.5)*Qb;
  end

 %%���¹�����������ϵ���ļ���
       xA=KISA/(os*(pi*a).^0.5);
       xB=KISB/(os*(pi*a).^0.5);
       dafaiA=0.7454*xA.^3-0.7434*xA.^2+0.2422*xA-0.0028;
       dafaiB=0.7454*xB.^3-0.7434*xB.^2+0.2422*xA-0.0028;
       if Lr<0.8
           rouA=dafaiA;
           rouB=dafaiB;
       elseif Lr>1.1
           rouA=0;
           rouB=0;  
       else
           rouA=dafaiA*(11-10*Lr)/3;
           rouB=dafaiB*(11-10*Lr)/3;           
       end

   %%������Kr�ļ���
   KrA=(KIPA+KISA)/Kp+rouA;
   KrB=(KIPB+KISB)/Kp+rouB; 

   %%����Ϊ���
   axis([0,1.5,0,1.2])
   plot(Lr,KrA,'.k');
   hold on
   plot(Lr,KrB,'.b');
   hold on               
   xlabel('Lr','FontSize',10);   
   ylabel('Kr','FontSize',10); 
   Krmax_Lr=(1-0.14*Lr.^2)*(0.3+0.7*exp(-0.65*Lr.^6));
   pause(0.0001)
   
     if (Lr>1.25)||(KrA>Krmax_Lr)||(KrB>Krmax_Lr)
        set(handles.text62,'string','�ڳ���������');
        set(handles.text64,'string',num2str((o/safe3-1*10^6)*10^-6));
     end
         if rem(i,20)==0 
         fprintf('��1=')
         fprintf('%6.4d\t ',o/safe3/1000000) 
         fprintf('Lr=')
         fprintf('%6.3d\t  ',Lr)  
          fprintf('Kc=')
         fprintf('%6.3d\t  ',Kc)          
  
         fprintf('KrA=')
         fprintf('%6.4d\t',KrA) 
         fprintf('KrB=')
         fprintf('%10.4d',KrB)
         fprintf('  Krmax_Lr=')
         fprintf('%6.4d\n',Krmax_Lr) 
         end
     o=(o/safe3)+1*10^6;
  end
  %%%%�˴���ӹ��������ֵ��Ϣ
          fprintf('��1=')
          fprintf('%10.4d\t ',o_cun/1000000)
          fprintf('Pm=')
          fprintf('%10.4d\t ',safe3*o_cun/1000000)    
          fprintf('Qb=')
          fprintf('%10.4d\t ',safe4*1.8*dt)      
          fprintf('Kc=')
          fprintf('%10.4d\t ',Kc)   
          fprintf(' Lr=')
          fprintf('%d\t  ',Lr_cun)   
          fprintf('KrA=')
          fprintf('%d\t',KrA_cun) 
          fprintf('KrB=')
          fprintf('%d',KrB_cun)
          fprintf('  Krmax_Lr=')
          fprintf('%d\n',Krmax_Lr_cun)
          

end  %%%%������������
function edit17_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit17_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit17,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit17,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit17,'string',[]);
    return;
end
function edit18_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit18,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit18,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit18,'string',[]);
    return;
end
function edit18_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit21_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit21,'string'));
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit21,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit21,'string',[]);
    return;
end
function edit21_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit23_Callback(hObject, eventdata, handles)
 set(handles.edit24,'string',[]);
  set(handles.edit25,'string',[]);
shuzi=str2double(get(handles.edit23,'string'));

if  shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit23,'string',[]);
    return;
end
function edit23_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit24_Callback(hObject, eventdata, handles)
 set(handles.edit23,'string',[]);
  set(handles.edit25,'string',[]);
shuzi=str2double(get(handles.edit24,'string'));

if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit24,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit24,'string',[]);
    return;
end
function edit24_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit25_Callback(hObject, eventdata, handles)
shuzi=str2double(get(handles.edit25,'string'));
 set(handles.edit23,'string',[]);
  set(handles.edit24,'string',[]);
if  isnan(shuzi)
    ferr = warndlg('�����������Ϊ����', '�������');
    set(handles.edit25,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('�����������Ϊ�Ǹ���', '�������');
    set(handles.edit25,'string',[]);
    return;
end
function edit25_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function figure1_CreateFcn(hObject, eventdata, handles)
function radiobutton13_Callback(hObject, eventdata, handles)

nw13=get(handles.radiobutton13,'value');
if  nw13==1
set(handles.text14,'visible','off');
set(handles.text22,'visible','off');
set(handles.edit5,'visible','off');
set(handles.edit6,'visible','off');
set(handles.text21,'visible','off');
set(handles.text23,'visible','off');
set(handles.text12,'visible','on');
set(handles.text13,'visible','on');
set(handles.edit4,'visible','on');
end
function radiobutton11_Callback(hObject, eventdata, handles)

nw11=get(handles.radiobutton11,'value');
if  nw11==1
set(handles.text14,'visible','off');
set(handles.text22,'visible','off');
set(handles.edit5,'visible','off');
set(handles.edit6,'visible','off');
set(handles.text21,'visible','off');
set(handles.text23,'visible','off');
set(handles.text12,'visible','off');
set(handles.text13,'visible','off');
set(handles.edit4,'visible','off');
end
function radiobutton7_Callback(hObject, eventdata, handles)

nw7=get(handles.radiobutton7,'value');
if  nw7==1
set(handles.text14,'visible','on');
set(handles.text22,'visible','on');
set(handles.edit5,'visible','on');
set(handles.edit6,'visible','on');
set(handles.text21,'visible','on');
set(handles.text23,'visible','on');
set(handles.text12,'visible','on');
set(handles.text13,'visible','on');
set(handles.edit4,'visible','on');
    



  
end
function pushbutton9_Callback(hObject, eventdata, handles)


B=str2double(get(handles.edit2,'string'));%BΪ�ں�
L=str2double(get(handles.edit3,'string'));%LΪ����ͶӰ��ߴ�
h=str2double(get(handles.edit4,'string'));%hΪ�����ؾ�������ߴ�
p1=str2double(get(handles.edit5,'string'));%p1Ϊ�����ھ��ߴ�
p2=str2double(get(handles.edit6,'string'));%p2Ϊ�����⾶�ߴ�
nw13=get(handles.radiobutton13,'value');
nw7=get(handles.radiobutton7,'value');
nw11=get(handles.radiobutton11,'value');


if nw13==1  %%���������������Ϊ��������
    if h>0.7*B %����Ϊ��͸����
        a=0.5*(L+2*h);
        c=0;               %%%%%δУ��
        result='��͸����';
        type= 3 ;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
    else 
        if h<0.5*L %����Ϊ��Բ��������
            a=h;
            c=0.5*L;
            result='����Բ�α�������a= ';
               type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
        else  
                a=h;
                c=h;
                result='��Բ�α�������a= ';
                   type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           
        end
    end
end
if p1>p2   %��֤p2Ϊ��ֵ
    p=p1;p1=p2;p2=p;
end

if nw7==1  %Ϊ�������
    if  p2<0.4*h   %����Ϊ��͸����
      a=0.5*(L+2*h);c=0 ;  %%%%δУ��
       result='��͸����';
          type=  3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
        
    else
       if  p1<0.4*h   %����Ϊ����Բ�α�������
           a=h+p1;
           c=0.5*L;
            result='����Բ�α�������a= ';
            type=1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
       else
           if h<L   %����Ϊ��Բ���������
               a=0.5*h;
               c=0.5*L;
                result='��Բ���������';
                   type=  2;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           else
                   a=0.5*h;
                   c=0.5*h;
                    result='Բ���������';
                       type=  2;
           set(handles.text49,'visible','on');
           set(handles.text50,'visible','on');
           set(handles.text52,'visible','on');
             
           end
       end
    end
end


if nw11==1   %����Ϊ��͸����
    a=0.5*L;  ;c=0%%%δ����
       result='��͸����';
       type=3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
end
if type==1
        c2=2*c;
        set(handles.text46,'visible','off');
        set(handles.text54,'string',result);
        set(handles.text47,'string',num2str(a));
        set(handles.text50,'string',num2str(c2));
else 
    set(handles.text46,'visible','on');    
    a2=2*a;
    c2=2*c;

set(handles.text54,'string',result);
set(handles.text47,'string',num2str(a2));
set(handles.text50,'string',num2str(c2));
end
function radiobutton1_Callback(hObject, eventdata, handles)
nw1=get(handles.radiobutton1,'value');
if  nw1==1


set(handles.radiobutton14,'visible','off');
set(handles.radiobutton15,'visible','off');
set(handles.text18,'visible','off');
set(handles.text61,'visible','off');





set(handles.uibuttongroup6,'visible','off');

end
function radiobutton2_Callback(hObject, eventdata, handles)

nw2=get(handles.radiobutton2,'value');
if  nw2==1


set(handles.radiobutton14,'visible','on');
set(handles.radiobutton15,'visible','on');
set(handles.text18,'visible','on');
set(handles.uibuttongroup6,'visible','on');
set(handles.text34,'visible','on');
set(handles.edit18,'visible','on');
set(handles.text61,'visible','on');


end
% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
function Untitled_2_Callback(hObject, eventdata, handles)
% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)

winopen ('C:\��������ȱ�ݹܵ���Ӧ����ֵ�������\������и�������\mailps.png')
% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
winopen ('C:\��������ȱ�ݹܵ���Ӧ����ֵ�������\������и�������\gangjiegou.jpg')
function pushbutton14_Callback(hObject, eventdata, handles)
cla;
set(handles.text62,'string',[]);
set(handles.text64,'string',[]);
function text62_CreateFcn(hObject, eventdata, handles)
function text64_CreateFcn(hObject, eventdata, handles)











% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
set(handles.edit2,'string','32');
set(handles.edit3,'string','100');
set(handles.edit4,'string','7');
set(handles.edit5,'string','10');
set(handles.edit6,'string','15');
set(handles.edit8,'string','2084');
set(handles.edit11,'string','10');
set(handles.edit15,'string','555');
set(handles.edit16,'string','207');
set(handles.edit18,'string','555');
set(handles.edit17,'string','0.30');
set(handles.edit24,'string','0.0384');
set(handles.edit29,'string','625');



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
clc


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
clear all
winopen ('C:\��������ȱ�ݹܵ���Ӧ����ֵ�������\������и�������\zwsysm.jpg')


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)


% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)



% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
delete(gcf)
Calculation_of_Stress_Threshold_English;
