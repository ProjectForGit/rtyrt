   M S B A M L   `   `   `  ����G  CCarsShowroom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CarsShowroomCarsShowroom  5          CarsShowroom.VacationPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      &localclr-namespace:CarsShowroom  5        N� Title$  VacationPage��5
      .��5      � .+�5   
   �� $	��Top=�6    �� TextAlignment$ Center=�6,   $��Center=�6C   $��	0,100,0,0q�6`   $��40(�6s   Отпуска6�   �� 5   
   -   5         ��Name$ durationTxt��5      $	��Top=�6'    �� TextAlignment$ Center=�6?   $
��Left=�6V   $��
60,300,0,0q�6q   $��25(�6�   $	��200��6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Длительность��6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#3943B76  �� 5   
   -   5         ��Name$ employeeBox��5      $	��Top=�6(   $
��Left=�6@   $��300,300,0,0q�6[   $��25(�6p   $	��200��6~   6�   �� 5   
   -   5        $ vacationTypeBox��5      $	��Top=�6,   $
��Left=�6D   $��540,300,0,0q�6_   $��25(�6t   $	��200��6�   6�   �� 5   
   -   5        $ vacationSalary��5      $	��Top=�6*   $ Center=�6B   $
��Left=�6Y   $��780,300,0,0q�6t   $��25(�6�   $	��200��6�   $ Зарплата��6�    �#3943B76  �� 5   
   -   5         ��Name$	 Add��5      $	��Top=�6   $
��Left=�66   $��1020,300,0,0q�6Q   $��25(�6g   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Добавить6�   �� 5   
   -   5         ��Name$ durationCheck��5      $	��Top=�6*   $��Right=�6B   $��
0,350,60,0q�6^   $��25(�6r   	 d� 	IsChecked$
	 TrueY�6�   $	��196��6�   ���#3943B7.��6�   Длительность6�   �� 5   
   -   5        $ idEmployeeCheck��5      $	��Top=�6,   $��Right=�6D   $��
0,400,85,0q�6`   $��25(�6t   $
	 TrueY�6�   $	��170��6�   ���#3943B7.��6�   Сотрудник6�   �� 5   
   -   5        $ idVacationTypeCheck��5      $	��Top=�60   $��Right=�6H   $��	0,450,8,0q�6d   $��25(�6w   $
	 TrueY�6�   $	��247��6�   ���#3943B7.��6�   Тип отпуска6�   �� 5   
   -	   5        $ vacationSalaryCheck��5      $	��Top=�60   $��Right=�6H   $��	0,500,8,0q�6d   $��25(�6w   $
	 TrueY�6�   ���#3943B7.��6�   %#Отпускная зарплата6�   �� 5   
   -
   5        $ restoreButton��5      $	��Top=�6(   $
��Left=�6@   $��1465,300,0,0q�6[   $��25(�6q   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Восстановить6�   &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 dataGrid��5      $	��Top=�6%   $��Center=�6=   $
��1600��6Z   $	��600��6g   $��0,350,200,0q�6t      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Длительность��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *
Duration+6Z     5      $ Сотрудник��6%    68   �� *
Employee+6W     5      $ Тип отпуска��6%    6:   �� *VacationType+6]     5      $) #Отпускная зарплата��6%    6A   �� *VacationSalary+6f   4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5       �� 5!      .R�5"      �� -   5        
���  ��
���  �� J� Opacity$ .5Q�5"   W   .��6d   Удалить6m   5#      5%      5'      5(      5)      