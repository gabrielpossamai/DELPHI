unit MainUnit;
{$i sDefs.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, ExtDlgs, Menus, ImgList,
  StdCtrls, Buttons, ComCtrls, CheckLst, Mask, Grids, XPMan, 

  sButton, sSkinProvider, sSkinManager, sCheckBox, sBitBtn, sComboBox, sScrollBar, sEdit, sLabel, sGauge, sPanel,
  sCheckListBox, acAlphaImageList, sListBox, acTitleBar;

type
  TMainForm = class(TForm)
    sSkinManager1: TsSkinManager;
    sPanel4: TsPanel;
    ComboBox1: TsComboBox;
    MainMenu1: TMainMenu;
    MenuItem11: TMenuItem;
    MenuItem111: TMenuItem;
    MenuItem121: TMenuItem;
    MenuItem131: TMenuItem;
    MenuItem141: TMenuItem;
    MenuItem151: TMenuItem;
    MenuItem161: TMenuItem;
    MenuItem1511: TMenuItem;
    MenuItem1521: TMenuItem;
    MenuItem1531: TMenuItem;
    MenuItem1541: TMenuItem;
    MenuItem1551: TMenuItem;
    sSkinProvider1: TsSkinProvider;
    sCheckBox1: TCheckBox;
    About1: TMenuItem;
    Gotoonlinehome1: TMenuItem;
    Writetosupport1: TMenuItem;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton6: TsButton;
    sButton7: TsButton;
    sBitBtn5: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    sPanel18: TsPanel;
    AnimPanel: TsPanel;
    sPanel15: TsPanel;
    sLabel7: TsLabel;
    sBitBtn4: TsBitBtn;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sPanel16: TsPanel;
    sPanel17: TsPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    ListBox1: TListBox;
    MaskEdit1: TMaskEdit;
    RichEdit1: TRichEdit;
    TreeView1: TTreeView;
    CheckListBox1: TCheckListBox;
    ListView1: TListView;
    sPanel1: TsPanel;
    sGauge1: TsGauge;
    sEdit1: TsEdit;
    sComboBox1: TsComboBox;
    sButton1: TsButton;
    sButton2: TsButton;
    sScrollBar3: TsScrollBar;
    sPanel2: TsPanel;
    sLabelFX1: TsLabelFX;
    sCheckBox3: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sListBox1: TsListBox;
    sBitBtn1: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sCheckListBox1: TsCheckListBox;
    sCheckBox10: TsCheckBox;
    sPanel3: TsPanel;
    sPanel5: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sScrollBar1: TsScrollBar;
    sScrollBar2: TsScrollBar;
    sPanel6: TsPanel;
    sPanel7: TsPanel;
    sPanel9: TsPanel;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sPanel10: TsPanel;
    sPanel11: TsPanel;
    sCheckBox8: TsCheckBox;
    sEdit2: TsEdit;
    sPanel12: TsPanel;
    sPanel14: TsPanel;
    sCheckBox9: TsCheckBox;
    sEdit3: TsEdit;
    sPanel13: TsPanel;
    sPanel8: TsPanel;
    sButton3: TsButton;
    sButton8: TsButton;
    ImageList32: TsAlphaImageList;
    sGauge2: TsGauge;
    sTitleBar1: TsTitleBar;
    PopupMenu1: TPopupMenu;
    S2: TMenuItem;
    A1: TMenuItem;
    Skinned2: TMenuItem;
    Builtinskins1: TMenuItem;
    Externalskins1: TMenuItem;
    N3: TMenuItem;
    Exit2: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sSkinManager1BeforeChange(Sender: TObject);
    procedure sScrollBar3Change(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
    procedure sEdit2Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure SetActivePage(PageIndex : integer);
    procedure sEdit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sScrollBar1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sScrollBar2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sCheckBox10Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sTitleBar1Items5MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure sTitleBar1Items0Click(Sender: TObject);
    procedure sSkinManager1GetPopupItemData(Item: TMenuItem; State: TOwnerDrawState; ItemData: TacMenuItemData);
    procedure Skinned2Click(Sender: TObject);
    procedure Exit2Click(Sender: TObject);
    procedure SkinMenuClick(Sender: TObject);
    procedure sSkinManager1AfterChange(Sender: TObject);
    procedure sSkinManager1GetMenuExtraLineData(FirstItem: TMenuItem; var SkinSection, Caption: String; var Glyph: TBitmap; var LineVisible: Boolean);
  public
    procedure GenerateSkinsList;
  end;

var
  MainForm: TMainForm;
  Loading: boolean;
  NewBGName: string;

implementation

uses
  sSkinProps, {$WARNINGS OFF}FileCtrl,{$WARNINGS ON} sStyleSimply, sConst, sMaskData, sVclUtils, acntUtils;

var
  CurPanel: TsPanel = nil;

{$R *.DFM}

procedure TMainForm.ComboBox1Change(Sender: TObject);
var
  s: string;
begin
  if Loading then
    Exit;
    
  if ComboBox1.ItemIndex = 0 then begin
    if SelectDirectory('Select directory with skins :', '', s) then begin
      sSkinManager1.SkinDirectory := s;
      // Searching of available skins for aading to menu
      GenerateSkinsList;
    end;
  end
  else
    sSkinManager1.SkinName := ComboBox1.Text;
end;


procedure TMainForm.FormShow(Sender: TObject);
begin
  // Searching of available skins for aading to menu
  GenerateSkinsList;
end;


procedure TMainForm.sCheckBox1Click(Sender: TObject);
begin
  sSkinManager1.Active := sCheckBox1.Checked;
  ComboBox1.Enabled := sSkinManager1.Active;
  sComboBox2.Enabled := sSkinManager1.Active;
  sComboBox3.Enabled := sSkinManager1.Active;
end;


procedure TMainForm.sSkinManager1BeforeChange(Sender: TObject);
begin
  sSkinManager1.FHueOffset := 0;
  sSkinManager1.FSaturation := 0;
  sScrollBar1.Position := 0;
  sScrollBar2.Position := 0;
end;


procedure TMainForm.sScrollBar3Change(Sender: TObject);
begin
  sGauge1.Progress := sScrollBar3.Position;
  sGauge2.Progress := sScrollBar3.Position
end;


procedure TMainForm.sButton5Click(Sender: TObject);
begin
  SetActivePage(TControl(Sender).Tag)
end;


procedure TMainForm.sCheckBox4Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events + [beMouseEnter]
  else
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events - [beMouseEnter]
end;


procedure TMainForm.sCheckBox5Click(Sender: TObject);
begin
  if sCheckBox5.Checked then
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events + [beMouseLeave]
  else
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events - [beMouseLeave]
end;


procedure TMainForm.sCheckBox6Click(Sender: TObject);
begin
  if sCheckBox6.Checked then
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events + [beMouseDown]
  else
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events - [beMouseDown]
end;


procedure TMainForm.sCheckBox7Click(Sender: TObject);
begin
  if sCheckBox4.Checked then
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events + [beMouseUp]
  else
    sSkinManager1.AnimEffects.Buttons.Events := sSkinManager1.AnimEffects.Buttons.Events - [beMouseUp]
end;


procedure TMainForm.sCheckBox8Click(Sender: TObject);
begin
  sSKinManager1.AnimEffects.SkinChanging.Active := sCheckBox8.Checked
end;


procedure TMainForm.sEdit2Change(Sender: TObject);
begin
  sSKinManager1.AnimEffects.SkinChanging.Time := StrtoInt(sEdit2.Text)
end;


procedure TMainForm.sComboBox2Change(Sender: TObject);
begin
  sBitBtn4.SkinData.SkinSection := sComboBox2.Text
end;


procedure TMainForm.sComboBox3Change(Sender: TObject);
begin
  sPanel16.SkinData.SkinSection := sComboBox3.Text
end;


var
  iCurrentPage: integer = 1;

procedure TMainForm.SetActivePage(PageIndex: integer);
var
  OldPanel: TsPanel;

  procedure ChangeBtn(Btn: TsButton);
  begin
    Btn.Down := PageIndex = Btn.Tag;
  end;

begin
  if iCurrentPage = PageIndex then Exit;
  iCurrentPage := PageIndex;

  ChangeBtn(sButton4);
  ChangeBtn(sButton5);
  ChangeBtn(sButton6);
  ChangeBtn(sButton7);
  OldPanel := CurPanel;

  case PageIndex of
    0: CurPanel := sPanel3;
    1: CurPanel := sPanel1;
    2: CurPanel := sPanel15;
    3: CurPanel := sPanel17;
  end;

  if sCheckBox9.Checked and sSkinManager1.Active then begin
    PrepareForAnimation(AnimPanel);
    CurPanel.Perform(WM_SETREDRAW, 0, 0);
    CurPanel.Visible := True;
    CurPanel.BringToFront;
    CurPanel.Perform(WM_SETREDRAW, 1, 0);
    AnimShowControl(AnimPanel, StrToInt(sEdit3.Text));
    RedrawWindow(AnimPanel.Handle, nil, 0, RDW_ERASE or RDW_INTERNALPAINT or RDW_INVALIDATE or RDW_UPDATENOW or RDW_ALLCHILDREN);
  end
  else
    CurPanel.Visible := True;

  if OldPanel <> nil then
    OldPanel.Visible := False;
end;


procedure TMainForm.sEdit3Change(Sender: TObject);
begin
  try
    StrtoInt(sEdit3.Text)
  except
    sEdit3.Text := '150'
  end;
end;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  sTitleBar1.Items[10].Caption := 'v' + sSkinManager1.Version;
  CurPanel := sPanel1;
end;


procedure TMainForm.sBitBtn5Click(Sender: TObject);
begin
  Close
end;


procedure TMainForm.sScrollBar1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sLabel3.Caption := IntToStr(sScrollBar1.Position);
  sSkinManager1.Saturation := sScrollBar1.Position;
end;


procedure TMainForm.sScrollBar2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  sLabel4.Caption := IntToStr(sScrollBar2.Position);
  sSkinManager1.HueOffset := sScrollBar2.Position;
end;


procedure TMainForm.sCheckBox10Click(Sender: TObject);
begin
  sBitBtn1.Reflected := sCheckBox10.Checked;
  sBitBtn3.Reflected := sCheckBox10.Checked;
end;


procedure TMainForm.sButton3Click(Sender: TObject);
begin
  sButton3.Down := not sButton3.Down;
  sSkinManager1.ExtendedBorders := sButton3.Down
end;


procedure TMainForm.sButton8Click(Sender: TObject);
begin
  sButton8.Down := not sButton8.Down;
  sSkinProvider1.DrawNonClientArea := sButton8.Down
end;


procedure TMainForm.sTitleBar1Items5MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // Disable animation of skin changing
  sSkinManager1.AnimEffects.SkinChanging.Active := False;
  // Return a normal state for this button
  sTitleBar1.Items[5].State := 0;
  sSkinManager1.HueOffset := sSkinManager1.HueOffset + 40;
  // Enable animation of skin changing
  sSkinManager1.AnimEffects.SkinChanging.Active := True;
end;


procedure TMainForm.sTitleBar1Items0Click(Sender: TObject);
begin
  sTitleBar1.Items[0].Visible := False;      // Btn
  sTitleBar1.Items[1].Visible := False;      // Spacing
  sSkinProvider1.TitleIcon.Visible := False; // Title icon
end;


procedure TMainForm.sSkinManager1GetPopupItemData(Item: TMenuItem; State: TOwnerDrawState; ItemData: TacMenuItemData);
begin
  // Example of custom font in menu items
  if (Item = Builtinskins1) then begin
    ItemData.Font.Style := [fsBold];
    ItemData.Font.Size := ItemData.Font.Size + 2;
  end;
end;


procedure TMainForm.Skinned2Click(Sender: TObject);
begin
  sCheckBox1.Checked := not sCheckBox1.Checked;
end;


procedure TMainForm.Exit2Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.GenerateSkinsList;
var
  sl: TacStringList;
  i: integer;
  mi: TMenuItem;
begin
  // Fill ComboBox with skins
  sl := TacStringList.Create;
  sSkinManager1.GetSkinNames(sl);
  ComboBox1.Clear;
  ComboBox1.Items.Add('Skins directory...');
  for i := 0 to sl.Count - 1 do
    ComboBox1.Items.Add(sl[i]);
  // If no available skins...
  if ComboBox1.Items.Count < 1 then begin
    ComboBox1.Items.Add('No skins available');
    ComboBox1.ItemIndex := 0;
  end
  else begin
    // Sets ComboBox to current skin name value without skin changing
    Loading := True;
    ComboBox1.ItemIndex := sl.IndexOf(sSkinManager1.SkinName) + 1;
    Loading := False;
  end;
  FreeAndNil(sl);
  // Menu update
  Builtinskins1.Clear;
  // Build-in skins list
  for i := 0 to sSkinManager1.InternalSkins.Count - 1 do begin
    mi := TMenuItem.Create(Application);
    mi.Caption := sSkinManager1.InternalSkins[i].Name;
    if mi.Caption = sSkinManager1.SkinName then
      mi.Checked := True;
      
    mi.OnClick := SkinMenuClick;
    mi.RadioItem := True;
    Builtinskins1.Add(mi);
  end;
  // External skins list
  Externalskins1.Clear;
  sl := TacStringList.Create;
  sSkinManager1.GetExternalSkinNames(sl);
  if sl.Count > 0 then begin
    sl.Sort;
    for i := 0 to sl.Count - 1 do begin
      mi := TMenuItem.Create(Application);
      mi.Caption := sl[i];
      if mi.Caption = sSkinManager1.SkinName then
        mi.Checked := True;

      mi.OnClick := SkinMenuClick;
      mi.RadioItem := True;
      if (i <> 0) and (i mod 20 = 0) then
        mi.Break := mbBreak;
        
      Externalskins1.Add(mi);
    end;
    Externalskins1.Enabled := True;
  end
  else
    Externalskins1.Enabled := False;
    
  FreeAndNil(sl);
end;


procedure TMainForm.SkinMenuClick(Sender: TObject);
begin
  sSkinManager1.SkinName := DelChars(TMenuItem(Sender).Caption, '&');
end;


procedure TMainForm.sSkinManager1AfterChange(Sender: TObject);
var
  i: integer;
  b: boolean;
begin
  i := sSkinManager1.GetSkinIndex(s_Form);
  if sSkinManager1.IsValidSkinIndex(i) then begin
    i := ComboBox1.Items.IndexOf(sSkinManager1.SkinName);
    if i <> ComboBox1.ItemIndex then begin
      Loading := True;
      ComboBox1.Items.BeginUpdate;
      ComboBox1.ItemIndex := i;
      ComboBox1.Items.EndUpdate;
      Loading := False;
    end;
    b := True;
    for i := 0 to Builtinskins1.Count - 1 do // Search of item with current skin name
      if b and (DelChars(Builtinskins1.Items[i].Caption, '&') = sSkinManager1.SkinName) then begin
        Builtinskins1.Items[i].Checked := True;
        b := False;
      end
      else
        Builtinskins1.Items[i].Checked := False;

    for i := 0 to Externalskins1.Count - 1 do // Search of item with current skin name
      if b and (DelChars(Externalskins1.Items[i].Caption, '&') = sSkinManager1.SkinName) then begin
        Externalskins1.Items[i].Checked := True;
        b := False;
      end
      else
        Externalskins1.Items[i].Checked := False;
  end;
end;


procedure TMainForm.sSkinManager1GetMenuExtraLineData(FirstItem: TMenuItem; var SkinSection, Caption: String; var Glyph: TBitmap; var LineVisible: Boolean);

  procedure PrepareGlyph;
  begin
    Glyph := TBitmap.Create;
    // Prepare transparent background
    Glyph.Canvas.Brush.Color := clFuchsia;
    Glyph.Canvas.FillRect(Rect(0, 0, Glyph.Width, Glyph.Height));
    Glyph.Transparent := True;
    // Receiving from imagelist
    sAlphaImageList1.DrawingStyle := dsTransparent;
    sAlphaImageList1.GetBitmap(5, Glyph);
  end;

begin
  // If item is a first subitem of 'Available skins' (in system menu)
  if (sSkinProvider1.SystemMenu.Items[0].Name = s_SkinSelectItemName) and
       (sSkinProvider1.SystemMenu.Items[0].Count > 8) and // Height of popup-menu must be higher then extra-line width...
         (FirstItem = sSkinProvider1.SystemMenu.Items[0].Items[0]) then begin
    LineVisible := True; // External line available
    Caption := sSkinProvider1.SystemMenu.Items[0].Caption;
    PrepareGlyph;
  end
  else
    if (Externalskins1.Count > 8) and (FirstItem = Externalskins1.Items[0]) then begin
      LineVisible := True;
      Caption := Externalskins1.Caption;
    end
    else
      if (FirstItem = PopupMenu1.Items[0]) then begin
        LineVisible := True;
        Caption := 'Skinned menu';
        PrepareGlyph;
      end
      else
        LineVisible := False;
end;

end.
