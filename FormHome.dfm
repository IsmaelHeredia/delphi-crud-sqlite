object Home: THome
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Home'
  ClientHeight = 243
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object status: TStatusBar
    Left = 0
    Top = 224
    Width = 472
    Height = 19
    Panels = <
      item
        Text = 'Programa cargado'
        Width = 50
      end>
  end
  object mmMenu: TMainMenu
    Left = 240
    Top = 72
    object O1: TMenuItem
      Caption = 'Opciones'
      object P1: TMenuItem
        Caption = 'Productos'
        OnClick = P1Click
      end
      object P2: TMenuItem
        Caption = 'Proveedores'
        OnClick = P2Click
      end
      object UserAdmin: TMenuItem
        Caption = 'Usuarios'
        OnClick = UserAdminClick
      end
    end
    object E1: TMenuItem
      Caption = 'Estadisticas'
      object P3: TMenuItem
        Caption = 'Productos'
        object L1: TMenuItem
          Caption = 'Listar'
          OnClick = L1Click
        end
        object G1: TMenuItem
          Caption = 'Grafico'
          OnClick = G1Click
        end
      end
      object P4: TMenuItem
        Caption = 'Proveedores'
        object G2: TMenuItem
          Caption = 'Grafico'
          OnClick = G2Click
        end
      end
    end
    object C1: TMenuItem
      Caption = 'Cuenta'
      object C2: TMenuItem
        Caption = 'Cambiar nombre de usuario'
        OnClick = C2Click
      end
      object C3: TMenuItem
        Caption = 'Cambiar contrase'#241'a'
        OnClick = C3Click
      end
    end
    object S1: TMenuItem
      Caption = 'Salir'
      OnClick = S1Click
    end
  end
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Port = 0
    Database = 
      'C:\Users\SinDecidir\Desktop\Mis Programas\Programas de la facultad\De' +
      'lphi\Aplicacion con SQLite\Win32\Release\sistema.s3db'
    Protocol = 'sqlite-3'
    Left = 232
    Top = 136
  end
  object ZQuery: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'select * from productos prod,proveedores prov where prod.id_prov' +
        'eedor=prov.id_proveedor')
    Params = <>
    Left = 304
    Top = 136
  end
  object RvDataSetConnection: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ZQuery
    Left = 144
    Top = 136
  end
  object RvProject: TRvProject
    ProjectFile = 
      'C:\Users\SinDecidir\Desktop\Mis Programas\Programas de la facultad\De' +
      'lphi\Aplicacion con SQLite\Reporte.rav'
    Left = 304
    Top = 72
  end
end
