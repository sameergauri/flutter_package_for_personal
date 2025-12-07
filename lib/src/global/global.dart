// ignore_for_file: constant_identifier_names
// ignore_for_file: todo

class GlobalConstants {
  static final spaceMatch = RegExp(r"^[A-Z][a-z]+\s[A-Z][a-z]+$");
  static const API_Host_one =
      "ec2-13-200-109-136.ap-south-1.compute.amazonaws.com:9090";
  // "10.163.64.234:8081";
  // "10.163.64.234:9090";
  static const ASSET_URL = "https://job-circle.s3.ap-south-1.amazonaws.com/";
  static const Image_url = "https://s3.ap-south-1.amazonaws.com/job-circle-2/";

  // TODO:: CustomApiUrl
  //
  static const _baseurl = "http://$API_Host_one";
  //
  //

  // TODO:: Generate responsibility using ai
  //
  static const generateResponsibilityUsingAiUrl =
      '$_baseurl/jobs/v/generateJobResponsibilityUsingGPT';
  //
  //
  //TODO:: Parse resume
  //
  static const parsecvurl = '$_baseurl/api/v1/cv/gpt4o-mini/parse';
  //
  //

  //TODO:: OTP
  //
  static const generateOtp = "$_baseurl/employee/v1/otp/getOtp?mobile=";
  static const validateOtp =
      "$_baseurl/employee/v1/otp/validateOtp?mobileNumber=";
  //
  //
  //TODO:: employee
  //
  static const getemployeeddurl = "$_baseurl/users/v1/employeeDD?userId=";
  static const getemployeebyid = "$_baseurl/employee/v1/getEmployeeById?id=";
  //
  //
  //TODO:: Jobs
  //
  static const getAllJobs =
      "$_baseurl/api/jobs/v1/recuriterJobHomePage?userId=";
  static const closeJob = "$_baseurl/api/jobs/v1/closed?id=";
  static const updatejob = "$_baseurl/api/jobs/v1/update";
  static const savejob = "$_baseurl/api/jobs/v1/save";
  static const listofPostedJob =
      "$_baseurl/jobs/v1/listOfPostedJobsByOrganization?employeeId=";
  static const ftechmatchinJob = "$_baseurl/jobs/v1/matchngjobNew?employeeId=";
  static const fetchJobDetail =
      "$_baseurl/api/jobs/v1/getJobDetailsForRecruiterByJobId?jobId=";
  static const fetchcrpfditinctdataurl =
      "$_baseurl/jobCRPF/v1/getDistinctProcess?companyid="; //To get posted crpf suggetion.
  static const getdistinctroleurl =
      "$_baseurl/jobCRPF/v1/getDistinctRolename?companyid=";
  static const getdistinctfunctionaareaurl =
      "$_baseurl/jobCRPF/v1/getDistinctFunctionalArea?companyid=";
  //
  //
  // TODO:: Client
  //
  static const fetchClienturl =
      "$_baseurl/clientCompany/v1/getAllClientCompanies?employeeId=";
  static const saveClienturl = "$_baseurl/clientCompany/v1/saveClientCompany";
  static const updateClienturl =
      "$_baseurl/clientCompany/v1/updateClientCompany";
  //
  //
  // TODO:: crpf and interview_address
  //
  static const fetchcrpfurl =
      "$_baseurl/api/crpf/v1/getCrpfByCompnayId?companyId=";
  static const fetchcompanyaddressurl =
      "$_baseurl/api/companyAddress/v1/getCompanyAddressByCompanyId?companyId=";
  static const addcrpfurl = "$_baseurl/api/crpf/v1/saveCrpf";
  static const addinterviewaddressurl =
      "$_baseurl/api/companyAddress/v1/saveCompanyAddress";
  static const deletinterviewaddressurl =
      "$_baseurl/company/v1/deleteAddress?id=";
  //
  //
  // TODO:: payout
  //
  static const addpayouturl = "$_baseurl/commercialPayout/v1/create";
  static const fetchpayouturl =
      "$_baseurl/commercialPayout/v1/getByCrpfId?crpfId=";
  static const editpayouturl = "$_baseurl/commercialPayout/v1/update?payoutId=";
  //
  //
  // TODO:: Hired Candidate
  //
  static const gethiredCandidateurl =
      "$_baseurl/leads/v1/getAdminRefrralsCandidates?admninId=";
  //
  //
  // TODO:: Invoice
  //
  static const fetchListofInvoiceurl =
      "$_baseurl/leads/v1/getAdminInvoiceDetails?adminId=";
  static const invaliddateInvoicerl = "$_baseurl/leads/v1/invalidateInvoice";
  static const updateinvoiceurl = "$_baseurl/leads/v1/updateInvoice";
  //

  //
  // TODO:: Ats
  //
  static const fetchatsurl = "$_baseurl/leads/v1/getAtsData?userId=";
  static const updateatsurl = "$_baseurl/leads/v1/updateLeads?id=";
  static const saveatsurl = _baseurl;
  //
  //
  // TODO:: WorkSpace
  //
  static const _wspacebaseurl =
      "$_baseurl/api/v1/workspaces"; // Base url for workspace
  //
  static const saveworkspaceurl = "$_wspacebaseurl/save-workspace";
  static const updateworkspaceurl = "$_wspacebaseurl/update-workspace?id=";
  static const fetchworkspacecnadidateurl =
      "$_wspacebaseurl/get-workspace/BystatusTab?sourceId=";
  static const fetchworkspacedetailurl =
      "$_wspacebaseurl/get-workspace-by-id?id=";
  static const deleteworkspaceurl = "$_wspacebaseurl/delete-workspace?id=";
  static const fetchdialerurl =
      "$_wspacebaseurl/get-workspace-with-tabs?userId=";
  static const movetoworkspaceurl =
      "$_wspacebaseurl/save-workspace/from-user?userId=";
  //
  //
  // TODO:: referand add resume
  //
  static const referandAddresumeurl =
      "$_baseurl/leads/v1/addResumeWithNewApproach?recruiterId=";
  //
  //
  // TODO:: add new opportunity
  //
  static const addnewopportunityurl =
      "$_baseurl/leads/v1/addInNewOppertunities";
  //
  //
  // TODO:: Master data
  //
  static const getsuggestionulr = "$_baseurl/master/v1/getByGroup?groupName=";
  static const fetchmasterdatasuggestionurl =
      "$_baseurl/api/master/v1/getMasterDataByGroupName?groupNmae=";
  //
  //
  // TODO:: Fiile upload
  //
  static const fileuploadurl = "$_baseurl/api/files/v1/multiUpload";
  //
  //
  // TODO:: Cache clear
  //
  static const clearcacheurl = "$_baseurl/api/v1/cache/clear";
  //
  //
  // TODO:: user
  //
  static const userdetailbyid = "$_baseurl/users/v1/getprofileById?userId=";
  // TODO:: company data
  static const fetchcompanydataurl = "$_baseurl/api/company/v1/getAllCompanies";
}
