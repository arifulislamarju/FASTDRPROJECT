using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FASTDRPROJECT.DAO;

namespace FASTDRPROJECT.DAL
{
    public class ThreeMonthSingleDAL
    {
        /// <summary>
        /// This code is prepred by Mohammad Ariful Islam.
        /// Software Engineer
        /// FAS Finance & Investment Limited.
        /// </summary>
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FASTDR"].ToString());

        public Int32 Insert(ThreeMonthSingleDAO aThreeMonthSingleDao)
        {
            int result;
            try
            {
                SqlCommand cmd = new SqlCommand("spInsertSingle", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@depositScheme", aThreeMonthSingleDao.depositScheme);
                cmd.Parameters.AddWithValue("@depositDate", aThreeMonthSingleDao.depositDate);
                cmd.Parameters.AddWithValue("@tdrSlNo", aThreeMonthSingleDao.tdrSlNo);
                cmd.Parameters.AddWithValue("@accountNumber", aThreeMonthSingleDao.accountNumber);
                cmd.Parameters.AddWithValue("@clientName", aThreeMonthSingleDao.clientName);
                cmd.Parameters.AddWithValue("@fatherName", aThreeMonthSingleDao.fatherName);
                cmd.Parameters.AddWithValue("@motherName", aThreeMonthSingleDao.motherName);
                cmd.Parameters.AddWithValue("@spouseName", aThreeMonthSingleDao.spouseName);
                cmd.Parameters.AddWithValue("@DOB", aThreeMonthSingleDao.DOB);
                cmd.Parameters.AddWithValue("@religion", aThreeMonthSingleDao.religion);
                cmd.Parameters.AddWithValue("@sex", aThreeMonthSingleDao.sex);
                cmd.Parameters.AddWithValue("@nationality", aThreeMonthSingleDao.nationality);
                cmd.Parameters.AddWithValue("@id", aThreeMonthSingleDao.id);
                cmd.Parameters.AddWithValue("@idNo", aThreeMonthSingleDao.idNo);
                cmd.Parameters.AddWithValue("@occupation", aThreeMonthSingleDao.occupation);
                cmd.Parameters.AddWithValue("@organization", aThreeMonthSingleDao.organization);
                cmd.Parameters.AddWithValue("@designation", aThreeMonthSingleDao.designation);
                cmd.Parameters.AddWithValue("@officeAddress", aThreeMonthSingleDao.officeAddress);
                cmd.Parameters.AddWithValue("@presentAddress", aThreeMonthSingleDao.presentAddress);
                cmd.Parameters.AddWithValue("@permAddress", aThreeMonthSingleDao.permAddress);
                cmd.Parameters.AddWithValue("@phone", aThreeMonthSingleDao.phone);
                cmd.Parameters.AddWithValue("@mobile", aThreeMonthSingleDao.mobile);
                cmd.Parameters.AddWithValue("@email", aThreeMonthSingleDao.email);
                cmd.Parameters.AddWithValue("@fax", aThreeMonthSingleDao.fax);
                cmd.Parameters.AddWithValue("@depAmount", aThreeMonthSingleDao.depAmount);
                cmd.Parameters.AddWithValue("@depTenure", aThreeMonthSingleDao.depTenure);
                cmd.Parameters.AddWithValue("@depDateIssue", aThreeMonthSingleDao.depDateIssue);
                cmd.Parameters.AddWithValue("@depDateMaturity", aThreeMonthSingleDao.depDateMaturity);
                cmd.Parameters.AddWithValue("@cheqPoDDNo", aThreeMonthSingleDao.cheqPoDDNo);
                cmd.Parameters.AddWithValue("@cheqDate", aThreeMonthSingleDao.cheqDate);
                cmd.Parameters.AddWithValue("@cheqBank", aThreeMonthSingleDao.cheqBank);
                cmd.Parameters.AddWithValue("@cheqBranch", aThreeMonthSingleDao.cheqBranch);
                cmd.Parameters.AddWithValue("@cheqTakaInWrd", aThreeMonthSingleDao.cheqTakaInWrd);
                cmd.Parameters.AddWithValue("@sourceFunds", aThreeMonthSingleDao.sourceFunds);
                cmd.Parameters.AddWithValue("@interestRate", aThreeMonthSingleDao.interestRate);
                cmd.Parameters.AddWithValue("@nameRM", aThreeMonthSingleDao.nameRM);
                cmd.Parameters.AddWithValue("@nominee1", aThreeMonthSingleDao.nominee1);
                cmd.Parameters.AddWithValue("@nominee1FatherName", aThreeMonthSingleDao.nominee1FatherName);
                cmd.Parameters.AddWithValue("@nominee1MotherName", aThreeMonthSingleDao.nominee1MotherName);
                cmd.Parameters.AddWithValue("@nominee1SpouseName", aThreeMonthSingleDao.nominee1SpouseName);
                cmd.Parameters.AddWithValue("@nominee1Relation", aThreeMonthSingleDao.nominee1Relation);
                cmd.Parameters.AddWithValue("@nominee1Percentage", aThreeMonthSingleDao.nominee1Percentage);
                cmd.Parameters.AddWithValue("@nominee1Image", aThreeMonthSingleDao.msdata1);
                cmd.Parameters.AddWithValue("@nominee1Signature", aThreeMonthSingleDao.msdata2);
                
                cmd.Parameters.AddWithValue("@nominee2", aThreeMonthSingleDao.nominee2);
                cmd.Parameters.AddWithValue("@nominee2FatherName", aThreeMonthSingleDao.nominee2FatherName);
                cmd.Parameters.AddWithValue("@nominee2MotherName", aThreeMonthSingleDao.nominee2MotherName);
                cmd.Parameters.AddWithValue("@nominee2SpouseName", aThreeMonthSingleDao.nominee2SpouseName);
                cmd.Parameters.AddWithValue("@nominee2Relation", aThreeMonthSingleDao.nominee2Relation);
                cmd.Parameters.AddWithValue("@nominee2Percentage", aThreeMonthSingleDao.nominee2Percentage);
                cmd.Parameters.AddWithValue("@nominee2Image", aThreeMonthSingleDao.msdata3);
                cmd.Parameters.AddWithValue("@nominee2Signature", aThreeMonthSingleDao.msdata4);


                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                if (result > 0)
                {
                    return result;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception exception)
            {

                throw;
            }
            finally
            {
                if (connection.State==ConnectionState.Closed)
                {
                    connection.Close();
                }
            }
        }

    }
}