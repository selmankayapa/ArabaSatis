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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select CarID,CarModel,CarBrandID,CarFuelType,CarDescriptions,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmations,BrandId,BrandName from CarTable inner join BrandTable on CarTable.CarBrandID =BrandTable.BrandId where CarConfirmations=@pcon", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon",true);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();

        }

    }
}