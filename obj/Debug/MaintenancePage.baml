   M S B A M L   `   `   `  ����G  CCarsShowroom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CarsShowroomCarsShowroom  5      "    CarsShowroom.MaintenancePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:CarsShowroom     5        N� Title$  MaintenancePage��5	      .��5      � .+�5   
   �� $	��Top=�6    �� TextAlignment$ Center=�6,   $��Center=�6C   $��	0,100,0,0q�6`   $��40(�6s   1/Техническое обслуживания6�   �� 5   
   -   5         ��Name$ typeMaintenaceBox��5      $	��Top=�6.   $
��Left=�6F   $��
60,300,0,0q�6a   $��25(�6u   $	��200��6�   6�   �� 5   
   -   5        $ 	repairBox��5      $	��Top=�6&   $
��Left=�6>   $��300,300,0,0q�6Y   $��25(�6n   $	��200��6|   6�   �� 5   
   -   5        $ employeeBox��5      $	��Top=�6(   $
��Left=�6@   $��540,300,0,0q�6[   $��25(�6p   $	��200��6~   6�   �� 5   
   -   5         ��Name$	 Add��5      $	��Top=�6   $
��Left=�66   $��780,300,0,0q�6Q   $��25(�6f   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Добавить6�   �� 5   
   -   5         ��Name$ idTypeMaintenanceCheck��5      $	��Top=�63   $��Right=�6K   $��
0,350,54,0q�6g   $��25(�6{    d� 	IsChecked$
 TrueY�6�   $	��167��6�   ���#3943B7.��6�   Вид ТО6�   �� 5   
   -   5        $ idRepairCheck��5      $	��Top=�6*   $��Right=�6B   $��
0,400,79,0q�6^   $��25(�6r   $
 TrueY�6�   $	��142��6�   ���#3943B7.��6�   Ремонт6�   �� 5   
   -   5        $ idEmployeeCheck��5      $	��Top=�6,   $��Right=�6D   $��
0,450,79,0q�6`   $��25(�6t   $
 TrueY�6�   ���#3943B7.��6�   Сотрудник6�   �� 5   
   -   5        $ restoreButton��5      $	��Top=�6(   $
��Left=�6@   $��1465,300,0,0q�6[   $��25(�6q   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Восстановить6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ dataGrid��5      $	��Top=�6%   $��Center=�6=   $
��1600��6Z   $	��600��6g   $��0,350,200,0q�6t      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$
	 ТО��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 61   �� *TypeMaintenance+6W     5      $	 Ремонт��6%   
 65   �� *Repair+6R     5      $	 Сотрудник��6%   
 68   �� *
Employee+6W   4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5      �� -
   5        
���  ��
���  �� J� Opacity$ .5Q�5   W   .��6d   Удалить6m   5      5!      5#      5$      5%      