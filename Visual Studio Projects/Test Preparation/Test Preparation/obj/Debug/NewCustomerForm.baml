   M S B A M L   `   `   `  ����K  GTest Preparation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Test_PreparationTest_Preparation  5   	   &     Test_Preparation.NewCustomerForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Test_Preparation     5   	   -   5          � Title$  NewCustomerForm��5   	   $	��450��6!   $	��800��6.    � 	Resources 5	         tCustomerViewSource��%   &	        �� 5
   
   6   5      .��5      � .+�5   
   �� -   5        $��btnAdd��5      $	��ADD��5      $
��Left=�6   $��213,218,0,0q�66   $	��Top=�6K   $	��117��6c   $��38��6o   6{   � 5   
   -   5         �Name$ grid1��5       � DataContext# [  6   $
��Left=�6Q   $��
167,73,0,0q�6l   $	��Top=�6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� $��Email:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��1��6[   $��Center=�6h   �� 5      -   5         ��Name$ emailTextBox��5      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��1��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Email+ �� Mode$ TwoWay=� �� NotifyOnValidationError . 	 �� ValidatesOnExceptions	 . 6�   �� 5      $��Name:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��0��6Z   $��Center=�6g   �� 5      -   5        $ nameTextBox��5      $��1��6+   $
��Left=�6;   $��23��6V   $��3q�6b   $��0��6m   $��Center=�6�   $	��120��6�   ��6z   �� *Name+$ TwoWay=� . 	 . 6�   �� 5      $��Phone:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��2��6[   $��Center=�6h   �� 5      -   5        $ phoneTextBox��5      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��2��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Phone+$ TwoWay=� . 	 . 6�   5      �� 5    
   -   5        $��loginButton��5    :   $��Go To Login Form��6   $��20(�6,   $
��Left=�5!      $��462,218,0,0q�6,   $	��Top=�6A   $	��175��6Y   $��38��6e   6q   5#      5$      