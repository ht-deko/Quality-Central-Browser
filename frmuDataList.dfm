object frmDataList: TfrmDataList
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'QC List'
  ClientHeight = 640
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #12513#12452#12522#12458
  Font.Style = []
  Position = poScreenCenter
  Scaled = False
  TextHeight = 20
  object dbgList: TDBGrid
    Left = 0
    Top = 0
    Width = 990
    Height = 640
    Align = alClient
    DataSource = dmMain.dsMain
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #12513#12452#12522#12458
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DEFECT_NO'
        Title.Caption = 'Report #'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SHORT_DESCRIPTION'
        Title.Caption = 'Short Description'
        Width = 480
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FULL_NAME'
        Title.Caption = 'Submitter'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BUILD_NO'
        Title.Caption = 'Build No'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_REPORTED'
        Title.Caption = 'Reported'
        Visible = True
      end>
  end
end
