object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'demo : How to call API API MOPH Immunization Center with Delphi'
  ClientHeight = 406
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 52
    Height = 13
    Caption = 'Document:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 248
    Width = 511
    Height = 150
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 444
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Call API'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 511
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 
      'https://docs.google.com/document/d/1Inyhfrte0pECsD8YoForTL2W8B2h' +
      'Oxezf0GpTGEjJr8'
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://cvp1.moph.go.th/api/ImmunizationHistory?cid=123456789123' +
      '4'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 24
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 
          'Token_nR5cCI6IkpXVCJ9.eyJzdWIiOiJBZG1pbl8xMTM1OEAxMTM1OCIsImlhdC' +
          'I6MTYyNjYwOTI5NCwiZXhwIjoxNjI2NjUyNDk0LCJpc3MiOiJNT1BIIEFjY291bn' +
          'QgQ2VudGVyIiwiYXVkIjoiTU9QSCBBUEkiLCJjbGllbnQiOnsidXNlcl9pZCI6Mz' +
          'E4MSwidXNlcl9oYXNoIjoiMjlGMEQzRTY0ODlFM0ZCMkFGNDlBQzZCMkUxOUUyMT' +
          'E3RTQ1OEVGNEVFRUQyMEJFNDRDMTNEMTgzREUxRTAwRDhDQzlGRUEzIiwibG9naW' +
          '4iOiJBZG1pbl8xMTM1OCIsIm5hbWUiOiLguJfguKPguIfguKfguLjguJLguLQg4L' +
          'io4Lij4Li14Liq4Lin4Lix4Liq4LiU4Li04LmMIiwiaG9zcGl0YWxfbmFtZSI6Iu' +
          'C5guC4o-C4h-C4nuC4ouC4suC4muC4suC4peC4lOC4reC4meC4quC4seC4gSIsIm' +
          'hvc3BpdGFsX2NvZGUiOiIxMTM1OCIsImVtYWlsIjoia29uZ19kc2hAaG90bWFpbC' +
          '5jb20iLCJjbGllbnRfaXAiOiIxNzEuNi4yNDguMjM3Iiwic2NvcGUiOlt7ImNvZG' +
          'UiOiJJTU1VTklaQVRJT05fQ09NUEFOWTozIn0seyJjb2RlIjoiSU1NVU5JWkFUSU' +
          '9OX1ZJRVc6MSJ9LHsiY29kZSI6IklNTVVOSVpBVElPTl9VUERBVEU6MSJ9LHsiY2' +
          '9kZSI6Ik1PUEhfQUNDT1VOVF9DRU5URVJfQURNSU46MSJ9LHsiY29kZSI6IklNTV' +
          'VOSVpBVElPTl9QRVJTT05fVVBMT0FEOjEifSx7ImNvZGUiOiJJTU1VTklaQVRJT0' +
          '5fREFTSEJPQVJEOjEifSx7ImNvZGUiOiJJTU1VTklaQVRJT05fU0xPVDoxIn0sey' +
          'Jjb2RlIjoiSU1NVU5JWkFUSU9OX1FVT1RBOjEifSx7ImNvZGUiOiJJTU1VTklaQV' +
          'RJT05fUkVQT1JUOjEifSx7ImNvZGUiOiJJTU1VTklaQVRJT05fUkVQT1JUX0VYQ0' +
          'VMOjEifSx7ImNvZGUiOiJJTU1VTklaQVRJT05fTEFCOjEifSx7ImNvZGUiOiJJTU' +
          '1VTklaQVRJT05fQUVGSV9VUERBVEU6MSJ9LHsiY29kZSI6IklNTVVOSVpBVElPTl' +
          '9TTE9UX01BTkFHRVI6MSJ9XSwicm9sZSI6WyJtb3BoLWFwaSJdLCJzY29wZV9saX' +
          'N0IjoiW0lNTVVOSVpBVElPTl9DT01QQU5ZOjNdW0lNTVVOSVpBVElPTl9WSUVXOj' +
          'FdW0lNTVVOSVpBVElPTl9VUERBVEU6MV1bTU9QSF9BQ0NPVU5UX0NFTlRFUl9BRE' +
          '1JTjoxXVtJTU1VTklaQVRJT05fUEVSU09OX1VQTE9BRDoxXVtJTU1VTklaQVRJT0' +
          '5fREFTSEJPQVJEOjFdW0lNTVVOSVpBVElPTl9TTE9UOjFdW0lNTVVOSVpBVElPTl' +
          '9RVU9UQToxXVtJTU1VTklaQVRJT05fUkVQT1JUOjFdW0lNTVVOSVpBVElPTl9SRV' +
          'BPUlRfRVhDRUw6MV1bSU1NVU5JWkFUSU9OX0xBQjoxXVtJTU1VTklaQVRJT05fQU' +
          'VGSV9VUERBVEU6MV1bSU1NVU5JWkFUSU9OX1NMT1RfTUFOQUdFUjoxXSIsImFjY2' +
          'Vzc19jb2RlX2xldmVsMSI6IicnIiwiYWNjZXNzX2NvZGVfbGV2ZWwyIjoiJyciLC' +
          'JhY2Nlc3NfY29kZV9sZXZlbDMiOiInODQwMDAwJyIsImFjY2Vzc19jb2RlX2xldm' +
          'VsNCI6IicnIiwiYWNjZXNzX2NvZGVfbGV2ZWw1IjoiJycifX0.eUtRjduUrpq461' +
          'rhFwfB_UrP08UObR2O10IdcjCbNo27XyeXg1rVz8f00oINuxSsvif_mgpk9r0dQt' +
          'L-MNryFcHFD382YwrcC9X3PStLqzfKji0wH5gp2SYSJmb3Lw'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 120
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 208
    Top = 48
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 208
    Top = 200
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 208
    Top = 96
  end
end
