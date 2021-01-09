program pMatheManager;

uses
  Forms,
  mMatheManager in 'mMatheManager.pas' {MatheManager},
  mMatheManagerAbout in 'mMatheManagerAbout.pas' {AboutBox},
  mVektorProdukt in 'mVektorProdukt.pas' {VektorProdukt},
  mPQFormel in 'mPQFormel.pas' {pqFormel},
  mBruchrechner in 'mBruchrechner.pas' {FrmBruchrechner},
  mGGT in 'mGGT.pas' {GGT},
  mRechtecksberechnung in 'mRechtecksberechnung.pas' {Vierecksberechnung},
  Bruchrechnerunit in 'Bruchrechnerunit.pas',
  Bruchunit in 'Bruchunit.pas',
  mMiniTaschenrechner in 'mMiniTaschenrechner.pas' {MiniTaschenrechner},
  mVersionshistory in 'mVersionshistory.pas' {Versionshistory},
  mMehrZahlenRechner in 'mMehrZahlenRechner.pas' {MehrZahlenRechner},
  mVektor in 'mVektor.pas' {AnalytischeGeometrie},
  mNaeherung in 'mNaeherung.pas' {Naeherung},
  mIntegral in 'mIntegral.pas' {Integralrechnung},
  mGeraden in 'mGeraden.pas' {Geraden},
  mDreiecksberechnung in 'mDreiecksberechnung.pas' {Dreiecksberechnung},
  mKreisberechnung in 'mKreisberechnung.pas' {Kreisberechnung},
  mOptionen in 'mOptionen.pas' {Optionen},
  mLinearEins in 'mLinearEins.pas' {LinearEins},
  mPolynom in 'mPolynom.pas' {Polynom};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Mathe Manager';
  Application.CreateForm(TMatheManager, MatheManager);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TVektorProdukt, VektorProdukt);
  Application.CreateForm(TpqFormel, pqFormel);
  Application.CreateForm(TFrmBruchrechner, FrmBruchrechner);
  Application.CreateForm(TGGT, GGT);
  Application.CreateForm(TVierecksberechnung, Vierecksberechnung);
  Application.CreateForm(TMiniTaschenrechner, MiniTaschenrechner);
  Application.CreateForm(TVersionshistory, Versionshistory);
  Application.CreateForm(TMehrZahlenRechner, MehrZahlenRechner);
  Application.CreateForm(TAnalytischeGeometrie, AnalytischeGeometrie);
  Application.CreateForm(TNaeherung, Naeherung);
  Application.CreateForm(TIntegralrechnung, Integralrechnung);
  Application.CreateForm(TGeraden, Geraden);
  Application.CreateForm(TDreiecksberechnung, Dreiecksberechnung);
  Application.CreateForm(TKreisberechnung, Kreisberechnung);
  Application.CreateForm(TOptionen, Optionen);
  Application.CreateForm(TLinearEins, LinearEins);
  Application.CreateForm(TPolynom, Polynom);
  Application.Run;
end.
