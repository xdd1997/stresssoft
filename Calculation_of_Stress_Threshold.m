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
%%%%%图像背景
%ha=axes('units','normalized','position',[0 0 1 1]);
%uistack(ha,'down')
%image(imread('C:\含裂纹型缺陷管道的应力阈值计算软件\软件运行附属材料\beijing2.jpg'))
%colormap gray
%set(ha,'handlevisibility','off','visible','off');

set(handles.text18,'visible','off');

set(handles.radiobutton14,'visible','off');
set(handles.radiobutton15,'visible','off');
set(handles.uibuttongroup6,'visible','off');
set(handles.text61,'visible','off');
clc
set(gcf,'NumberTitle','off','name','含裂纹型缺陷压力管道应力阈值计算')  
set(handles.radiobutton19,'value',1);
set(handles.radiobutton1,'value',1);
function varargout = Calculation_of_Stress_Threshold_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
function edit2_Callback(hObject, eventdata, handles)

%%90-104判断可编辑框为非负实数
shuzi=str2double(get(handles.edit2,'string'));
shuzi8=str2double(get(handles.edit8,'string'));
if  isnan(shuzi)
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit2,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit2,'string',[]);
    return;
  
elseif (shuzi/(0.5*shuzi8-0.5*shuzi)>0.1)||(shuzi8*0.5<shuzi)
    ferr = warndlg('本程序适用于B/R≤0.1', '输入错误')
    set(handles.edit2,'string',[]);
    return;   
end
function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_Callback(hObject, eventdata, handles)
nw27=get(handles.radiobutton27,'value');    %环向
shuzi8=str2double(get(handles.edit8,'string'));
shuzi=str2double(get(handles.edit3,'string'));
if nw27==1
      if shuzi>3.14159*shuzi8
       ferr = warndlg('环向裂纹长度需小于管道外周长', '输入错误');
       set(handles.edit3,'string',[]);  
       return;
      end
end
if  isnan(shuzi)
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit3,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit4,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit4,'string',[]);
    return;
elseif shuzi>=shuzi2
    ferr = warndlg('裂纹深度尺寸必须小于厚度', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit5,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit5,'string',[]);
    return;
elseif shuzi>=shuzi2
    ferr = warndlg('P1尺寸必须小于厚度', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit6,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit6,'string',[]);
    return;
 elseif (shuzi+shuzi4+shuzi5>shuzi2)||(shuzi+shuzi4+shuzi5<shuzi2)
    ferr = warndlg('p1+p2+h必须等于厚度', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit8,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit11,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit1,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit14,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit15,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit16,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit16,'string',[]);
    return;
end
function edit16_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton6_Callback(hObject, eventdata, handles)
%%%%%%%展现真正技术的时候到了，吼吼吼%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%裂缝规则化表征                                                 %%
%aa为等效裂纹尺寸                                                  %%
%%oo为σΣ                                                         %%
%%如果是表面裂纹记为type=1                                         %%
%%如果是埋藏裂纹记为type=2                                         %%
%%如果是穿透裂纹记为type=3                                         %%
%d=δ  sdr为sqrt(δr)                                             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

B_shuru=str2double(get(handles.edit2,'string'));%B为壁厚
B=B_shuru/1000  ;                                %%转换为国际单位
L_shuru=str2double(get(handles.edit3,'string'));%L为裂纹投影最长尺寸
L=L_shuru/1000;
h_shuru=str2double(get(handles.edit4,'string'));%h为裂纹沿径向的最大尺寸
h=h_shuru/1000;
p1_shuru=str2double(get(handles.edit5,'string'));%p1为距离内径尺寸
p1=p1_shuru/1000;;
p2_shuru=str2double(get(handles.edit6,'string'));%p2为距离外径尺寸
p2=p2_shuru/1000;
os_shuru=str2double(get(handles.edit15,'string'));%os为管道材料的屈服应力
os=os_shuru*10^6 ;
ob_shuru=str2double(get(handles.edit29,'string'));%os为管道材料的抗拉应力
ob=ob_shuru*10^6;
E_shuru=str2double(get(handles.edit16,'string'));%E为管道材料的弹性模量GPa
E=E_shuru*10^9   ;                             %Pa
v=str2double(get(handles.edit17,'string'));%v为管道材料的泊松比

obb_shuru=str2double(get(handles.edit18,'string'));%obb为焊缝金属的屈服应力
obb=obb_shuru*10^+6;
dc_shuru=str2double(get(handles.edit24,'string'));%稳定裂纹小于等于0.2mm断裂韧度
dc=dc_shuru/1000;
di_shuru=str2double(get(handles.edit23,'string'));%稳定裂纹大于等于0.2mm断裂韧度
di=di_shuru/1000;
JIC_shuru=str2double(get(handles.edit25,'string'));%材料J积分断裂韧度JIC
JIC=JIC_shuru*(10^3);


dt=str2double(get(handles.edit11,'string'));%dt为内外壁温差
%o=str2double(get(handles.edit9,'string'));%o为裂缝垂直方向的最大主应力
D_shuru=str2double(get(handles.edit8,'string'));%D为容器外直径
D=D_shuru/1000;

nw1=get(handles.radiobutton1,'value');      %简化评定
nw2=get(handles.radiobutton2,'value');      %常规评定
nw7=get(handles.radiobutton7,'value');      %埋藏裂纹
nw11=get(handles.radiobutton11,'value');    %穿透裂纹
nw13=get(handles.radiobutton13,'value');    %表面裂纹
nw14=get(handles.radiobutton14,'value');    %一般
nw15=get(handles.radiobutton15,'value');    %严重
nw19=get(handles.radiobutton19,'value');    %dc
nw20=get(handles.radiobutton20,'value');    %di
nw21=get(handles.radiobutton21,'value');    %JIC
nw25=get(handles.radiobutton25,'value');    %轴向
nw27=get(handles.radiobutton27,'value');    %环向


set(handles.text62,'string',[]);
set(handles.text64,'string',[]);
%%%材料断裂韧度与按钮要一致
if (dc>0)&&(nw19==0)
    ferr = warndlg('输入断裂韧度时单选按钮与编辑框不一致', '输入错误');    
    return  
   elseif  (di>0)&&(nw20==0)
    ferr = warndlg('输入断裂韧度时单选按钮与编辑框不一致', '输入错误');    
    return 
   elseif  (JIC>0)&&(nw21==0)
    ferr = warndlg('输入断裂韧度时单选按钮与编辑框不一致', '输入错误');    
    return 
end
    
    
    
%%%关于os的确定
if (obb<os)&&(obb>0)
    os=obb;
end

%%如果是表面裂纹记为type=1
%%如果是埋藏裂纹记为type=2
%%如果是穿透裂纹记为type=3


if nw13==1  %%满足条件则输入的为表面裂纹
     result_yuan='表面裂纹';
    if h>0.7*B %规则化为穿透裂纹
        a=0.5*(L+2*h);
        c=0;               %%%%%未校验
        result='穿透裂纹';
        type= 3 ;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
    else 
        if h<0.5*L %规则化为椭圆表面裂纹
            a=h;
            c=0.5*L;
            result='半椭圆形表面裂纹a= ';
               type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
        else  
                a=h;
                c=h;
                result='半圆形表面裂纹a= ';
                   type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           
        end
    end
end
if p1>p2   %保证p2为大值
    p=p1;p1=p2;p2=p;
end

if nw7==1  %为埋藏裂纹
     result_yuan='埋藏裂纹';
    if  p2<0.4*h   %规则为穿透裂纹
      a=0.5*(L+2*h);c=0 ;  %%%%未校验
       result='穿透裂纹';
          type=  3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
        
    else
       if  p1<0.4*h   %规则为半椭圆形表面裂纹
           a=h+p1;
           c=0.5*L;
            result='半椭圆形表面裂纹a= ';
            type=1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
       else
           if h<L   %规则为椭圆形埋藏裂纹
               a=0.5*h;
               c=0.5*L;
                result='椭圆形埋藏裂纹';
                   type=  2;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           else
                   a=0.5*h;
                   c=0.5*h;
                    result='圆形埋藏裂纹';
                       type=  2;
           set(handles.text49,'visible','on');
           set(handles.text50,'visible','on');
           set(handles.text52,'visible','on');
             
           end
       end
    end
end


if nw11==1   %规则化为穿透裂纹
     result_yuan='穿透裂纹';
    a=0.5*L;  ;c=0;%%%未检验
       result='穿透裂纹';
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
%%以上为裂纹等效计算长度
switch type
    case 1   %认为a/c不能看做0
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


%%以下为Kt的计算
switch type   %matlab中的switch不像c语言，不要break语句
    case 1
        if (B-a)/B<=0.15         %%%%表面裂纹的η取为余高
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
%%以下为Xr的计算
switch type
    case 1
        if nw25==1      %%轴向
            Xr=0.6;
        end
        if nw27==1      %%环向
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

  %%%%%在命令行输出
%%%%表征前数据
if nw13==1
    result_yuan='表面裂纹';
elseif nw7==1
    result_yuan='埋藏裂纹';
else
    result_yuan='穿透裂纹';
end
fprintf('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n')
fprintf('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&\n')
fprintf('规则化前原始裂纹为')
fprintf('%s',result_yuan)
fprintf('\t管道壁厚B=')
fprintf('%d',B)
fprintf('\t 管道裂纹深度h=')
fprintf('%d',h)
fprintf('\t 管道裂纹长度L=')
fprintf('%d\n',L)
 
if type==1
fprintf('规则化后裂纹为')
fprintf('%s',result)
fprintf('%d\t',a)
fprintf('2c=')
fprintf('%d\n',2*c)
elseif type==2
fprintf('规则化后裂纹为')
fprintf('%s',result)
fprintf('2a=')
fprintf('%d\t',2*a)
fprintf('2c=')
fprintf('%d\n',2*c)
else
fprintf('规则化后裂纹为')
fprintf('%s',result)
fprintf('2a=')
fprintf('%d\t',2*a)  
end
fprintf('等效裂纹尺寸为：')
fprintf('%d\n',aa) 
fprintf('内外壁温差为：')
fprintf('%d\n',dt) 

                                                               
%%以下为简化评定代码
if nw1==1    %进入简化评定程序
    cla;
    fprintf('以下为简化评定部分应力下对应的基本参数\n')
 axis([0 1 0 1]);
    %以下为载荷比参量  Lrmax的计算
if ((os+ob)/(2*os))<1.2
    Lrmax=(os+ob)/(2*os);
else
   Lrmax=1.2;
end
 %%以下为Mg的平方的计算，计Mg2为Mg的平方
R=0.5*(D-B) ;   %管道的平均半径
if nw25==1   %轴向裂纹
    Mg2=1+1.61 *aa.^2/(R*B) ;
end
if nw27==1  %环向裂纹
    Mg2=1+0.32*aa.^2/(R*B) ;
end
 %%关于简化评定断裂韧度
 if nw19==1
  dc=str2double(get(handles.edit24,'string'))/1000;%稳定裂纹小于0.2mm断裂韧度
 end
 if nw20==1
 dc=str2double(get(handles.edit23,'string'))/1000;%稳定裂纹小于0.2mm断裂韧度
end
if nw21==1
dc=JIC/(1.5*os);
end
 Sr=0;sdr=0;o=0;
 axis([0 1 0 1]);
 xlabel('Sr','FontSize',10);   
 ylabel('sqrt(  δr)','FontSize',10);                  %坐标轴名称字体大小
 plot([0,0.8],[0.7,0.7],'k')     %水平线
 hold on
 plot([0.8,0.8],[0,0.7],'k')     %竖直线
 hold on
  plot(Sr,sdr,'.k')  
i=-1;
 while (Sr<0.8)&&(sdr<0.7)   %%%%%%%%%%%开始循环
 i=i+1;
oo=Kt*o+Xr*Qb;    %%oo为σΣ             %%%%%%%%%此处开始用o

Ri=0.5*D-B;                   %%Ri为容器内径
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
     if  nw25==1          %认为纵向穿透裂纹的意思是裂纹是轴向的      已经问过
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
     if nw27==1           
      %   Lr=o/os;
         Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
 end   
  Sr=Lr/Lrmax;
%%以下为δ及sqrt(δr)的计算
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
 sdr=sqrt(d/dc);  %%sdr为sqrt(dr)

 %%以下是关于在坐标轴打点
  axis([0 1 0 1]);
 plot(Sr,sdr,'.k')  
 hold on
 
 pause(0.0001);
     if (Sr>0.8)||(sdr>0.7)
        set(handles.text62,'string','在简化评定下');
        set(handles.text64,'string',num2str((o-1*10^6)/1000000));
     end
     if rem(i,20)==0
         fprintf('σ1=')
         fprintf('%10.4d\t',o*10^-6)
         fprintf('σΣ=')
         fprintf('%10.4d\t',oo*10^-6)     
         fprintf('Lr=')
         fprintf('%10.4d\t',Lr)   
         fprintf('Sr=')
         fprintf('%10.4d\t',Sr) 
         fprintf('δ=')
         fprintf('%10.4d',d)           
         fprintf('   sqrt(δr)=')
         fprintf('%10.4d\n',sdr)  
         
     end
  o=o+1*10^6;  
 end               %%简化评定已结束，下为了输出阈值信息%%%%%%

o=o-2*10^6;       %%o为应力阈值
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
     if  nw25==1          %认为纵向穿透裂纹的意思是裂纹是轴向的      已经问过
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     end
     if nw27==1           
         Lr=o/os;
     end
 end   
  Sr=Lr/Lrmax;
%%以下为δ及sqrt(δr)的计算
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
     fprintf('σ1=')
     fprintf('%10.6d\t',o*10^-6)
     fprintf('σΣ=')
     fprintf('%d\t',oo*10^-6)   
     %%%%%%%%调试后删除
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
     fprintf('  sqrt(δr)=')
     fprintf('%10.4d\n',sdr)  
end                   %%%结束简化评定

 %%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
if nw2==1     %进入常规评定程序
    cla;
    fprintf('以下为常规评定部分应力下对应的基本参数\n')
        if  nw14==1      %失效后果为一般
              safe1=1.0; %缺陷表征尺寸分安全系数
              safe2=1.1; %缺材料断裂韧度分安全系数
              safe3=1.2; %一次应力分安全系数
              safe4=1.0; %二次应力分安全系数
       end
        if  nw15==1      %失效后果为严重
              safe1=1.1; %缺陷表征尺寸分安全系数
              safe2=1.2; %缺材料断裂韧度分安全系数
              safe3=1.5; %一次应力分安全系数
              safe4=1.0; %二次应力分安全系数
        end
    %以下关于dc
    if nw19==1
    dc=str2double(get(handles.edit24,'string'))/1000;%稳定裂纹小于0.2mm断裂韧度
    end
   if nw20==1
    dc=str2double(get(handles.edit23,'string'))/1000;%稳定裂纹小于0.2mm断裂韧度
   end
 
   %以下关于求Kc
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
          %%以下是安全曲线方程
   axis([0,1.5,0,1.2]);
   x1A=0:0.05:1.25;
   y1=(1-0.14.*x1A.^2).*(0.3+0.7*exp(-0.65.*(x1A.^6)));
   plot(x1A,y1,'k');
   hold on; 
   y125=(1-0.14*1.25.^2)*(0.3+0.7*exp(-0.65*1.25.^6));
   plot([1.25,1.25],[0,y125]),'k';       %垂直线
   hold on;
 Lr=0;o=0;;oo=0;KrA=0;KrB=0;yLrMAX=1;i=-1;Krmax_Lr=1;KIPA=0;KIPB=0;
 dafaiA=0;dafaiB=0;rouA=0;rouB=0;
   %%%%%%%%%%%%%%%%%%%%%%%%%%开始循环
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
       %以下为载荷比参量Lr  Lrmax的计算
 Lrmax=1.25;    %无屈服平台的低碳钢及奥氏体不锈钢焊缝
 Ri=0.5*D-B;                   %%Rnei为容器内径
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
     if  nw25==1          %认为纵向穿透裂纹的意思是裂纹是轴向的      已经问过
         if B/Ri<=0.1
            Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
        else 
           ferr = warndlg('本程序仅适用于B/R<0.1', '错误');
         
         end
     end
     if nw27==1           
      Lr=(1.2*o/os)*sqrt(1+1.6*a*a/(Ri*B));
     
     end
 end
           
       

   %以下关于KIP和KIS的计算
    
  switch type
      case 1   %表面裂纹
           %以下是fmA  fmB
           dd11=(1+1.464*(a/c).^1.65).^0.5;
           dd12=(0.89/(0.2+a/c)-0.54)*(a/B).^2;
           dd13=(0.5-1/(0.65+a/c)+14*(1-a/c).^24)*(a/B).^4;
           fmA=(1/dd11)*(1.13-0.09*a/c+dd12+dd13);
           fmB=((1.1+0.35*(a/B).^2)*(a/c).^0.5)*fmA;
            %以下是fbA  fbB
            fbA=(1+(-1.22-0.12*a/c)*(a/B)+(0.55-1.05*(a/c).^0.75+0.47*(a/c).^1.5)*(a/B).^2)*fmA;
            fbB=(1-0.34*a/B-0.11*a.^2/(c*B))*fmB;
           
          KIPA=((pi*a).^0.5)*o*fmA;
          KIPB=((pi*a).^0.5)*o*fmB;
          KISA=((pi*a).^0.5)*Qb*fbA;
          KISB=((pi*a).^0.5)*Qb*fbB;
      case 2   %埋藏裂纹
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
          
      case 3   %穿透裂纹
          KIPA=((pi*a).^0.5)*o;
          KIPB=((pi*a).^0.5)*o;
          KISA=((pi*a).^0.5)*Qb;
          KISB=((pi*a).^0.5)*Qb;
  end

 %%以下关于塑性修正系数的计算
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

   %%以下是Kr的计算
   KrA=(KIPA+KISA)/Kp+rouA;
   KrB=(KIPB+KISB)/Kp+rouB; 

   %%以下为打点
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
        set(handles.text62,'string','在常规评定下');
        set(handles.text64,'string',num2str((o/safe3-1*10^6)*10^-6));
     end
         if rem(i,20)==0 
         fprintf('σ1=')
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
  %%%%此处添加功能输出阈值信息
          fprintf('σ1=')
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
          

end  %%%%结束常规评定
function edit17_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit17_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit17,'string'));
if  isnan(shuzi)
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit17,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
    set(handles.edit17,'string',[]);
    return;
end
function edit18_Callback(hObject, eventdata, handles)

shuzi=str2double(get(handles.edit18,'string'));
if  isnan(shuzi)
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit18,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit21,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit24,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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
    ferr = warndlg('输入参数必须为数字', '输入错误');
    set(handles.edit25,'string',[]);
    return;
elseif shuzi<0
    ferr = warndlg('输入参数必须为非负数', '输入错误');
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


B=str2double(get(handles.edit2,'string'));%B为壁厚
L=str2double(get(handles.edit3,'string'));%L为裂纹投影最长尺寸
h=str2double(get(handles.edit4,'string'));%h为裂纹沿径向的最大尺寸
p1=str2double(get(handles.edit5,'string'));%p1为距离内径尺寸
p2=str2double(get(handles.edit6,'string'));%p2为距离外径尺寸
nw13=get(handles.radiobutton13,'value');
nw7=get(handles.radiobutton7,'value');
nw11=get(handles.radiobutton11,'value');


if nw13==1  %%满足条件则输入的为表面裂纹
    if h>0.7*B %规则化为穿透裂纹
        a=0.5*(L+2*h);
        c=0;               %%%%%未校验
        result='穿透裂纹';
        type= 3 ;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
    else 
        if h<0.5*L %规则化为椭圆表面裂纹
            a=h;
            c=0.5*L;
            result='半椭圆形表面裂纹a= ';
               type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
        else  
                a=h;
                c=h;
                result='半圆形表面裂纹a= ';
                   type=  1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           
        end
    end
end
if p1>p2   %保证p2为大值
    p=p1;p1=p2;p2=p;
end

if nw7==1  %为埋藏裂纹
    if  p2<0.4*h   %规则为穿透裂纹
      a=0.5*(L+2*h);c=0 ;  %%%%未校验
       result='穿透裂纹';
          type=  3;
      set(handles.text49,'visible','off');
      set(handles.text50,'visible','off'); 
      set(handles.text52,'visible','off');
        
    else
       if  p1<0.4*h   %规则为半椭圆形表面裂纹
           a=h+p1;
           c=0.5*L;
            result='半椭圆形表面裂纹a= ';
            type=1;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
       else
           if h<L   %规则为椭圆形埋藏裂纹
               a=0.5*h;
               c=0.5*L;
                result='椭圆形埋藏裂纹';
                   type=  2;
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text52,'visible','on');
           else
                   a=0.5*h;
                   c=0.5*h;
                    result='圆形埋藏裂纹';
                       type=  2;
           set(handles.text49,'visible','on');
           set(handles.text50,'visible','on');
           set(handles.text52,'visible','on');
             
           end
       end
    end
end


if nw11==1   %规则化为穿透裂纹
    a=0.5*L;  ;c=0%%%未检验
       result='穿透裂纹';
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

winopen ('C:\含裂纹型缺陷管道的应力阈值计算软件\软件运行附属材料\mailps.png')
% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
winopen ('C:\含裂纹型缺陷管道的应力阈值计算软件\软件运行附属材料\gangjiegou.jpg')
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
winopen ('C:\含裂纹型缺陷管道的应力阈值计算软件\软件运行附属材料\zwsysm.jpg')


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)


% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)



% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
delete(gcf)
Calculation_of_Stress_Threshold_English;
