using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FASTDRPROJECT.DAO
{
    public class ThreeMonthSingleDAO
    {
        /// <summary>
        /// This code is prepred by Mohammad Ariful Islam.
        /// Software Engineer
        /// FAS Finance & Investment Limited.
        /// </summary>
        public int      singleId        { get; set; }
        public string   depositScheme   { get; set; }
        public DateTime depositDate     { get; set; }
        public string   tdrSlNo         { get; set; }
        public string   accountNumber   { get; set; }
        public string   clientName      { get; set; }
        public string   fatherName      { get; set; }
        public string   motherName      { get; set; }
        public string   spouseName      { get; set; }
        public DateTime DOB             { get; set; }
        public string   sex             { get; set; }
        public string   religion        { get; set; }
        public string   nationality     { get; set; }
        public string   id              { get; set; }
        public string   idNo            { get; set; }
        public string   occupation      { get; set; }
        public string   organization    { get; set; }
        public string   designation     { get; set; }
        public string   officeAddress   { get; set; }
        public string   presentAddress  { get; set; }
        public string   permAddress     { get; set; }
        public string   phone           { get; set; }
        public string   mobile          { get; set; }
        public string   email           { get; set; }
        public string   fax             { get; set; }
        public string   depAmount       { get; set; }
        public string   depTenure       { get; set; }
        public DateTime depDateIssue    { get; set; }
        public DateTime depDateMaturity { get; set; }
        public string   cheqPoDDNo      { get; set; }
        public DateTime cheqDate        { get; set; }
        public string   cheqBank        { get; set; }
        public string   cheqBranch      { get; set; }
        public string   cheqTakaInWrd   { get; set; }
        public string   sourceFunds     { get; set; }
        public string   interestRate    { get; set; }
        public string   nameRM          { get; set; }
        public string   nominee1        { get; set; }
        public string   nominee1FatherName { get; set; }
        public string   nominee1MotherName { get; set; }
        public string   nominee1SpouseName { get; set; }
        public string   nominee1Relation   { get; set; }
        public string   nominee1Percentage { get; set; }
        /// <summary>
        /// Image and Signature Insertion Properties for Nominee 1.
        /// </summary>
        public int   nominee1Image          { get; set; }
        public byte[] msdata1               { get; set; }
        public int nominee1Signature        { get; set; }
        public byte[] msdata2               { get; set; }
        
        public string   nominee2            { get; set; }
        public string   nominee2FatherName  { get; set; }
        public string   nominee2MotherName  { get; set; }
        public string   nominee2SpouseName  { get; set; }
        public string   nominee2Relation    { get; set; }
        public string   nominee2Percentage  { get; set; }
        /// <summary>
        /// Image and Signature Inserttion Properties for Nominee 2.
        /// </summary>
        public int   nominee2Image          { get; set; }
        public byte[] msdata3               { get; set; }
        public int   nominee2Signature      { get; set; }
        public byte[] msdata4               { get; set; }

    }
}