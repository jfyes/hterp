unit uConst;

interface

uses
  Windows,  Messages;

  
const  
  RGroupID_SYSMAGER    =   1;    //ϵͳ��
  RGroupID_BUSMAGER    =   3;   //ҵ������
  RGroupID_PROJMAGER   =   4;    //���̾�����
  RGroupID_AcctMAGER   =   6;    //��������

  RGroupID_QUOTATION_Empr= 15;  // ����Ա
  RGroupID_QUOTATION   =   14;   //�����鳤
  RGroupID_Sales_Empr  =   13; //ҵ������
  RGroupID_Sales       =   23;  //ҵ��Ա
  RGroupID_DeptEmpr    =   24;  //���Ÿ���Ա




const 
  {Time }
  MS1    = 1;              //1����
  SS1    = MS1 * 1000;     //1����
  MM1    = SS1 * 60;       //1����
  HH1    = MM1 * 60;       //1Сʱ
  Day1   = HH1 * 24;       //1��


  Day_7  = 7*HH1/Day1;   //7:00
  Day_14  = 14*HH1/Day1;   //14:00
  Day_18  = 18*HH1/Day1;   //14:00
  Day_20  = 20*HH1/Day1;   //14:00


  {�ֽ�}
  BIT1 =    1;
  KB1  =    BIT1* 1024;
  MB1  =    KB1 * 1024;
  GB1  =    MB1 * 1024;
  //TB1  =    GB1 * 1024;

  WM_BASE_MESSAGE    = WM_USER  + 100;
  CM_ChildFormActive = WM_BASE_MESSAGE + 1; //�Ӵ��崴������ʾʱ��������ϵͳ�����壬���Ӵ�����ʾPAGECONTROL�ϼ�һ����ǩ
  CM_ChildFormClose  = WM_BASE_MESSAGE + 2; //�Ӵ���ر�ʱ��������ϵͳ�����壬��PAGECONTROL�ϼ�һ����ǩ����
  WM_OPEN_ChildForm  = WM_BASE_MESSAGE + 3;   //  ��MDI�Ӵ��ڵ���Ϣ
  WM_Refresh_DataSet = WM_BASE_MESSAGE + 4;   //ˢ���Ӵ������ݼ�
  WM_CLOSE_NAVTREE   = WM_BASE_MESSAGE + 5;    //�ر������ڵĵ�����
  WM_POWER_RESTORE   = WM_Refresh_DataSet;    //���������߰ε�֪ͨ�Ӵ���ˢ�����ݼ�

  WParam_OPEN_Flowchart_Form =  WM_BASE_MESSAGE + 7; //ͨ�����̴�

 //IM MESSAGE
  WM_IM_UPDATE_STATE = WM_BASE_MESSAGE + 100;  //
  WM_IM_UPDATE_INFO  = WM_BASE_MESSAGE + 101;  //
  WM_IM_QUEUEMESSAGE = WM_BASE_MESSAGE + 102;  //
  WM_IM_DispatchMessage = WM_BASE_MESSAGE + 103;  //

  //�Ӵ��ڱ��
  WParam_fm_QU_AnyQuotation       = 1; //�����������ϱ�
  WParam_fm_WP_WorkItems          = 2; //������־�б�
  WParam_fm_QU_EngDrawings        = 3;//ͼֽ����
  WParam_fm_QU_ViewQuotationState = 4; //���۵�״̬�鿴
  WParam_fm_QU_AuditedAnyQuotation= 5; //����
  WParam_fm_CC_MainFlowchart      = 8; //��ҵ����
  WParam_fm_CC_CorporateCulturePic =7;
  WParam_fm_EBS_ClientInfo         =9;
  WParam_From_ModuleCode           =-10;  //����ModuleCode �򿪴���
  WParam_From_ModuleVID            =-11;  //����VID�򿪴���

  WParam_2CODE_DATA = WM_USER+100;
  WParam_2CODE_ERROR = WM_USER+101;


  SYS_Flowchart = 'frm_HTFlowchart';

resourcestring

  SQL_EXEC_ERROR              = 'ִ�нű�ʧ��: %s, '#13#10#13#10'ԭ��: %s';
  RS_NotfoundSubFlowchart     = '%s: ��û�н��������̡�';
  RS_LoadflowchartFailed      = '��������ͼʧ��: %s';
  RS_SaveflowchartFailed      = '��������ͼʧ��: %s';
  RS_NotfoundFlowchart        = '�����̲����ڡ�';
  RS_NewFlowchart             = '����-[%s]';
  RS_EditFlowchart            = '�޸�-[%s]';
  RS_NotselectedObject        = '��ѡ��һ������';
  RS_Sure_delete_record       = 'ȷ��Ҫɾ����ǰ��¼��';

  
  RS_FileSvrCreateDir          = '����TempĿ¼ʧ�ܣ�%s';
  RS_AttachmentTitle           = '��������';
  RS_NotfoundLocateFile        = 'û���ҵ��ļ���';
  RS_NoUploadFile              = 'û���ϴ��ļ���';
  RS_DownAttachmentFailed      = '�����ļ�ʧ��: %s'#13'%s';
  RS_UploadAttachmentError     = '�ϴ��ļ�����: %s';
  RS_ConfimDeleteAttachment    = 'ȷ��Ҫɾ���ļ���[%s]��?';
  RS_AttachmentNotrightDelete  = '�������ϴ��ĸ������㲻��ɾ����';
  RS_AttachmentNotAttUID       = '�˵���AccFileû�и���GUIDֵ���޷���������';
  RS_AttachmentNotAttField     = '�˵���û����Ƹ��������ֶ�[%s]��';
  RS_SubAttachmentNotAttField  = '�˵��ݱ�����û����Ƹ��������ֶ�[%s]��';

///////////////////////////////////////////////////////////////////////////////
//����Ϊ2013


const
  //��ģ������ݿ���
  HT_ERP_DBName = 'HT_ERP';       //�����������ݿ�
  HT_ERPX_DBName = 'HT_ERPX';     //���� �����ӹ� ���ݿ�
  HY_ERP_DBName = 'EDATA';        //�������ݿ�

  APP_STATUE_INDEX = 9;  //Application Status bar index

  appVersion = '�汾��V2.0.1';


  sysonce = '���� ��Ϣ������ϵͳ �Ѿ����У�';

  cnt_Registry_Key = '\SOFTWARE\HT_ERP2011\';

  REG_SYSSETING  = cnt_Registry_Key+'SysSeting\';

  SysINIFileName = 'SysParams.ini';
  SS_ERROR_CREATE_TEMPFILE = '��û�д�����ʱ�ļ���Ȩ��.';
  error_no_rights = WideString('��û�иò���Ȩ�ޣ�');
  error_dll_exists = WideString('��̬���ļ���ʧ!');
  error_dll_load = WideString('��̬�����ʧ��: ');

  error_input_password = WideString('����ȷ�������¼���롣');
  user_password_invalid = WideString('�����������');
  user_pass_safe = '����û�����ǰ�ȫ���룬���¼���޸ġ�';
  user_pass_safe1 = '�����޸ĵ�����ǰ�ȫ���룬��������д��';


  T_NUM: array[0..9] of string[2] = ('��', 'Ҽ', '��', '��', '��', '��', '½',
    '��', '��', '��');

  T_UNIT1: array[0..4] of string[2] = ('Բ', '��', '��', '��', '��');

  T_UNIT2: array[0..2] of string[2] = ('ʰ', '��', 'Ǫ');

  T_UNIT3: array[0..1] of string[2] = ('��', '��');



var
  appTitle: string = '��Ϣ������ϵͳ';
  systitle: string = '��Ϣ������ϵͳ';




implementation

end.
















