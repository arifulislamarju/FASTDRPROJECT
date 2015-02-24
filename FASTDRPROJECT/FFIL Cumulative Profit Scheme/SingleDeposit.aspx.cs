using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FASTDRPROJECT.BLL;
using FASTDRPROJECT.DAO;

namespace FASTDRPROJECT.FFIL_Cumulative_Profit_Scheme
{
    public partial class SingleDeposit : System.Web.UI.Page
    {

        /// <summary>
        /// This code is prepred by Mohammad Ariful Islam.
        /// Software Engineer
        /// FAS Finance & Investment Limited.
        /// </summary>
        #region Variable
        ThreeMonthSingleDAO aThreeMonthSingleDao=new ThreeMonthSingleDAO();
        ThreeMonthSingleBLL aThreeMonthSingleBll=new ThreeMonthSingleBLL();
        #endregion

        #region Method

        public void ClearControl()
        {
            txtTdrNo.Text = "";
            txtAccNo.Text = "";
            txtClientName.Text = "";
            txtFatherName.Text = "";
            txtMotherName.Text = "";
            txtSpouseName.Text = "";
            txtReligion.Text = "";
            txtNationality.Text = "";
            txtIdNo.Text = "";
            txtOccupation.Text = "";
            txtOrganization.Text = "";
            txtDesignation.Text = "";
            txtOfficeAddress.Text = "";
            txtPresenetAdd.Text = "";
            txtPermanentAdd.Text = "";
            txtPhone.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtFax.Text = "";
            txtDepAmount.Text = "";
            txtDepTenure.Text = "";
            txtChequeNo.Text = "";
            txtBank.Text = "";
            txtBranch.Text = "";
            txtTakaInWord.Text = "";
            txtRate.Text = "";
            txtRM.Text = "";
            txtNom1.Text = "";
            txtFat1Name.Text = "";
            txtMot1Name.Text = "";
            txtSP1Name.Text = "";
            txtRelation1.Text = "";
            txtPercent1.Text = "";
            txtNom2.Text = "";
            txtFat2Name.Text = "";
            txtMot2Name.Text = "";
            txtSP2Name.Text = "";
            txtRelation2.Text = "";
            txtPercent2.Text = "";
            txtDepositDate.Text = "";
            txtDOB.Text = "";
            txtChequeDate.Text = "";
            txtDateMaturity.Text = "";
            txtChequeDate.Text = "";
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            aThreeMonthSingleDao.depositScheme = lblScheme.Text;
            aThreeMonthSingleDao.depositDate = Convert.ToDateTime(txtDepositDate.Text);
            aThreeMonthSingleDao.tdrSlNo = txtTdrNo.Text.Trim();
            aThreeMonthSingleDao.accountNumber = txtAccNo.Text.Trim();
            aThreeMonthSingleDao.clientName = txtClientName.Text.Trim();
            aThreeMonthSingleDao.fatherName = txtFatherName.Text.Trim();
            aThreeMonthSingleDao.motherName = txtMotherName.Text.Trim();
            aThreeMonthSingleDao.spouseName = txtSpouseName.Text.Trim();
            aThreeMonthSingleDao.religion = txtReligion.Text.Trim();
            aThreeMonthSingleDao.DOB = Convert.ToDateTime(txtDOB.Text.Trim());
            aThreeMonthSingleDao.sex = ddlSex.SelectedValue;
            aThreeMonthSingleDao.nationality = txtNationality.Text.Trim();
            aThreeMonthSingleDao.id = ddlID.SelectedValue;
            aThreeMonthSingleDao.idNo = txtIdNo.Text.Trim();
            aThreeMonthSingleDao.occupation = txtOccupation.Text.Trim();
            aThreeMonthSingleDao.organization = txtOrganization.Text.Trim();
            aThreeMonthSingleDao.designation = txtDesignation.Text.Trim();
            aThreeMonthSingleDao.officeAddress = txtOfficeAddress.Text.Trim();
            aThreeMonthSingleDao.presentAddress = txtPresenetAdd.Text.Trim();
            aThreeMonthSingleDao.permAddress = txtPermanentAdd.Text.Trim();
            aThreeMonthSingleDao.phone = txtPhone.Text.TrimEnd();
            aThreeMonthSingleDao.mobile = txtMobile.Text.Trim();
            aThreeMonthSingleDao.email = txtEmail.Text.Trim();
            aThreeMonthSingleDao.fax = txtFax.Text.Trim();
            aThreeMonthSingleDao.depAmount = txtDepAmount.Text.Trim();
            aThreeMonthSingleDao.depTenure = txtDepTenure.Text.Trim();
            aThreeMonthSingleDao.depDateIssue = Convert.ToDateTime(txtDateIssue.Text.Trim());
            aThreeMonthSingleDao.depDateMaturity = Convert.ToDateTime(txtDateMaturity.Text.Trim());
            aThreeMonthSingleDao.cheqPoDDNo = txtChequeNo.Text.Trim();
            aThreeMonthSingleDao.cheqDate = Convert.ToDateTime(txtChequeDate.Text.Trim());
            aThreeMonthSingleDao.cheqBank = txtBank.Text.Trim();
            aThreeMonthSingleDao.cheqBranch = txtBranch.Text.Trim();
            aThreeMonthSingleDao.cheqTakaInWrd = txtTakaInWord.Text.Trim();
            aThreeMonthSingleDao.sourceFunds = ddlFund.SelectedValue;
            aThreeMonthSingleDao.interestRate = txtRate.Text.Trim();
            aThreeMonthSingleDao.nameRM = txtRM.Text.Trim();
            aThreeMonthSingleDao.nominee1 = txtNom1.Text.Trim();
            aThreeMonthSingleDao.nominee1FatherName = txtFat1Name.Text.Trim();
            aThreeMonthSingleDao.nominee1MotherName = txtMot1Name.Text.Trim();
            aThreeMonthSingleDao.nominee1SpouseName = txtSP1Name.Text.Trim();
            aThreeMonthSingleDao.nominee1Relation = txtRelation1.Text.Trim();
            aThreeMonthSingleDao.nominee1Percentage = txtPercent1.Text.Trim();

            //Image and Signature Insertion for First Nominee
            aThreeMonthSingleDao.nominee1Image = FileUpload1.PostedFile.ContentLength;
            aThreeMonthSingleDao.nominee1Signature = FileUpload3.PostedFile.ContentLength;
            //byte[] msdata1=new byte[aThreeMonthSingleDao.nominee1Image];
            aThreeMonthSingleDao.msdata1 = new byte[aThreeMonthSingleDao.nominee1Image];
            FileUpload1.PostedFile.InputStream.Read(aThreeMonthSingleDao.msdata1, 0, aThreeMonthSingleDao.nominee1Image);

            aThreeMonthSingleDao.msdata2 = new byte[aThreeMonthSingleDao.nominee1Signature];
            FileUpload1.PostedFile.InputStream.Read(aThreeMonthSingleDao.msdata2, 0, aThreeMonthSingleDao.nominee1Signature);


            aThreeMonthSingleDao.nominee2 = txtNom2.Text.Trim();
            aThreeMonthSingleDao.nominee2FatherName = txtFat2Name.Text.Trim();
            aThreeMonthSingleDao.nominee2MotherName = txtMot2Name.Text.Trim();
            aThreeMonthSingleDao.nominee2SpouseName = txtSP2Name.Text.Trim();
            aThreeMonthSingleDao.nominee2Relation = txtRelation2.Text.Trim();
            aThreeMonthSingleDao.nominee2Percentage = txtPercent2.Text.Trim();


            aThreeMonthSingleDao.nominee2Image = FileUpload2.PostedFile.ContentLength;
            aThreeMonthSingleDao.nominee2Signature = FileUpload4.PostedFile.ContentLength;
            //byte[] msdata1=new byte[aThreeMonthSingleDao.nominee1Image];
            aThreeMonthSingleDao.msdata3 = new byte[aThreeMonthSingleDao.nominee2Image];
            FileUpload1.PostedFile.InputStream.Read(aThreeMonthSingleDao.msdata3, 0, aThreeMonthSingleDao.nominee2Image);

            aThreeMonthSingleDao.msdata4 = new byte[aThreeMonthSingleDao.nominee2Signature];
            FileUpload1.PostedFile.InputStream.Read(aThreeMonthSingleDao.msdata4, 0, aThreeMonthSingleDao.nominee2Signature);

            try
            {
                int result = aThreeMonthSingleBll.Insert(aThreeMonthSingleDao);
                if (result > 0)
                {
                    ClearControl();
                    Label1.Text = "Data Saved Successfully";
                    Label1.ForeColor = System.Drawing.Color.Green;
                    //Response.Redirect("ThreeMonthSingleDeposit.aspx");
                }
            }
            catch (Exception exception)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Error occured :" + exception.Message.ToString();
            }
            finally
            {
                aThreeMonthSingleDao = null;
                aThreeMonthSingleBll = null;
            }
        }
    }
}