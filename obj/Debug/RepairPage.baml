   M S B A M L   `   `   `  ����G  CCarsShowroom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CarsShowroomCarsShowroom  5          CarsShowroom.RepairPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.4.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      &localclr-namespace:CarsShowroom  5        N� Title$  
RepairPage��5
      .��5      � .+�5   
   �� $	��Top=�6    �� TextAlignment$ Center=�6,   $��Center=�6C   $��	0,100,0,0q�6`   $��40(�6s   Ремонт6�   �� 5   
   -   5         ��Name$ accessoryBox��5      $	��Top=�6)   $
��Left=�6A   $��
60,300,0,0q�6\   $��25(�6p   $	��200��6~   6�   �� 5   
   -   5         ��Name$ costTxt��5      $	��Top=�6#    �� TextAlignment$ Center=�6;   $
��Left=�6R   $��300,300,0,0q�6m   $��25(�6�   $	��200��6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Стоимость��6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#3943B76  (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ receiptDate��5      $	��Top=�6*   $
��Left=�6B   $��540,300,0,0q�6]   $��25(�6r   $	��200��6�   6�     5   
   -   5        $ 	issueDate��5      $	��Top=�6(   $
��Left=�6@   $��780,300,0,0q�6[   $��25(�6p   $	��200��6~   6�   �� 5   
   -   5        $ 
problemTxt��5      $	��Top=�6&   $ Center=�6>   $
��Left=�6U   $��1020,300,0,0q�6p   $��25(�6�   $	��200��6�   $ Проблема��6�    �#3943B76  �� 5   
   -   5         ��Name$	 Add��5      $	��Top=�6   $
��Left=�66   $��1260,300,0,0q�6Q   $��25(�6g   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Добавить6�   �� 5   
   -   5        	 ��Name$	 idAccessoryCheck��5      $	��Top=�6-   $��Right=�6E   $��
0,350,38,0q�6a   $��25(�6u   
 d� 	IsChecked$

 TrueY�6�   ���#3943B7.��6�   Комплектующие6�   �� 5   
   -   5        $	 	costCheck��5      $	��Top=�6&   $��Right=�6>   $��
0,400,63,0q�6Z   $��25(�6n   $

 TrueY�6}   $	��185��6�   ���#3943B7.��6�   Стоимость6�   �� 5   
   -	   5        $	 receiptDateCheck��5      $	��Top=�6-   $��Right=�6E   $��
0,450,63,0q�6a   $��25(�6u   $

 TrueY�6�   $	��186��6�   ���#3943B7.��6�   Дата приема6�   �� 5   
   -
   5        $	 issueDateCheck��5      $	��Top=�6+   $��Right=�6C   $��
0,500,63,0q�6_   $��25(�6s   $

 TrueY�6�   $	��185��6�   ���#3943B7.��6�   Дата выдачи6�   �� 5   
   -   5        $	 problemCheck��5      $	��Top=�6)   $��Right=�6A   $��
0,550,63,0q�6]   $��25(�6q   $

 TrueY�6�   $	��185��6�   ���#3943B7.��6�   Проблема6�   �� 5   
   -   5        $ restoreButton��5      $	��Top=�6(   $
��Left=�6@   $��1465,300,0,0q�6[   $��25(�6q   ���#3943B7���#3943B7$
��Auto��6�   $
��Auto��6�   .��6�   Восстановить6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $	��Top=�6%   $��Center=�6=   $
��1600��6Z   $	��600��6g   $��0,350,200,0q�6t      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$  Комплектующие��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6<   �� *	Accessory+6\     5      $ Стоимость��6%    68   �� *Cost+6S     5      $ Дата приема��6%    6:   �� *ReceiptDate+6\     5       $ Дата выдачи��6%    6:   �� *	IssueDate+6Z     5!      $ Проблема��6%    67   �� *	Problem+6U   4  .System.Windows.Controls.DataGridTemplateColumn  5"         CellTemplate 5#      �� 5$      .R�5%      �� -   5        
���  ��
���  �� J� Opacity$ .5Q�5%   W   .��6d   Удалить6m   5&      5(      5*      5+      5,      