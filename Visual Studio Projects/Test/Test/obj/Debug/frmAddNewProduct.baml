   M S B A M L   `   `   `  ����?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TestTest  5   	       Test.frmAddNewProduct   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Test     5   	   -   5          � Title$  frmAddNewProduct��5   	   $	��450��6"   $	��800��6/    � 	Resources 5	         productViewSource��%   &	        �� 5
   
   6   5      .��5      �  � DataContext# [  6   .+�5   
   �� $
��Name��6   $
��Left=�6   $��	35,46,0,0q�6:   $	��Top=�6M   $��63��6e   �� 5   
   -   5        $��nameTextBox��5      $
��Left=�6%   $��27��6@   $��
150,46,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $	��Top=�6u   $	��138��6�   �� 5   
   $��Price��6   $
��Left=�6    $��	35,78,0,0q�6;   $	��Top=�6N   $��63��6f   �� 5   
   -   5        $��priceTextBox��5      $
��Left=�6&   $��27��6A   $��
150,78,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $	��138��6�   �� 5   
   $��Description��6   $
��Left=�6&   $��
35,110,0,0q�6A   $	��Top=�6U   $	��101��6m   �� 5   
   -   5        $��descriptionTextBox��5      $
��Left=�6,   $��27��6G   $��150,110,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��138��6�   �� 5   
   $��Stock��6   $
��Left=�6    $��
35,142,0,0q�6;   $	��Top=�6O   $��63��6g   �� 5   
   -   5        $��stockTextBox��5      $
��Left=�6&   $��27��6A   $��150,142,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $	��138��6�   �� 5   
   $��Stock Max Limit��6   $
��Left=�6*   $��
35,174,0,0q�6E   $	��Top=�6Y   $	��101��6q   �� 5   
   -   5        $��stockMaxTextBox��5      $
��Left=�6)   $��27��6D   $��150,174,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��138��6�   �� 5   
   $��Stock Min Limit��6   $
��Left=�6*   $��
35,206,0,0q�6E   $	��Top=�6Y   $	��101��6q   �� 5   
   -   5        $��stockMinTextBox��5      $
��Left=�6)   $��27��6D   $��150,206,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��138��6�   �� 5   
   $��	Available��6   $
��Left=�6$   $��
35,237,0,0q�6?   $	��Top=�6S   $��63��6k   �� 5   
   -   5        $��availableCheckBox��5      $
��Left=�6,   $��150,238,0,0q�6G   $	��Top=�6\   $��25��6t   $��82��6�   �� 5   
   -	   5        $��Add Product��5      $
��Left=�6'   $��
67,283,0,0q�6B   $	��Top=�6V   $	��125��6n   $��35��6z   6�   &   System.Windows.Controls.DataGrid  5   
   -
   5          Name$ productDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��330,42,28.6,178q�6      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6g   ��    Columns 5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5      -   5        availableColumn��,  &System.Windows.Controls.DataGridColumn	   Header$	 	Available��5   `   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToHeader 6s   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *	Available+6s   0  *System.Windows.Controls.DataGridTextColumn  5      -   5        descriptionColumn��$	 Description��5   `   $
 SizeToHeader 6u    6@   �� *Description+6u     5       -   5        
nameColumn��$
	 Name��5    R   $
 SizeToHeader 6`    69   �� *Name+6`     5!      -   5        priceColumn��$	 Price��5!   T   $
 SizeToHeader 6c    6:   �� *Price+6c     5"      -   5        stockColumn��$	 Stock��5"   T   $
 SizeToHeader 6c    6:   �� *Stock+6c     5#      -   5        stock_Max_LimitColumn��$	 Stock Max Limit��5#   h   $
 SizeToHeader 6�    6D   �� *Stock_Max_Limit+6�     5$      -   5        stock_Min_LimitColumn��$	 Stock Min Limit��5$   h   $
 SizeToHeader 6�    6D   �� *Stock_Min_Limit+6�   5&      �� 5'   
   -   5        $��btnShowProduct��5'      $��Show Product��6'   $
��Left=�6>   $��530,287,0,0q�6Y   $	��Top=�6n   $	��101��6�   $��27��6�   5)      5*      