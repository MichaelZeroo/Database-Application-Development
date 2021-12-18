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
using System.Windows.Navigation;
using System.Windows.Shapes;
using DAL;

namespace VirtualShoppingMall
{
    /// <summary>
    /// Interaction logic for UCAddNewProduct.xaml
    /// </summary>
    public partial class UCAddNewProduct : UserControl
    {
        public UCAddNewProduct()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {

            // Do not load your data at design time.
            // if (!System.ComponentModel.DesignerProperties.GetIsInDesignMode(this))
            // {
            // 	//Load your data here and assign the result to the CollectionViewSource.
            // 	System.Windows.Data.CollectionViewSource myCollectionViewSource = (System.Windows.Data.CollectionViewSource)this.Resources["Resource Key for CollectionViewSource"];
            // 	myCollectionViewSource.Source = your data
            // }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Product p = new Product();
            p.Description = descriptionTextBox.Text;
            p.Name = nameTextBox.Text;
            p.Max_Limit = int.Parse(max_LimitTextBox.Text);
            p.Min_Limit = int.Parse(min_LimitTextBox.Text);
            p.Stock = int.Parse(stockTextBox.Text);
            p.Warranty = double.Parse(warrantyTextBox.Text);
            p.PricePerItem = decimal.Parse(pricePerItemTextBox.Text);
            DataStore.addProduct(p);
            MessageBox.Show("Product added successfully");
        }
    }
}
