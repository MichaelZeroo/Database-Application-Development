   M S B A M L   `   `   `  ����N  JVirtualShoppingMall, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:VirtualShoppingMallVirtualShoppingMall  5      > :DAL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null&clr-namespace:DAL;assembly=DALDAL 5      )    #VirtualShoppingMall.UCUpdateProduct   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:VirtualShoppingMall     5      .DALclr-namespace:DAL;assembly=DAL     5      -   5          � 	Resources  5
         productViewSource��%   &	        �� 5   
   6   5      .��5      � .+�5   
   �� $��Enter Product ID��6   $��20(�6+   $
��Left=�69   $��	10,10,0,0q�6T   $	��Top=�6g   $��50��6   $	��266��6�   �� 5   
   -   5        $��txtPID��5      $
��Left=�6    $��50��6;   $��
300,10,0,0q�6G    �� TextWrapping$
 Wrap=�6[   $	��Top=�6o   $	��219��6�   �� 5   
   -   5         ��Name$ 	btnSearch��5      $��Search��6$   $��20(�65   $
��Left=�6C   $��
622,10,0,0q�6^   $	��Top=�6r   $	��103��6�   $��50��6�   6�   � 5   
   -   5         �Name$ grid1��5       � DataContext# [  6   $
��Left=�6O   $��175,167,0,0q�6j   $	��Top=�6   $	��237��6�   $	��234��6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5       �� $��Description:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��0��6a   $��Center=�6n   �� 5!      -   5         ��Name$ descriptionTextBox��5!      $��1��62   $
��Left=�6B   $��23��6]   $��3q�6i   $��0��6t   $��Center=�6�   $	��120��6   ��6�   �� *Description+ �� Mode$ TwoWay=�	 �� NotifyOnValidationError	 . 
 �� ValidatesOnExceptions
 . 6   �� 5"      $��
Max Limit:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   �� 5#      -   5        $ max_LimitTextBox��5#      $��1��60   $
��Left=�6@   $��23��6[   $��3q�6g   $��1��6r   $��Center=�6�   $	��120��6�   ��6   �� *	Max_Limit+$ TwoWay=�	 . 
 . 6�   �� 5$      $��
Min Limit:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��2��6_   $��Center=�6l   �� 5%      -   5        $ min_LimitTextBox��5%      $��1��60   $
��Left=�6@   $��23��6[   $��3q�6g   $��2��6r   $��Center=�6�   $	��120��6�   ��6   �� *	Min_Limit+$ TwoWay=�	 . 
 . 6�   �� 5&      $��Name:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��3��6Z   $��Center=�6g   �� 5'      -   5        $ nameTextBox��5'      $��1��6+   $
��Left=�6;   $��23��6V   $��3q�6b   $��3��6m   $��Center=�6�   $	��120��6�   ��6z   �� *Name+$ TwoWay=�	 . 
 . 6�   �� 5(      $��Price Per Item:��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��4��6d   $��Center=�6q   �� 5)      -	   5        $ pricePerItemTextBox��5)      $��1��63   $
��Left=�6C   $��23��6^   $��3q�6j   $��4��6u   $��Center=�6�   $	��120��6  ��6�   �� *PricePerItem+$ TwoWay=�	 . 
 . 6  �� 5*      $��Stock:��6   $��0��6%   $
��Left=�65   $��3q�6P   $��5��6[   $��Center=�6h   �� 5+      -
   5        $ stockTextBox��5+      $��1��6,   $
��Left=�6<   $��23��6W   $��3q�6c   $��5��6n   $��Center=�6�   $	��120��6�   ��6{   �� *Stock+$ TwoWay=�	 . 
 . 6�   �� 5,      $��	Warranty:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��6��6^   $��Center=�6k   �� 5-      -   5        $ warrantyTextBox��5-      $��1��6/   $
��Left=�6?   $��23��6Z   $��3q�6f   $��6��6q   $��Center=�6�   $	��120��6�   ��6~   �� *
Warranty+$ TwoWay=�	 . 
 . 6�   5.      �� 5/   
   -   5        $ 	btnUpdate��5/      $��Update��6$   $��20(�65   $
��Left=�6C   $��484,354,0,0q�6^   $	��Top=�6s   $	��103��6�   $��50��6�   6�   51      52      