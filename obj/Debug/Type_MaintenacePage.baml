   M S B A M L   `   `   `  ����G  CCarsShowroom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CarsShowroomCarsShowroom  5      &     CarsShowroom.Type_MaintenacePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      &localclr-namespace:CarsShowroom  5        N� Title$  Type_MaintenacePage��5
      .��5      � .+�5   
   �� $	��Top=�6    �� TextAlignment$ Center=�6,   $��Center=�6C   $��	0,100,0,0q�6`   $��40(�6s   Виды ТО6�   �� 5   
   -   5         ��Name$ nameTxt��5      $	��Top=�6#    �� TextAlignment$ Center=�6;   $
��Left=�6R   $��
60,300,0,0q�6m   $��25(�6�   $	��200��6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Название��6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#3943B76�   �� 5   
   -   5        $ costTxt��5      $	��Top=�6#   $ Center=�6;   $
��Left=�6R   $��300,300,0,0q�6m   $��25(�6�   $	��200��6�   $ Стоимость��6�    �#3943B76  �� 5   
   -   5        $ durationTxt��5      $	��Top=�6'   $ Center=�6?   $
��Left=�6V   $��540,300,0,0q�6q   $��25(�6�   $	��200��6�   $ Длительность��6�    �#3943B76  �� 5   
   -   5         ��Name$	 Add��5      $	��Top=�6   $
��Left=�66   $��780,300,0,0q�6Q   $��25(�6f   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Добавить6�   �� 5   
   -   5         ��Name$ 	nameCheck��5      $	��Top=�6&   $��Right=�6>   $��
0,350,60,0q�6Z   $��25(�6n    d� 	IsChecked$
 TrueY�6|   $	��170��6�   ���#3943B7.��6�   Название6�   �� 5   
   -   5        $ 	costCheck��5      $	��Top=�6&   $��Right=�6>   $��
0,400,52,0q�6Z   $��25(�6n   $
 TrueY�6}   $	��178��6�   ���#3943B7.��6�   Стоимость6�   �� 5   
   -   5        $ durationCheck��5      $	��Top=�6*   $��Right=�6B   $��
0,450,52,0q�6^   $��25(�6r   $
 TrueY�6�   ���#3943B7.��6�   Длительность6�   �� 5   
   -   5        $ restoreButton��5      $	��Top=�6(   $
��Left=�6@   $��1465,300,0,0q�6[   $��25(�6q   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Восстановить6�   &   System.Windows.Controls.DataGrid  5   
   -	   5        	  Name$	 dataGrid��5      $	��Top=�6%   $��Center=�6=   $
��1600��6Z   $	��600��6g   $��0,350,200,0q�6t   
   AutoGenerateColumns
 .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *Name+6R     5      $ Стоимость��6%    68   �� *Cost+6S     5      $ Длительность��6%    6;   �� *
Duration+6Z   4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5       �� -
   5        
���  ��
���  �� J� Opacity$ .5Q�5    W   .��6d   Удалить6m   5!      5#      5%      5&      5'      