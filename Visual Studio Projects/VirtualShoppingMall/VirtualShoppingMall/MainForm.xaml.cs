using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using DAL;

namespace VirtualShoppingMall
{
    /// <summary>
    /// Interaction logic for MainForm.xaml
    /// </summary>
    public partial class MainForm : Window
    {
        public MainForm()
        {
            InitializeComponent();
            string role = DataStore.currentLogin.Role;
            mainMenu.Items.Clear();
            switch (role)
            {
                case "VOwner": mainMenu.Items.Add(MIVendor); break;
                case "SOwner": mainMenu.Items.Add(MIMallOwner); break;
                case "Customer": mainMenu.Items.Add(MICustomer); break;
            }

        }

        private void SAPMItem_Click(object sender, RoutedEventArgs e)
        {
            mainPanel.Children.Clear();
            mainPanel.Children.Add(new UCVShowAllProducts());
        }

        private void APMItem_Click(object sender, RoutedEventArgs e)
        {
            mainPanel.Children.Clear();
            mainPanel.Children.Add(new UCAddNewProduct());
        }

        private void UPMItem_Click(object sender, RoutedEventArgs e)
        {
            mainPanel.Children.Clear();
            mainPanel.Children.Add(new UCUpdateProduct());
        }
    }
}
