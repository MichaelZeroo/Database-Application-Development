   M S B A M L   `   `   `  ����?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TestTest  5   	       Test.frmViewProduct   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Test     5   	   -   5          � Title$  frmViewProduct��5   	   $	��450��6    $	��800��6-    � 	Resources 5	         productViewSource��%   &	        �� 5
   
   6   5      .��5      � .+�5   
   �� $
��Left=�6   $	��400��60   $��	10,10,0,0q�6=   $	��Top=�6P   $	��774��6h   .@�5      �� $��View Product Information��6   .��5      � ���	#FFE5E5E5 � DataContext# [  6.   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ productDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��10,10,298.8,260q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6s   ��    Columns 5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5      -   5        availableColumn��,  &System.Windows.Controls.DataGridColumn   Header$ 	Available��5   l   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 SizeToHeader 6   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6N   �� *	Available+6   0  *System.Windows.Controls.DataGridTextColumn  5      -   5        descriptionColumn��$ Description��5   l   $	 SizeToHeader 6�   
 6L   �� *Description+6�     5      -   5        idColumn��$ Id��5   Z   $	 SizeToHeader 6f   
 6C   �� *Id+6f     5      -   5        
nameColumn��$
 Name��5   ^   $	 SizeToHeader 6l   
 6E   �� *Name+6l     5      -   5        priceColumn��$ Price��5   `   $	 SizeToHeader 6o   
 6F   �� *Price+6o     5      -   5        stockColumn��$ Stock��5   `   $	 SizeToHeader 6o   
 6F   �� *Stock+6o     5      -	   5        stock_Max_LimitColumn��$ Stock Max Limit��5   t   $	 SizeToHeader 6�   
 6P   �� *Stock_Max_Limit+6�     5      -
   5        stock_Min_LimitColumn��$ Stock Min Limit��5   t   $	 SizeToHeader 6�   
 6P   �� *Stock_Min_Limit+6�   5      5      5      �� 5      $��View Detail Information��6   .��5      � ���	#FFE5E5E5.+�5       � -   5         �Name$ grid1��5       # [  6*   $
��Left=�6[   $��	58,34,0,0q�6v   $	��Top=�6�   $	��278��6�   $	��238��6�    � ColumnDefinitions 5!      �� 5"      $
��Auto �6/   �� 5#      $
��Auto �6/    � RowDefinitions 5%      �� 5&      $
��Auto �6,   �� 5'      $
��Auto �6,   �� 5(      $
��Auto �6,   �� 5)      $
��Auto �6,   �� 5*      $
��Auto �6,   �� 5+      $
��Auto �6,   �� 5,      $
��Auto �6,   �� 5-      $
��Auto �6,   .+�5/      �� $��
Available:��6    $��0��65   $
��Left=�6E   $��3q�6`   $��0��6k   $��Center=�6x   �� 50      -   5         ��Name$ availableCheckBox��50   #   $�� ��6>   $��1��6I   $
��Left=�6Y   $��3q�6�   $��0��6�   $��Center=�6�    d� 	IsChecked 6t   �� *	Available+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 51      $��Description:��6    $��0��67   $
��Left=�6G   $��3q�6b   $��1��6m   $��Center=�6z   �� 52      -   5         ��Name$ descriptionTextBox��52   "   $��1��6>   $
��Left=�6N   $��23��6i   $��3q�6u   $��1��6�   $��Center=�6�   $	��120��6  ��6�   �� *Description+$ TwoWay=� .  . 6  �� 53      $	��Id:��6    $��0��6.   $
��Left=�6>   $��3q�6Y   $��2��6d   $��Center=�6q   �� 54      -   5        $ 	idTextBox��54   "   $��1��65   $
��Left=�6E   $��23��6`   $��3q�6l   $��2��6w   $��Center=�6�   $	��120��6�   ��6�   �� *Id+$ TwoWay=� .  . 6�   �� 55      $��Name:��6    $��0��60   $
��Left=�6@   $��3q�6[   $��3��6f   $��Center=�6s   �� 56      -   5        $ nameTextBox��56   "   $��1��67   $
��Left=�6G   $��23��6b   $��3q�6n   $��3��6y   $��Center=�6�   $	��120��6�   ��6�   �� *Name+$ TwoWay=� .  . 6�   �� 57      $��Price:��6    $��0��61   $
��Left=�6A   $��3q�6\   $��4��6g   $��Center=�6t   �� 58      -   5        $ priceTextBox��58   "   $��1��68   $
��Left=�6H   $��23��6c   $��3q�6o   $��4��6z   $��Center=�6�   $	��120��6   ��6�   �� *Price+$ TwoWay=� .  . 6   �� 59      $��Stock:��6    $��0��61   $
��Left=�6A   $��3q�6\   $��5��6g   $��Center=�6t   �� 5:      -   5        $ stockTextBox��5:   "   $��1��68   $
��Left=�6H   $��23��6c   $��3q�6o   $��5��6z   $��Center=�6�   $	��120��6   ��6�   �� *Stock+$ TwoWay=� .  . 6   �� 5;      $��Stock Max Limit:��6    $��0��6;   $
��Left=�6K   $��3q�6f   $��6��6q   $��Center=�6~   �� 5<      -   5        $ stock_Max_LimitTextBox��5<   "   $��1��6B   $
��Left=�6R   $��23��6m   $��3q�6y   $��6��6�   $��Center=�6�   $	��120��6  ��6�   �� *Stock_Max_Limit+$ TwoWay=� .  . 6  �� 5=      $��Stock Min Limit:��6    $��0��6;   $
��Left=�6K   $��3q�6f   $��7��6q   $��Center=�6~   �� 5>      -   5        $ stock_Min_LimitTextBox��5>   "   $��1��6B   $
��Left=�6R   $��23��6m   $��3q�6y   $��7��6�   $��Center=�6�   $	��120��6  ��6�   �� *Stock_Min_Limit+$ TwoWay=� .  . 6  5?      �� 5@      -   5        $��btnNext��5@      $
��Next��6,   $
��Left=�6;   $��543,259,0,0q�6V   $	��Top=�6k   $	��107��6�   $��39��6�   6�   �� 5A      -   5        $��btnPrevious��5A      $��Previous��60   $
��Left=�6C   $��361,259,0,0q�6^   $	��Top=�6s   $	��107��6�   $��39��6�   6�   5B      5C      5D      5F      5G      