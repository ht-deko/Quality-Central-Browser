object dmMain: TdmMain
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object cdsMain: TClientDataSet
    PersistDataPacket.Data = {
      EE0500009619E0BD02000000180000003A000000000003000000EE0506415245
      41494402000100100000000A4154544143484D454E5401004900100001000557
      49445448020002003400084255494C445F4E4F01004900100001000557494454
      48020002001E0009444154415F54595045010049001000010005574944544802
      00020001000D444154455F5245504F5254454408000800100000000944454645
      43545F4E4F04000100100000000B4445534352495054494F4E04004B00100002
      0007535542545950450200490005005465787400055749445448020002000800
      08504C4154464F524D02000100100000000750524F4A45435402000100100000
      00155055424C4953485F56455253494F4E5F4649584544010049001000010005
      5749445448020002000A000B494E5445524E414C5F4E4F040001001000000006
      5245465F4E4F04000100100000000A5245534F4C5554494F4E02000100100000
      00115245534F4C5645445F494E5F4255494C4401004900100001000557494454
      48020002000F0008534556455249545901004900100001000557494454480200
      0200010006535441545553020001001000000005535445505304004B00100002
      0007535542545950450200490005005465787400055749445448020002000800
      0C564552494649434154494F4E02000100100000000756455253494F4E010049
      0010000100055749445448020002000A000A574F524B41524F554E4404004B00
      1000020007535542545950450200490005005465787400055749445448020002
      00080007555345525F494404000100100000000A46495253545F4E414D450100
      490010000100055749445448020002002000094C4153545F4E414D4501004900
      100001000557494454480200020020000B4455504C49434154454F4604000100
      1000000006524154494E470800040010000000094D595F524154494E47020001
      001000000005564F5445530400010010000000084D595F564F54455304000100
      10000000094D595F4E4F5449465902000100100000001153484F52545F444553
      4352495054494F4E010049001000010005574944544802000200FA0006524149
      44454401004900100002000753554254595045020049000A0046697865644368
      617200055749445448020002000100065055424C494304000100100000000C54
      4F54414C524154494E475304000100100000000D4D4F4449464945445F444154
      45080008001000000017554E50524F4345535345445F574F524B41524F554E44
      5304000100100000000F4E454544535F415454454E54494F4E02000300100000
      0007524149445F4E4F0400010012000000064C4F43414C450200010010000000
      0A717279526573496E666F0A000E0510000000054255494C4401004900100001
      00055749445448020002000F000A4348414E4745445F42590100490010000100
      05574944544802000200190007434F4D4D454E5404004B001000020007535542
      5459504502004900050054657874000557494454480200020008000C44415445
      5F4348414E4745440800080010000000094445464543545F4E4F040001001000
      0000065245435F4E4F02000100100000000A5245534F4C5554494F4E02000100
      100000000A46495253545F4E414D450100490010000100055749445448020002
      002000094C4153545F4E414D4501004900100001000557494454480200020020
      00085245535F54595045020001001000000000000A717279436F6D6D656E7408
      000E051000000007434F4D4D454E5404004B0010000200075355425459504502
      0049000500546578740005574944544802000200080009434F4D4D454E544544
      080008001000000009434F4D4D454E5449440400010010000000094445464543
      545F4E4F040001001000000008504152454E54494404000100100000000A4649
      5253545F4E414D450100490010000100055749445448020002008000094C4153
      545F4E414D450100490010000100055749445448020002008000075055424C49
      53480100490010000100055749445448020002000400000001000B5052494D41
      52595F4B4559040082000100000006000000}
    Active = True
    Aggregates = <>
    FilterOptions = [foNoPartialCompare]
    FieldDefs = <
      item
        Name = 'AREAID'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'ATTACHMENT'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 52
      end
      item
        Name = 'BUILD_NO'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DATA_TYPE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATE_REPORTED'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'DEFECT_NO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPTION'
        Attributes = [faUnNamed]
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'PLATFORM'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'PROJECT'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'PUBLISH_VERSION_FIXED'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INTERNAL_NO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'REF_NO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'RESOLUTION'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'RESOLVED_IN_BUILD'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SEVERITY'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STATUS'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'STEPS'
        Attributes = [faUnNamed]
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'VERIFICATION'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'VERSION'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WORKAROUND'
        Attributes = [faUnNamed]
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'USER_ID'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'LAST_NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'DUPLICATEOF'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'RATING'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'MY_RATING'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'VOTES'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'MY_VOTES'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'MY_NOTIFY'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'SHORT_DESCRIPTION'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 250
      end
      item
        Name = 'RAIDED'
        Attributes = [faUnNamed, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PUBLIC'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'TOTALRATINGS'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'MODIFIED_DATE'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'UNPROCESSED_WORKAROUNDS'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NEEDS_ATTENTION'
        Attributes = [faUnNamed]
        DataType = ftBoolean
      end
      item
        Name = 'RAID_NO'
        Attributes = [faReadonly, faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'LOCALE'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'qryResInfo'
        Attributes = [faUnNamed]
        DataType = ftDataSet
      end
      item
        Name = 'qryComment'
        Attributes = [faUnNamed]
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    OnCalcFields = cdsMainCalcFields
    Left = 32
    Top = 32
    object cdsMainAREAID: TSmallintField
      FieldName = 'AREAID'
      Origin = #38373#58498#34705#37349#57985#33209#35301#58497#34181#37348
    end
    object cdsMainATTACHMENT: TStringField
      FieldName = 'ATTACHMENT'
      Origin = #38373#58498#34705#37349#57985#33209#37349#58497#38021#41444#58499#36245#37349
      Size = 52
    end
    object cdsMainBUILD_NO: TStringField
      FieldName = 'BUILD_NO'
      Origin = #38373#58498#34705#37349#57985#33209#38373#58498#35249#48613#58500#36541
      Size = 30
    end
    object cdsMainDATA_TYPE: TStringField
      FieldName = 'DATA_TYPE'
      Origin = #38373#58498#34705#37349#57985#33209#34276#58500#38021#37349#58783#39297
      Size = 1
    end
    object cdsMainDATE_REPORTED: TDateTimeField
      FieldName = 'DATE_REPORTED'
      Origin = #38373#58498#34705#37349#57985#33209#34276#58500#38037#35301#58783#34177#35301#58511#38037
    end
    object cdsMainDEFECT_NO: TIntegerField
      FieldName = 'DEFECT_NO'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58500#34453#37349#58499#40889
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMainDESCRIPTION: TMemoField
      FieldName = 'DESCRIPTION'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58500#37773#42468#58770#37009#48612#20105
      BlobType = ftMemo
      Size = 8
    end
    object cdsMainPLATFORM: TSmallintField
      FieldName = 'PLATFORM'
      Origin = #38373#58498#34705#37349#57985#33209#45540#58768#33169#48612#58502#37557
    end
    object cdsMainPROJECT: TSmallintField
      FieldName = 'PROJECT'
      Origin = #38373#58498#34705#37349#57985#33209#35301#58512#36777#36324#21637
    end
    object cdsMainPUBLISH_VERSION_FIXED: TStringField
      FieldName = 'PUBLISH_VERSION_FIXED'
      Origin = #38373#58498#34705#37349#57985#33209#38373#58512#33457#36325#58761#35005#38372#58774#37517#48612#58761#36541#42468#58502#39061
      Size = 10
    end
    object cdsMainINTERNAL_NO: TIntegerField
      FieldName = 'INTERNAL_NO'
      Origin = #38373#58498#34705#37349#57985#33209#34276#58514#35217#47588#20383
    end
    object cdsMainREF_NO: TIntegerField
      FieldName = 'REF_NO'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58770#34493#48612
    end
    object cdsMainRESOLUTION: TSmallintField
      FieldName = 'RESOLUTION'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58514#37821#38373#58508#38053#47588
    end
    object cdsMainRESOLVED_IN_BUILD: TStringField
      FieldName = 'RESOLVED_IN_BUILD'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58514#37821#39397#58508#34193#42468#58783#36541#38373#58498#35249
      Size = 15
    end
    object cdsMainSEVERITY: TStringField
      FieldName = 'SEVERITY'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58515#38549#42468#58770#38053
      Size = 1
    end
    object cdsMainSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = #38373#58498#34705#37349#57985#33209#37349#58771#33169#36325
    end
    object cdsMainSTEPS: TMemoField
      FieldName = 'STEPS'
      Origin = #38373#58498#34705#37349#57985#33209#37349#58771#34177
      BlobType = ftMemo
      Size = 8
    end
    object cdsMainVERIFICATION: TSmallintField
      FieldName = 'VERIFICATION'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58518#37541#42468#58502#33669#42468#58516#36793
    end
    object cdsMainVERSION: TStringField
      FieldName = 'VERSION'
      Origin = #38373#58498#34705#37349#57985#33209#38372#58774#37517#48612#20105
      Size = 10
    end
    object cdsMainWORKAROUND: TMemoField
      FieldName = 'WORKAROUND'
      Origin = #38373#58498#34705#37349#57985#33209#48612#58519#37549#35301#58753#36757#37348
      BlobType = ftMemo
      Size = 8
    end
    object cdsMainUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = #38373#58498#34705#37349#57985#33209#36325#58773#34185#42468#17567
    end
    object cdsMainFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = #36325#58773#34185#47586#58515#34469#36325#58770#38077#34276#58510#36245
      Size = 32
    end
    object cdsMainLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = #36325#58773#34185#47586#58515#35973#37349#58515#40889#46564#17793
      Size = 32
    end
    object cdsMainDUPLICATEOF: TIntegerField
      FieldName = 'DUPLICATEOF'
      Origin = #38373#58498#34705#37349#57985#33209#38373#58500#37041#36324#58761#33169#48612#18053
    end
    object cdsMainRATING: TFloatField
      FieldName = 'RATING'
      DisplayFormat = '0.00'
    end
    object cdsMainMY_RATING: TSmallintField
      FieldName = 'MY_RATING'
    end
    object cdsMainVOTES: TIntegerField
      FieldName = 'VOTES'
    end
    object cdsMainMY_VOTES: TIntegerField
      FieldName = 'MY_VOTES'
    end
    object cdsMainMY_NOTIFY: TSmallintField
      FieldName = 'MY_NOTIFY'
    end
    object cdsMainSHORT_DESCRIPTION: TStringField
      FieldName = 'SHORT_DESCRIPTION'
      Origin = #38373#58498#34705#37349#57985#33209#41444#58771#36745#48613#58516#33941#36324#58515#37541#37349#58512#35261
      Size = 250
    end
    object cdsMainRAIDED: TStringField
      FieldName = 'RAIDED'
      Origin = #38373#58498#34705#37349#57985#33209#34276#58514#35217#37348
      FixedChar = True
      Size = 1
    end
    object cdsMainPUBLIC: TIntegerField
      FieldName = 'PUBLIC'
      Origin = #38373#58498#34705#37349#57985#33209#38373#58512#33457#36324
    end
    object cdsMainTOTALRATINGS: TIntegerField
      FieldName = 'TOTALRATINGS'
    end
    object cdsMainMODIFIED_DATE: TDateTimeField
      FieldName = 'MODIFIED_DATE'
      Origin = #38373#58498#34705#37349#57985#33209#48612#58509#33957#42468#58502#34193#37348#58783#33169
    end
    object cdsMainUNPROCESSED_WORKAROUNDS: TIntegerField
      FieldName = 'UNPROCESSED_WORKAROUNDS'
    end
    object cdsMainNEEDS_ATTENTION: TBooleanField
      FieldName = 'NEEDS_ATTENTION'
    end
    object cdsMainRAID_NO: TIntegerField
      FieldName = 'RAID_NO'
      ReadOnly = True
    end
    object cdsMainLOCALE: TSmallintField
      FieldName = 'LOCALE'
      Origin = #38373#58498#34705#37349#57985#33209#48612#58508#33669#38372
    end
    object cdsMainqryResInfo: TDataSetField
      FieldName = 'qryResInfo'
      UnNamed = True
    end
    object cdsMainqryComment: TDataSetField
      FieldName = 'qryComment'
      UnNamed = True
    end
    object cdsMainSTATUS_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STATUS_NAME'
      LookupDataSet = cdsStatus
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'STATUS'
      Size = 40
      Lookup = True
    end
    object cdsMainPROJECT_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PROJECT_NAME'
      LookupDataSet = cdsProject
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'PROJECT'
      Size = 40
      Lookup = True
    end
    object cdsMainRESOLUTION_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'RESOLUTION_NAME'
      LookupDataSet = cdsResolution
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'RESOLUTION'
      Size = 40
      Lookup = True
    end
    object cdsMainDATA_TYPE_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'DATA_TYPE_NAME'
      LookupDataSet = cdsReportType
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'DATA_TYPE'
      Size = 50
      Lookup = True
    end
    object cdsMainSEVERITY_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SEVERITY_NAME'
      LookupDataSet = cdsSeverity
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'SEVERITY'
      Size = 50
      Lookup = True
    end
    object cdsMainPLATFORM_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PLATFORM_NAME'
      LookupDataSet = cdsPlatform
      LookupKeyFields = 'CODE'
      LookupResultField = 'NAME'
      KeyFields = 'PLATFORM'
      Size = 50
      Lookup = True
    end
    object cdsMainFULL_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'FULL_NAME'
      Size = 80
      Calculated = True
    end
  end
  object dsNested: TDataSource
    AutoEdit = False
    DataSet = cdsNested
    Left = 112
    Top = 96
  end
  object cdsNested: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsMainqryComment
    FieldDefs = <
      item
        Name = 'COMMENT'
        Attributes = [faUnNamed]
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'COMMENTED'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'COMMENTID'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'DEFECT_NO'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'PARENTID'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 128
      end
      item
        Name = 'LAST_NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 128
      end
      item
        Name = 'PUBLISH'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    OnCalcFields = cdsNestedCalcFields
    Left = 32
    Top = 96
    object cdsNestedCOMMENT: TMemoField
      FieldName = 'COMMENT'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#48612#58499#36277#47588#57989#38025
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object cdsNestedCOMMENTED: TDateTimeField
      FieldName = 'COMMENTED'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#48612#58499#36277#47588#58501#38037#35298
    end
    object cdsNestedCOMMENTID: TIntegerField
      FieldName = 'COMMENTID'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#48612#58499#36277#47588#58501#38053#35298
    end
    object cdsNestedDEFECT_NO: TIntegerField
      FieldName = 'DEFECT_NO'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#38372#58500#34453#37349#58499#40889#35298
    end
    object cdsNestedPARENTID: TIntegerField
      FieldName = 'PARENTID'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#34276#58512#37525#37349#58510#35217
    end
    object cdsNestedFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#42468#58758#37517#48613#58516#36485#38372#8845
      Size = 128
    end
    object cdsNestedLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#34276#58764#37777#47588#58527#33205#35298
      Size = 128
    end
    object cdsNestedPUBLISH: TStringField
      FieldName = 'PUBLISH'
      Origin = #40164#58786#34193#36324#58527#36789#38372#58765#36497#35298#58003#44680#38373#58512#33457#36325#57993#34953
      Size = 4
    end
    object cdsNestedFULL_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMMENT_HEADER'
      Size = 80
      Calculated = True
    end
  end
  object dsMain: TDataSource
    DataSet = cdsMain
    Left = 112
    Top = 32
  end
  object dsResolution: TDataSource
    DataSet = cdsResolution
    Left = 312
    Top = 352
  end
  object cdsResolution: TClientDataSet
    PersistDataPacket.Data = {
      920100009619E0BD010000001800000002001200000003000000400004434F44
      450400010010000000044E414D45010049001000010005574944544802000200
      1400000000000A00000005466978656400001400000013446566657272656420
      746F204E657874204D5300001E0000001443616E6E6F7420526570726F647563
      65204275670000280000000B41732044657369676E6564000032000000094475
      706C696361746500003C0000000F546573742043617365204572726F72000046
      0000000E4E656564204D6F726520496E666F0000500000001444656665727265
      6420746F204E6578742052656C0000550000000652657465737400005A000000
      0A436865636B656420496E00006E0000000B5468697264205061727479000096
      0000000A43616E6E6F74204669780000A00000000F446566657220746F20496E
      6C696E650000AF00000006526561646D650000B40000000F4665617475726520
      52656D6F7665640000BE0000000A576562205570646174650000C80000000857
      6F6E277420446F0000D200000008496E616374697665}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 352
  end
  object dsPlatform: TDataSource
    DataSet = cdsPlatform
    Left = 312
    Top = 288
  end
  object cdsPlatform: TClientDataSet
    PersistDataPacket.Data = {
      950200009619E0BD010000001800000002001D00000003000000400004434F44
      450400010010000000044E414D45010049001000010005574944544802000200
      3200000000000A0000000C416C6C2076657273696F6E73000014000000010000
      001E0000001B4E6F74204F53206F7220706C6174666F726D2073706563696669
      6300003200000010536F6C61726973206F6E20535041524300003C0000001D57
      696E646F77732039352F39382F4E5420342E30206F6E20496E74656C00004600
      00000E4C696E7578206F6E20496E74656C0000A401000001000000AE0100000D
      416C6C20706C6174666F726D730000CC0100000C526564486174204C696E7578
      0000E001000012416C6C20556E697820706C6174666F726D730000EA01000013
      36342D6269742057696E646F777320323030300000F40100000C36342D626974
      204C696E757800009A020000114A6176612D626173656420636C69656E740000
      9B02000014576562202862726F777365722920636C69656E740000A80200000D
      4B796C697820432B2B204944450000B2020000104B796C69782050617363616C
      204944450000F802000001000000200300000C416C6C2076657273696F6E7300
      00250300000C416C6C2076657273696F6E730000840300000633322042697400
      008E030000063634204269740000DE03000011416C6C204D616320706C617466
      6F726D730000E303000011416C6C204D616320706C6174666F726D730000F203
      000015694F53202F204170706C65206D6F62696C65204F530000F70300001141
      70706C652773206D6F62696C65204F530000060400001A416E64726F6964202F
      20476F6F676C65206D6F62696C65204F5300000B040000096D6F62696C65204F
      5300001827000009416C6C204C696E757800001B2700000100}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 288
  end
  object dsSeverity: TDataSource
    DataSet = cdsSeverity
    Left = 312
    Top = 224
  end
  object cdsSeverity: TClientDataSet
    PersistDataPacket.Data = {
      E90000009619E0BD010000001800000002000500000003000000400004434F44
      450400010010000000044E414D45010049001000010005574944544802000200
      3200000000000000000017437269746963616C202F2053686F772053746F7070
      657200000100000020536572696F7573202F20486967686C792076697369626C
      652070726F626C656D0000020000001C436F6D6D6F6E6C7920656E636F756E74
      657265642070726F626C656D00000300000020496E6672657175656E746C7920
      656E636F756E74657265642070726F626C656D0000040000001345787472656D
      6520636F726E65722063617365}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 224
  end
  object dsReportType: TDataSource
    DataSet = cdsReportType
    Left = 312
    Top = 160
  end
  object cdsReportType: TClientDataSet
    PersistDataPacket.Data = {
      360100009619E0BD0100000018000000020008000000030000004C0004434F44
      450100490010000100055749445448020002000200044E414D45010049001000
      0100055749445448020002003200000000000141214372617368202F20446174
      61206C6F7373202F20546F74616C206661696C757265000001421B4261736963
      2066756E6374696F6E616C697479206661696C757265000001431E4D696E6F72
      206661696C757265202F2044657369676E2070726F626C656D0000014415446F
      63756D656E746174696F6E2070726F626C656D00000145205375676765737469
      6F6E202F20456E68616E63656D656E74205265717565737400000146134E6577
      2046656174757265205265717565737400000149054973737565000001531B46
      6561747572652053706563696669636174696F6E206973737565}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 160
  end
  object dsProject: TDataSource
    DataSet = cdsProject
    Left = 312
    Top = 96
  end
  object cdsProject: TClientDataSet
    PersistDataPacket.Data = {
      890100009619E0BD010000001800000002001300000003000000400004434F44
      450400010010000000044E414D45010049001000010005574944544802000200
      1400000000000A0000000644656C70686900000F0000000A432B2B4275696C64
      657200001E0000000B436F646543656E7472616C000032000000084A4275696C
      64657200005000000009496E746572426173650000C8000000054B796C697800
      00FA0000000A4F7074696D697A6569740000360100000A4A4461746153746F72
      6500004001000014432B2B4275696C646572582F42432B2B2032303000004A01
      00000943234275696C6465720000680100000D48544D4C35204275696C646572
      00007201000011456D62617263616465726F20507269736D0000900100000E51
      75616C69747943656E7472616C0000192700000C546573742070726F6A656374
      0000262700000345444E0000282700000A436F6E666572656E63650000462700
      000D4A4275696C646572203230303700005A270000073372645261696C000004
      2B00000944424172746973616E}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 96
  end
  object dsStatus: TDataSource
    DataSet = cdsStatus
    Left = 312
    Top = 32
  end
  object cdsStatus: TClientDataSet
    PersistDataPacket.Data = {
      AB0000009619E0BD010000001800000002000700000003000000400004434F44
      450400010010000000044E414D45010049001000010005574944544802000200
      1400000000000A000000044F70656E000014000000085265736F6C7665640000
      1E00000006436C6F736564000028000000085265706F72746564000032000000
      0957697468647261776E00003C000000104175746F6D61746564205265706F72
      740000460000000750656E64696E67}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODE'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 232
    Top = 32
  end
end
