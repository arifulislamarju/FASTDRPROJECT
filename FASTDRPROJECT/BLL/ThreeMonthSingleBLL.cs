using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FASTDRPROJECT.DAL;
using FASTDRPROJECT.DAO;

namespace FASTDRPROJECT.BLL
{
    public class ThreeMonthSingleBLL
    {
        /// <summary>
        /// This code is prepred by Mohammad Ariful Islam.
        /// Software Engineer
        /// FAS Finance & Investment Limited.
        /// </summary>
        public Int32 Insert(ThreeMonthSingleDAO aThreeMonthSingleDao)
        {
            ThreeMonthSingleDAL aThreeMonthSingleDal=new ThreeMonthSingleDAL();

            try
            {
                return aThreeMonthSingleDal.Insert(aThreeMonthSingleDao);
            }
            catch (Exception exception)
            {

                throw;
            }
            finally
            {
                aThreeMonthSingleDal = null;
            }
        }
    }
}