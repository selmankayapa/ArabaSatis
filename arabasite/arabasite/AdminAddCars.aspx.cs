using arabasite.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabasite
{
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select * from CarTable where CarConfirmations = @pcon", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon",false);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;  
            DataList1.DataBind();
            dr.Close();
        
        }
    }
}