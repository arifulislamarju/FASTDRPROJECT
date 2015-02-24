using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using BLLObject;



namespace DataAccess
{
    #region Variable
    
    #endregion

    class ThreeMonthSingleDA
    {
        SqlConnection connection=new SqlConnection(ConfigurationManager.ConnectionStrings["TDR"].ToString());


        public int InsertDetails(BLLObject aBllObject)
        {
            try
            {

            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
