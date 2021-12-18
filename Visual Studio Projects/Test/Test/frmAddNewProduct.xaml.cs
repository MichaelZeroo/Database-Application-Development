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

namespace Test
{
    /// <summary>
    /// Interaction logic for frmAddNewProduct.xaml
    /// </summary>
    public partial class frmAddNewProduct : Window
    {

        System.Windows.Data.CollectionViewSource productViewSource;
        public frmAddNewProduct()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource productViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("productViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // productViewSource.Source = [generic data source]
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Product product = new Product();
            product.Name = nameTextBox.Text;
            product.Price = Convert.ToInt32(priceTextBox);
            product.Description = descriptionTextBox.Text;
            product.Stock = Convert.ToInt32(stockTextBox);
            product.Stock_Max_Limit = Convert.ToInt32(stockMaxTextBox);
            product.Stock_Min_Limit = Convert.ToInt32(stockMinTextBox);

            GS02_Michael_TestEntities ctx = new GS02_Michael_TestEntities();
            ctx.Products.Add(product);
            ctx.SaveChanges();
            MessageBox.Show("Product successfully added");
            nameTextBox.Clear();
            priceTextBox.Clear();
            descriptionTextBox.Clear();
            stockTextBox.Clear();
            stockMaxTextBox.Clear();
            stockMinTextBox.Clear();
        }
    }
}
