using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace FASTDRPROJECT.Report
{
    public partial class SingleDepositSchemeReport : System.Web.UI.Page
    {
        #region Varible
        SqlConnection connection = new SqlConnection(@"Data Source=Admin-pc;Integrated Security=True;Initial Catalog=FASFINTDR");
        private DataSet ds;
        private SqlDataAdapter da;
        private SqlCommand cmd;
        string QUERY;
        ReportDocument reportDocument=new ReportDocument();
        ParameterField parameterField=new ParameterField();
        ParameterFields parameterFields=new ParameterFields();
        ParameterDiscreteValue parameterDiscreteValue=new ParameterDiscreteValue();
        #endregion

        #region Method
        public void BindTDR()
        {
                connection.Open();
                QUERY = "select * from tblSingle";
                cmd = new SqlCommand(QUERY, connection);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                ddlTDR.DataSource = ds;
                ddlTDR.DataTextField = "tdrSlNo";
                ddlTDR.DataValueField = "singleId";
                ddlTDR.DataBind();
                ddlTDR.Items.Insert(0, new ListItem("--Select--", "0"));
                connection.Close();
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindTDR();
            }

            //if (Page.IsPostBack)
            //    CrystalReportViewer1.Visible = true;
            //else
            
            //    CrystalReportViewer1.Visible = false;
        }

        protected void btnPreview_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    //ds.Tables[0].Rows.Clear();
            //    da = new SqlDataAdapter("select * from tblSingle where tdrSlNo=" + ddlTDR.SelectedValue + "", connection);
            //    da.Fill(ds);
            //    reportDocument.Load(@"~/Single Deposit Scheme Report/SingleDepositReport.rpt");
            //    reportDocument.SetDataSource(ds);
            //    CrystalReportViewer1.ReportSource = reportDocument;
            //}
            //catch (Exception exception)
            //{
            //    Label1.ForeColor = System.Drawing.Color.Red;
            //    Label1.Text = "Error Occured: " + exception.Message.ToString();
            //}



            try
            {
                //ReportDocument reportdocument = new ReportDocument();
                //reportdocument.Load(Server.MapPath("~/Single Deposit Scheme Report/SingleDepositReport.rpt"));
                //reportdocument.SetDatabaseLogon("sa", "MySampleDB");
                //reportdocument.SetParameterValue("tdrSlNo", txtSearch.Text);
                //CrystalReportViewer1.ReportSource = reportdocument;





                //parameterField.Name = "";
                //parameterDiscreteValue.Value = ddlTDR.SelectedValue;
                //parameterField.CurrentValues.Add(parameterDiscreteValue);
                //parameterFields.Add(parameterField);
                //CrystalReportViewer1.ParameterFieldInfo = parameterFields;
                //reportDocument.Load((Server.MapPath("~/Single Deposit Scheme Report/SingleDepositReport.rpt")));
                //CrystalReportViewer1.ReportSource = reportDocument;

                reportDocument.Load(Server.MapPath("~/Single Deposit Scheme Report/SingleDepositReport.rpt"));
                // reportDocument.SetParameterValue("tdrSlNo", ddlTDR.SelectedValue);
                //reportDocument.RecordSelectionFormula = ("{tblSingle.tdrSlNo}=" + ddlTDR.SelectedIndex);
                reportDocument.RecordSelectionFormula = ("tblSingle.tdrSlNo" + ddlTDR.SelectedValue);
                CrystalReportViewer1.ReportSource = reportDocument;
            }
            catch (Exception exception)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Error Occured :" + exception.Message.ToString();
            }
        }
    }
}