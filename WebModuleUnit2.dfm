object WebModule2: TWebModule2
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule2DefaultHandlerAction
    end>
  Height = 230
  Width = 415
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Server=.\SQLEXPRESS'
      'Database=CompanyDB'
      'OSAuthent=Yes'
      'Encrypt=No'
      'TrustServerCertificate=Yes'
      'ODBCAdvanced=Encrypt=no;TrustServerCertificate=yes')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 40
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Employees')
    Left = 312
    Top = 64
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 64
    Top = 40
  end
end
