using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using arabasite.Classes;

namespace arabasite
{
    public partial class addCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                SqlCommand commandListBrands = new SqlCommand("select*from BrandTable", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr = commandListBrands.ExecuteReader();

                comboBox.DataTextField = "BrandName";

                comboBox.DataValueField = "BrandId";

                comboBox.DataSource = dr;

                comboBox.DataBind();
               
                dr.Close();
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert into CarTable (CarModel,CarBrandID,CarFuelType,CarDescriptions,CarContact,CarSeller,CarPhoto,CarPrice) values (@pmodel,@pbrand,@pfuel,@pdes,@pcontact,@pseller,@pphoto,@pprice)",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pmodel",    tboxModel.Text);
            commandAdd.Parameters.AddWithValue("@pbrand",    Convert.ToInt32(comboBox.SelectedValue));
            commandAdd.Parameters.AddWithValue("@pfuel",     tboxFuel.Text);
            commandAdd.Parameters.AddWithValue("@pdes",      tboxdescription.Text);
            commandAdd.Parameters.AddWithValue("@pcontact",  tboxcontact.Text);
            commandAdd.Parameters.AddWithValue("@pseller",   tboxseller.Text);
            commandAdd.Parameters.AddWithValue("@pphoto",    tboxPhoto.Text);
            commandAdd.Parameters.AddWithValue("@pprice",    tboxprice.Text);

            commandAdd.ExecuteNonQuery();

        }
    }
}