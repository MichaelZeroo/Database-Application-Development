   M S B A M L   `   `   `  ����K  GTest Preparation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Test_PreparationTest_Preparation  5   	   &     Test_Preparation.SearchAndUpdate   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Test_Preparation     5   	   -   5          � Title$  SearchAndUpdate��5   	   $	��450��6!   $	��800��6.    � 	Resources 5	         tCustomerViewSource��%   &	        �� 5
   
   6   5      .��5      �  � DataContext# [  6   .+�5   
   �� $��20(�6   $��Enter Phone��5      $
��Left=�6#   $��	65,29,0,0q�6>   $	��Top=�6Q   $	��163��6i   �� 5   
   -   5        $��txtPhone��5      $
��Left=�5      $��48��6(   $��
282,29,0,0q�64    �� TextWrapping$
 Wrap=�6H   $	��Top=�6]   $	��276��6u   �� 5   
   -   5        $��	btnSearch��5   0   $��Search��6   $��20(�6"   $
��Left=�5      $��
621,29,0,0q�6,   $	��Top=�6@   $	��139��6X   $��36��6d   6p   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ tCustomerDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��173,126,202.333,170.667q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6i   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        emailColumn��,  &System.Windows.Controls.DataGridColumn	   Header$	 Email��5   T   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToHeader 6c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *Email+6c     5      -   5        iDColumn��$	 ID��5   N   $
 SizeToHeader 6Z    67   �� *ID+6Z     5      -   5        
nameColumn��$
	 Name��5   R   $
 SizeToHeader 6`    69   �� *Name+6`     5      -   5        phoneColumn��$	 Phone��5   T   $
 SizeToHeader 6c    6:   �� *Phone+6c   5      �� 5   
   -	   5        $��	btnUpdate��5      $��Update��5      $
��Left=�6   $��314,280,0,0q�69   $	��Top=�6N   $	��127��6f   $��29��6r   6~   5      5      