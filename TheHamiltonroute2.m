function TheHamiltonroute2

figure('MenuBar','None', ... % - �������� ������������ ���� ��� �������� � ������(��� ���� ��, ���� ��� ������ figure())
'Name','TheHamiltonroute', ...          % - �������� �������� �� ����
'NumberTitle','off', ...         % - ������� �������� ����� ����� !!!
'Position', [400, 250, 570, 400])  % - ����� ������� ������� ����������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������������ ����  

uicontrol('Style','Text', ... % - ������ ������ ����� - �������� ������������ ������, ����������� � ����� ����������� �������� Text
   'String', '����������� �������', ...             % - ����� �������, � ������ "���� ������ � ���������� �����"   
  'Position', [40, 190, 480, 200], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������
  'Fontsize',23)  % - ����� ������ ������ ������

clc                             % - �������� ������� ������ ���������� ���� :)
clear all                      % - �������� ������� ������ ���������� ���� :)

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� � ����� ����������� �������� PushButton
   'String', '����������� ���������� �����', ...             % - ����� ������� �� ���  "����������� ���������� �����" 
  'Position', [20, 260, 180, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@theloadtext)   % - ����� �������  CallBack � � �������� � ������� ������ �� ������ ������� theloadtext

%%%%%%%%%%%%%%%%%%%%
 function theloadtext(h,eventdata) % - ���������� ��� ��������� ����
       load text Words; % - ��������� ����� �� ������ m-�����
  set(Text,'String',Words); % - ��������� ����� � ���� ��� ������ � ���
 end
%%%%%%%%%%%%%%%%%%%%

Important1 = uicontrol('Style','edit', ... % - ������ ���� ��� ����� �����, ����������� �� ������ � ����������� ��������  EditText
   'String', '', ...             % - ����� �� ��� ����������� �������    
  'Position', [160, 90, 100, 30])  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������� 

uicontrol('Style','Text', ... % - ������ ������� ��� �����, ����������� �� ������ � ����������� ��������  Text
   'String', '������� ����(����� 1 � 2 ����� �������):', ...      % - ����� ���� �������   
  'Position', [25, 84, 130, 40], ...  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������
  'Fontsize',10)  % - ����� ������ ������ ������

Important2 = uicontrol('Style','edit', ... % - ������ ���� ��� ����� �����, ����������� �� ������ � ����������� ��������  EditText
   'String', '', ...             % - ����� �� ��� ����������� �������    
  'Position', [400, 90, 100, 30])  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������� 

uicontrol('Style','Text', ... % - ������ ������� ��� �����, ����������� �� ������ � ����������� ��������  Text
   'String', '������� ������(������ 0 � ����� ������):', ...      % - ����� ���� �������   
  'Position', [260, 45, 140, 80], ...  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������
  'Fontsize',10)  % - ����� ������ ������ ������
  
Toggle1 = uicontrol('Style','ToggleButton', ... % - ������ ������ � ��������� ��� ����, ����������� �� ������ � ����������� �������� ToggleButton
   'String', '��������� ���������� �����', ...             % - ����� ������� �� ��� ��� ��������  "��������� ���������� �����" 
  'Position', [25, 150, 170, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@Togglewow1)   % - ����� �������  CallBack � � �������� � ������� Togglewow1

Text = uicontrol('Style','edit', ... % - ������ ���� ��� ������ � �������, ����������� �� ������ �  ����������� �������� EditText
   'String', '', ...             % - ����� ���� ������� ""   
  'Position', [200, 150, 170, 140]) ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������  
  
%%%%%%%%%
   function Togglewow1(h,eventdata) % - ������ ������� ��� ��������� ������ ������
       load text Words; % - ��������� ����� �� ������ m-�����
       load ourtext Words228;
        if get (Toggle1,'Value') == 0  % - ���� �� �������� �� ������ ��� ��������� ������ ������, 
        set(Text,'String',Words228)          %  - ���������� �������� �����
         set(Toggle1,'String','��������� ���������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        else
            Words228 = get(Text,'String');
             save ourtext Words228;     % - ���������� ��� ����� ��� ��� ��������
            Words = get(Text,'String'); % - ���������� ����� � ��������� ���� ��� ���������
          
            %%%%%%%%%% - ������ ����� ������� �� ������� � ������� �����
num = str2num(get(Important1,'String'));    % - �������� ������� ����� ��� ���������
bum = str2num(get(Important2,'String'));    % - ��������� ������� ������ ��� ���������
        if length(num) == 0 | length(bum) == 0 | bum == 0 | num == 0
            msgbox('������� ���� ��� ������!!!','���� � ������','Modal')   % - � ������ ���������� ����� ��� ������ ���� ��������� �������� �� ����� � �� ���� �������
        else        
Key = str2num(get(Important1,'String')); % ����
L = str2num(get(Important2,'String')); % ������
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Key = str2num(get(Important1,'String')); % ����
L = str2num(get(Important2,'String')); % ������
Leng  = length(Words); % - ������� ������ ������ ���������� ���������
KEY = Key;

LL =[];
k = 1;
while k == 1
for i=1:1:length(KEY)
LL(i) = L*(KEY(i)/KEY(i));   
end
sum(LL);   % - ����� ������ ������ �������� �������������� ������

if Leng > sum(LL)
  L = L+1;
else
    k=0;
end
end
LLL = sum(LL);  % - �������� ������ ������ �������� �������������� ������
Le = L;

A = '';
for h = 1:1:LLL
if h > length(Words) 
  A(h) = '*';
else
   A(h) = Words(h);
end
end
A; % - ��� ������������� �����

AA =' ';
past = 1;
z4 = 1;
for z1 = 1:1:length(KEY)
    if KEY(z1) == 1
       for z2=past:2:(past+L-1);
      AA(z4) = A(z2); 
          z4 = z4+1;
       end
       for z2=past+1:2:(past+L-1)
           AA(z4) = A(z2);
          z4 = z4+1;
       end
       past = past + L;
    end
    if KEY(z1) == 2
        for z3=(past+L-1):-2:past
            AA(z4) = A(z3);
          z4 = z4+1;  
        end
        for z3=(past+L-2):-2:past
           AA(z4) = A(z3);
            z4 = z4+1;      end
        past = past+L;
    end
end
AA;

L = str2num(get(Important2,'String'))+1; % ������
 L2 = L;
    AAA = '';
    r1 = 1;
    r2 = 1;
while r2 <= length(AA)
  if r1 == L2
     AAA(r1) = ' ';
     L2 = L2+L;
     r1 = r1+1;
  else
      AAA(r1) = AA(r2);
      r1 = r1+1;
       r2 = r2+1;
  end
end
AAA;
Words = AAA;

%%%%%%%%%%%%%%%%%%%%%%%%%%%
            set(Text,'String',Words) % - ��� �����
              team = get(Text,'String');
            set(Toggle1,'String','���������� �������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
            save strangetext team;
            save dlinna Le;
        end
   end
%%%%%%%%%%%

Toggle2 = uicontrol('Style','ToggleButton', ... % - ������ � ��������� ��� ����, ����������� �� ������ � ����������� �������� ToggleButton
   'String', '����������� ���������� �����', ...             % - ����� ������� �� ��� ���� ������� Toggle   
  'Position', [373, 260, 170, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@Togglewow2)   % - ����� �������  CallBack � � �������� � ������� Togglewow2

%%%%%%%%%
   function Togglewow2(h,~)
        if get (Toggle1,'Value') == 1 % - ������� ���, ����� ����������� ������ ���� ������ � ��� ������, ���� ����� ��� ��� ����������
        if get (Toggle2,'Value') == 0  % - ���� �� �������� �� ������ ��� ����������� ������ ������,
             load strangetext team;
        set(Text,'String',team) %  - ���������� �������� ������������� �����
        set(Toggle2,'String','����������� ���������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        else
            load dlinna Le;
            
            %%%%%%%%%%%%%%%%%
             %%%%%%%%%% - ������ ����� ������� �� ������� � ������� �����     
num = str2num(get(Important1,'String'));    % - �������� ������� ����� ��� ���������
bum = str2num(get(Important2,'String'));    % - ��������� ������� ������ ��� ���������
        if length(num) == 0 | length(bum) == 0 | bum == 0 | num == 0
            msgbox('������� ���� ��� ������!!!','���� � ������','Modal')   % - � ������ ���������� ����� ��� ������ ���� ��������� �������� �� ����� � �� ���� �������
        else        
Key = str2num(get(Important1,'String')); % ����
L = str2num(get(Important2,'String')); % ������
        end
%%%%%%%%%%%%%%%%%%%% �����������
AAA = get(Text,'String');
L = L+1;
L2 = L;
    AA = '';
    r1 = 1;
    r2 = 1;
while r2 <= length(AAA)
  if r2 == L2
     AA(r2) = AAA(r2+1);
     L2 = L2+L;
     r2 = r2+1;
  else
      AA(r1) = AAA(r2);
      r1 = r1+1;
       r2 = r2+1;
  end
end
AA;


KEY = Key;
L = Le;


A =' ';
past = 1;
z4 = 1;
for z1 = 1:1:length(KEY)
    if KEY(z1) == 1
       for z2=past:2:(past+L-1);  
      A(z2) = AA(z4); 
         z4 = z4+1;
       end
       for z2=past+1:2:(past+L-1)
           A(z2) = AA(z4);
          z4 = z4+1;
       end
       past = past + L;
    end
    if KEY(z1) == 2
        for z3=(past+L-1):-2:past
            A(z3) = AA(z4);
            z4 = z4+1;
        end
        for z3=(past+L-2):-2:past
           A(z3) = AA(z4);
           z4 = z4+1;
        end
        past = past+L;
    end
end
A;

for h = 1:1:length(A)
if A(h) == '*' 
  A(h) = ' ';
end
end
A;

            %%%%%%%%%%%%%%%%%%
            set(Text,'String',A) % - ���� �������� �����
             set(Toggle2,'String','���������� ������������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        end
        end
   end
%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� �� ������ � ����������� �������� PushButton
   'String', '���������� ���������� �����', ...             % - ����� �� ��� ���� ������� "���������� ���������� �����"
  'Position', [373, 150, 180, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@thesavetext)   % - ����� ������� CallBack � � �������� � ������� ������ �� ������� the savetext
%%%%%%%%%%%%%%%%%%%%
 function thesavetext(h,eventdata) % - ��������� ��� ��������� ����
     Words = get(Text,'String');   % - ����������� �������� ������ ������ �����, � ������ ����� � ������� Text
        save text2 Words; % - ��������� ����� �� � ����� m-�����
 end
%%%%%%%%%%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� � ����� ����������� �������� PushButton
   'String', '������� ���������', ...             % - ����� ������� �� ��� ���� ������� �������   
  'Position', [230, 30, 115, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack','close')   % - ����� �������  CallBack � � �������� close - �������� ������������ ����

   
end