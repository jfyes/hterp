unit uConst;

interface

uses
  Windows,  Messages;

  
const  
  RGroupID_SYSMAGER    =   1;    //系统组
  RGroupID_BUSMAGER    =   3;   //业务经理组
  RGroupID_PROJMAGER   =   4;    //工程经理组
  RGroupID_AcctMAGER   =   6;    //财务经理组

  RGroupID_QUOTATION_Empr= 15;  // 报价员
  RGroupID_QUOTATION   =   14;   //报价组长
  RGroupID_Sales_Empr  =   13; //业务主任
  RGroupID_Sales       =   23;  //业务员
  RGroupID_DeptEmpr    =   24;  //部门跟单员




const 
  {Time }
  MS1    = 1;              //1毫秒
  SS1    = MS1 * 1000;     //1秒钟
  MM1    = SS1 * 60;       //1分钟
  HH1    = MM1 * 60;       //1小时
  Day1   = HH1 * 24;       //1天


  Day_7  = 7*HH1/Day1;   //7:00
  Day_14  = 14*HH1/Day1;   //14:00
  Day_18  = 18*HH1/Day1;   //14:00
  Day_20  = 20*HH1/Day1;   //14:00


  {字节}
  BIT1 =    1;
  KB1  =    BIT1* 1024;
  MB1  =    KB1 * 1024;
  GB1  =    MB1 * 1024;
  //TB1  =    GB1 * 1024;

  WM_BASE_MESSAGE    = WM_USER  + 100;
  CM_ChildFormActive = WM_BASE_MESSAGE + 1; //子窗体创建或显示时发送消给系统主窗体，将子窗体显示PAGECONTROL上加一个标签
  CM_ChildFormClose  = WM_BASE_MESSAGE + 2; //子窗体关闭时发送消给系统主窗体，将PAGECONTROL上加一个标签销毁
  WM_OPEN_ChildForm  = WM_BASE_MESSAGE + 3;   //  打开MDI子窗口的消息
  WM_Refresh_DataSet = WM_BASE_MESSAGE + 4;   //刷新子窗口数据集
  WM_CLOSE_NAVTREE   = WM_BASE_MESSAGE + 5;    //关闭主窗口的导航树
  WM_POWER_RESTORE   = WM_Refresh_DataSet;    //待机或网线拔掉通知子窗口刷新数据集

  WParam_OPEN_Flowchart_Form =  WM_BASE_MESSAGE + 7; //通过流程打开

 //IM MESSAGE
  WM_IM_UPDATE_STATE = WM_BASE_MESSAGE + 100;  //
  WM_IM_UPDATE_INFO  = WM_BASE_MESSAGE + 101;  //
  WM_IM_QUEUEMESSAGE = WM_BASE_MESSAGE + 102;  //
  WM_IM_DispatchMessage = WM_BASE_MESSAGE + 103;  //

  //子窗口编号
  WParam_fm_QU_AnyQuotation       = 1; //报价评估资料表
  WParam_fm_WP_WorkItems          = 2; //工作日志列表
  WParam_fm_QU_EngDrawings        = 3;//图纸管理
  WParam_fm_QU_ViewQuotationState = 4; //报价单状态查看
  WParam_fm_QU_AuditedAnyQuotation= 5; //查审
  WParam_fm_CC_MainFlowchart      = 8; //企业流程
  WParam_fm_CC_CorporateCulturePic =7;
  WParam_fm_EBS_ClientInfo         =9;
  WParam_From_ModuleCode           =-10;  //查找ModuleCode 打开窗口
  WParam_From_ModuleVID            =-11;  //查找VID打开窗口

  WParam_2CODE_DATA = WM_USER+100;
  WParam_2CODE_ERROR = WM_USER+101;


  SYS_Flowchart = 'frm_HTFlowchart';

resourcestring

  SQL_EXEC_ERROR              = '执行脚本失败: %s, '#13#10#13#10'原因: %s';
  RS_NotfoundSubFlowchart     = '%s: 还没有建立子流程。';
  RS_LoadflowchartFailed      = '加载流程图失败: %s';
  RS_SaveflowchartFailed      = '保存流程图失败: %s';
  RS_NotfoundFlowchart        = '此流程不存在。';
  RS_NewFlowchart             = '新增-[%s]';
  RS_EditFlowchart            = '修改-[%s]';
  RS_NotselectedObject        = '请选择一个对象。';
  RS_Sure_delete_record       = '确定要删除当前记录吗？';

  
  RS_FileSvrCreateDir          = '创建Temp目录失败：%s';
  RS_AttachmentTitle           = '附件管理';
  RS_NotfoundLocateFile        = '没有找到文件。';
  RS_NoUploadFile              = '没有上传文件。';
  RS_DownAttachmentFailed      = '下载文件失败: %s'#13'%s';
  RS_UploadAttachmentError     = '上传文件出错: %s';
  RS_ConfimDeleteAttachment    = '确定要删除文件：[%s]吗?';
  RS_AttachmentNotrightDelete  = '不是你上传的附件，你不能删除。';
  RS_AttachmentNotAttUID       = '此单据AccFile没有附件GUID值，无法管理附件。';
  RS_AttachmentNotAttField     = '此单据没有设计附件功能字段[%s]。';
  RS_SubAttachmentNotAttField  = '此单据表体项没有设计附件功能字段[%s]。';

///////////////////////////////////////////////////////////////////////////////
//以下为2013


const
  //各模块的数据库名
  HT_ERP_DBName = 'HT_ERP';       //海天正常数据库
  HT_ERPX_DBName = 'HT_ERPX';     //海天 承揽加工 数据库
  HY_ERP_DBName = 'EDATA';        //海洋数据库

  APP_STATUE_INDEX = 9;  //Application Status bar index

  appVersion = '版本：V2.0.1';


  sysonce = '海天 信息化管理系统 已经运行！';

  cnt_Registry_Key = '\SOFTWARE\HT_ERP2011\';

  REG_SYSSETING  = cnt_Registry_Key+'SysSeting\';

  SysINIFileName = 'SysParams.ini';
  SS_ERROR_CREATE_TEMPFILE = '您没有创建临时文件的权限.';
  error_no_rights = WideString('您没有该操作权限！');
  error_dll_exists = WideString('动态库文件丢失!');
  error_dll_load = WideString('动态库调用失败: ');

  error_input_password = WideString('请正确地输入登录密码。');
  user_password_invalid = WideString('密码输入错误。');
  user_pass_safe = '你的用户密码非安全密码，请登录后修改。';
  user_pass_safe1 = '你新修改的密码非安全密码，请重新填写。';


  T_NUM: array[0..9] of string[2] = ('零', '壹', '贰', '叁', '肆', '伍', '陆',
    '柒', '捌', '玖');

  T_UNIT1: array[0..4] of string[2] = ('圆', '万', '亿', '万', '亿');

  T_UNIT2: array[0..2] of string[2] = ('拾', '佰', '仟');

  T_UNIT3: array[0..1] of string[2] = ('角', '分');



var
  appTitle: string = '信息化管理系统';
  systitle: string = '信息化管理系统';




implementation

end.
















