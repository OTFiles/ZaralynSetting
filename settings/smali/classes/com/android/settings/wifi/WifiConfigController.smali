.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDialogContainer:Landroid/widget/ScrollView;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHiddenWarningView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FullAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShareThisWifiCheckBox:Landroid/widget/CheckBox;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private selectedSimCardNumber:I


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 18
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p4, "mode"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 211
    move/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 178
    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 179
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 180
    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 189
    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 212
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 214
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 215
    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 216
    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 217
    move v6, v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v6

    :goto_0
    iput v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 218
    iput v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    .line 220
    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 221
    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 223
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 225
    const v7, 0x7f0300a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 226
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    const v8, 0x1090008

    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1120056

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f03009b

    .line 234
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v8, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 228
    :cond_2
    :goto_1
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f03009a

    .line 230
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v8, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 236
    :goto_2
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-virtual {v7, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 238
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v11, 0x7f03009c

    .line 240
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v8, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    .line 241
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 243
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v8, 0x7f121188

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 244
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v8, 0x7f1210f9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    .line 245
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v8, 0x7f12118a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    .line 246
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v8, 0x7f1210b4

    .line 247
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 248
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v8, 0x7f1210b5

    .line 249
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 251
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a013c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    .line 252
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a0205

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 253
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 254
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a033c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 255
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a03c9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 257
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a026e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 258
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a01c9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 259
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a01cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 261
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 262
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    const/16 v9, 0x8

    if-nez v8, :cond_3

    .line 263
    nop

    .line 261
    move v8, v9

    goto :goto_3

    .line 264
    :cond_3
    nop

    .line 261
    move v8, v5

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a03c8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    .line 266
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 268
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const v8, 0x7f12111a

    const v10, 0x7f0a04ee

    const v12, 0x7f0a04ef

    const/4 v13, 0x1

    if-nez v7, :cond_5

    .line 269
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v14, 0x7f121052

    invoke-interface {v7, v14}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 271
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a03f1

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 272
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a03a8

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 274
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a04ad

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 279
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0a01ca

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 283
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    const-string v12, "_wfad_"

    invoke-virtual {v10, v12, v13}, Lcom/android/settings/SettingsApp;->isCheckedReadboyForAdvancedEnable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move v5, v9

    :goto_4
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 288
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 289
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 291
    :cond_5
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 292
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_6

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 295
    invoke-virtual {v14}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 296
    invoke-virtual {v14}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v14

    if-eq v14, v15, :cond_7

    .line 297
    :cond_6
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 301
    :cond_7
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v14

    if-nez v14, :cond_8

    .line 302
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v14, v9}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 304
    :cond_8
    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :goto_5
    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a01fb

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 309
    .local v9, "group":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 310
    .local v14, "showAdvancedFields":Z
    iget v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const v8, 0x7f121124

    const v10, 0x7f121168

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalStringUnlink()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 312
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v8, v11}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 315
    :cond_9
    iget v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eq v11, v12, :cond_11

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 316
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 317
    .local v11, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v10, v11, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 318
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v10, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_a

    .line 319
    nop

    .line 318
    move v10, v13

    goto :goto_6

    .line 320
    :cond_a
    nop

    .line 318
    move v10, v5

    :goto_6
    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v8

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const v12, 0x7f1210e2

    if-ne v8, v10, :cond_c

    .line 322
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    const/4 v14, 0x1

    .line 325
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    .line 326
    .local v8, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v8, :cond_b

    iget-object v10, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v10, :cond_b

    .line 327
    iget-object v10, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 328
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-direct {v0, v9, v12, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 330
    .end local v8
    :cond_b
    goto/16 :goto_7

    .line 331
    :cond_c
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 335
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 336
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v8, v8, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-direct {v0, v8}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v9, v12, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 337
    const v8, 0x7f121055

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v10, v10, Landroid/net/DhcpInfo;->netmask:I

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 338
    const v8, 0x7f1210c9

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v10, v10, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 339
    const v8, 0x7f1210b0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v10, v10, Landroid/net/DhcpInfo;->dns1:I

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 340
    const v8, 0x7f1210b2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v10, v10, Landroid/net/DhcpInfo;->dns2:I

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 341
    const v8, 0x7f12010d

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v10, v10, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiConfigController;->intToIp(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 342
    if-eqz v7, :cond_d

    .line 343
    const v8, 0x7f121054

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 347
    :cond_d
    :goto_7
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    iget-boolean v10, v11, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 348
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v10, v11, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 349
    iget-boolean v8, v11, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v8, :cond_e

    .line 350
    const/4 v14, 0x1

    .line 352
    :cond_e
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v10, :cond_f

    .line 353
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 354
    const/4 v8, 0x1

    .line 361
    .end local v14
    .local v8, "showAdvancedFields":Z
    :goto_8
    move v14, v8

    goto :goto_9

    .line 355
    .end local v8
    .restart local v14
    :cond_f
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v10, :cond_10

    .line 356
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 357
    const/4 v8, 0x1

    goto :goto_8

    .line 359
    :cond_10
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 361
    :goto_9
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 362
    const v8, 0x7f1209d8

    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f1209d7

    .line 363
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Object;

    iget-object v15, v11, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v15, v12, v5

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-direct {v0, v9, v8, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 369
    .end local v11
    :cond_11
    const/4 v8, 0x4

    if-eq v2, v8, :cond_17

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 370
    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_12
    iget v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz v8, :cond_17

    .line 372
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 375
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 376
    const v10, 0x7f0a04ef

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 377
    .local v8, "advancedTogglebox":Landroid/widget/CheckBox;
    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0a04ee

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 378
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 377
    const/16 v11, 0x8

    goto :goto_a

    .line 378
    :cond_14
    nop

    .line 377
    move v11, v5

    :goto_a
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 380
    invoke-virtual {v8, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 383
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    const-string v11, "_wfad_"

    invoke-virtual {v10, v11, v13}, Lcom/android/settings/SettingsApp;->isCheckedReadboyForAdvancedEnable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_15

    move v10, v5

    goto :goto_b

    :cond_15
    const/16 v10, 0x8

    :goto_b
    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 385
    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0a04ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 386
    if-eqz v14, :cond_16

    move v11, v5

    goto :goto_c

    :cond_16
    const/16 v11, 0x8

    :goto_c
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 388
    const v10, 0x7f12107d

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f12107e

    .line 389
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 390
    invoke-virtual {v15}, Lcom/android/settingslib/wifi/AccessPoint;->getCarrierName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v5

    .line 389
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 388
    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 394
    .end local v8
    :cond_17
    iget v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_18

    .line 395
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v8, 0x7f12111a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 396
    :cond_18
    iget v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-ne v8, v13, :cond_19

    .line 397
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v8, 0x7f121086

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 398
    :cond_19
    iget v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v10, 0x4

    if-eq v8, v10, :cond_24

    .line 399
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    .line 400
    .local v8, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "signalLevel":Ljava/lang/String;
    if-eqz v8, :cond_1a

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v11, :cond_1b

    :cond_1a
    if-eqz v10, :cond_1b

    .line 403
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v11, 0x7f121086

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 405
    :cond_1b
    if-eqz v8, :cond_1d

    .line 406
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v11

    .line 407
    .local v11, "isEphemeral":Z
    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 408
    .local v12, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v15, 0x0

    .line 409
    .local v15, "providerFriendlyName":Ljava/lang/String;
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 410
    iget-object v15, v12, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 412
    :cond_1c
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 413
    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 412
    invoke-static {v5, v8, v11, v15}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "summary":Ljava/lang/String;
    const v13, 0x7f121174

    invoke-direct {v0, v9, v13, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 417
    .end local v5
    .end local v11
    .end local v12
    .end local v15
    :cond_1d
    if-eqz v10, :cond_1e

    .line 418
    const v5, 0x7f121168

    invoke-direct {v0, v9, v5, v10}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 422
    :cond_1e
    if-eqz v7, :cond_1f

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_1f

    .line 423
    const v5, 0x7f121169

    const v11, 0x7f12079c

    .line 424
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    .line 423
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v5, v11}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 427
    :cond_1f
    if-eqz v7, :cond_22

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_22

    .line 428
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    .line 429
    .local v5, "frequency":I
    const/4 v11, 0x0

    .line 431
    .local v11, "band":Ljava/lang/String;
    const/16 v12, 0x960

    if-lt v5, v12, :cond_20

    const/16 v12, 0x9c4

    if-ge v5, v12, :cond_20

    .line 433
    const v12, 0x7f12106a

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    .line 434
    :cond_20
    const/16 v12, 0x1324

    if-lt v5, v12, :cond_21

    const/16 v12, 0x170c

    if-ge v5, v12, :cond_21

    .line 436
    const v12, 0x7f12106b

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    .line 438
    :cond_21
    const-string v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected frequency "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_d
    if-eqz v11, :cond_22

    .line 441
    const v12, 0x7f1210c8

    invoke-direct {v0, v9, v12, v11}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 445
    .end local v5
    .end local v11
    :cond_22
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    const v11, 0x7f121124

    invoke-direct {v0, v9, v11, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 446
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0a0204

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_e
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 449
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 450
    :cond_23
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v11, 0x7f1210c5

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 455
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v14
    :cond_24
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isSplitSystemUser()Z

    move-result v5

    if-nez v5, :cond_25

    .line 456
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 459
    :cond_25
    const v5, 0x7f12107a

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "txtCancel":Ljava/lang/String;
    if-eqz v1, :cond_26

    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_26

    iget v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-nez v7, :cond_26

    .line 461
    const v7, 0x7f121086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 464
    :cond_26
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 470
    :cond_27
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0a021f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 471
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0237

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 483
    const v1, 0x7f0a04d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 485
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 901
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSIMInfo()V
    .locals 7

    .line 1608
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1609
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1610
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1611
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1612
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1613
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "displayname":Ljava/lang/String;
    goto :goto_1

    .line 1615
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x7f120d17

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1617
    .restart local v3
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1619
    .end local v1
    .end local v3
    :cond_1
    return-void
.end method

.method private getSignalStringUnlink()Ljava/lang/String;
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 499
    .local v0, "level":I
    const/4 v1, 0x0

    .line 500
    .local v1, "resultSignal":Ljava/lang/String;
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 503
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_1

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "dBm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_1
    return-object v1
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 3
    .param p1, "paramInt"    # I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x8

    const/16 v2, 0xff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x10

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x18

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 9

    .line 849
    nop

    .line 850
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 851
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 852
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 853
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 856
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 858
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 859
    return v3

    .line 863
    .end local v0
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 864
    .local v0, "selectedPosition":I
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 865
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 866
    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 867
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 868
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "host":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "portStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "exclusionList":Ljava/lang/String;
    const/4 v6, 0x0

    .line 872
    .local v6, "port":I
    move v7, v3

    .line 874
    .local v7, "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 875
    invoke-static {v2, v4, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 878
    goto :goto_1

    .line 876
    :catch_0
    move-exception v8

    .line 877
    .local v8, "e":Ljava/lang/NumberFormatException;
    const v7, 0x7f120a82

    .line 879
    .end local v8
    :goto_1
    if-nez v7, :cond_2

    .line 880
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct {v3, v2, v6, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 884
    .end local v2
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto :goto_2

    .line 882
    .restart local v2
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    :cond_2
    return v3

    .line 884
    .end local v2
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 885
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 886
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 887
    .local v2, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 888
    return v3

    .line 890
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 891
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_5

    .line 892
    return v3

    .line 894
    :cond_5
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct {v3, v4}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 896
    .end local v2
    .end local v4
    :cond_6
    :goto_2
    return v1
.end method

.method public static synthetic lambda$afterTextChanged$0(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .line 1483
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1484
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1485
    return-void
.end method

.method public static synthetic lambda$onItemSelected$1(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 2

    .line 1575
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 1576
    return-void
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "noCertificateString"    # Ljava/lang/String;
    .param p4, "showMultipleCerts"    # Z
    .param p5, "showUsePreinstalledCertOption"    # Z

    .line 1438
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1440
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v1, "certs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    if-eqz p4, :cond_0

    .line 1443
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_0
    if-eqz p5, :cond_1

    .line 1446
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_1
    nop

    .line 1450
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, p2, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1449
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1453
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v2

    .line 1452
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WifiConfigController"

    const-string v4, "can\'t get the certificate list from KeyStore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v2
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    .line 1458
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1459
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1460
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1461
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    return-void
.end method

.method private setEapMethodInvisible()V
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1280
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a02f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03d1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1285
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .line 1464
    if-eqz p2, :cond_1

    .line 1466
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1467
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1468
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1469
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1470
    goto :goto_1

    .line 1467
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1474
    .end local v0
    .end local v1
    :cond_1
    :goto_1
    return-void
.end method

.method private setSimCardInvisible()V
    .locals 2

    .line 1274
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method private setVisibility(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .line 1421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1422
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9
    .param p1, "eapMethod"    # I

    .line 1160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0219

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0218

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a02f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a03d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1171
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f0a0217

    const v4, 0x7f0a021c

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1213
    :pswitch_0    # 0x5 0x6 0x4
    const/4 v3, 0x0

    .line 1214
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v4, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1217
    :cond_0
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 1219
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1221
    .local v4, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1223
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1224
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a021d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    if-eqz v3, :cond_2

    .line 1226
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1227
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1228
    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1229
    .local v1, "mSimNum":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1230
    .end local v1
    goto :goto_0

    .line 1231
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1234
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1235
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1237
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1239
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1240
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    .line 1241
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setEapMethodInvisible()V

    .end local v3
    .end local v4
    goto/16 :goto_1

    .line 1173
    :pswitch_1    # 0x3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1174
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1175
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1177
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1178
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    .line 1179
    goto :goto_1

    .line 1201
    :pswitch_2    # 0x2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    if-eq v5, v6, :cond_3

    .line 1202
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1203
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1205
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1208
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    .line 1209
    goto :goto_1

    .line 1181
    :pswitch_3    # 0x1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1183
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1185
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    .line 1186
    goto :goto_1

    .line 1189
    :pswitch_4    # 0x0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq v5, v6, :cond_4

    .line 1190
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1191
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1193
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    .line 1196
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1197
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    .line 1198
    nop

    .line 1247
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1248
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1249
    .local v1, "eapCertSelection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 1250
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1253
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1256
    .end local v1
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4    # 0x0
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 5

    .line 1318
    const/4 v0, 0x0

    .line 1320
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0204

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1326
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    const v4, 0x7f0a03f9

    if-ne v1, v3, :cond_6

    .line 1327
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1329
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0207

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1330
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1331
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1332
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1333
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0298

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1335
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1336
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1337
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1338
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1339
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1341
    :cond_1
    if-eqz v0, :cond_7

    .line 1342
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 1343
    .local v1, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_5

    .line 1344
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_2

    .line 1345
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1346
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1345
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1348
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    .line 1347
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    :cond_2
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_3

    .line 1352
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    :cond_3
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1356
    .local v2, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1357
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1360
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    .end local v1
    .end local v2
    :cond_5
    goto :goto_0

    .line 1365
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    :cond_7
    :goto_0
    return-void
.end method

.method private showPeapFields()V
    .locals 4

    .line 1259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1260
    .local v0, "phase2Method":I
    const v1, 0x7f0a021a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0217

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a02f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a03d1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1262
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1271
    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 8

    .line 1370
    const/4 v0, 0x0

    .line 1372
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a033d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    const v4, 0x7f0a033a

    const v5, 0x7f0a0337

    const v6, 0x7f0a033f

    const/16 v7, 0x8

    if-ne v1, v3, :cond_3

    .line 1379
    invoke-direct {p0, v6, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1380
    invoke-direct {p0, v5, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1381
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1382
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0338

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1384
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1385
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a033b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1386
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1387
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0336

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1388
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1390
    :cond_1
    if-eqz v0, :cond_7

    .line 1391
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1392
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1393
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    .end local v1
    :cond_2
    goto :goto_0

    .line 1398
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 1399
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1400
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1401
    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1403
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_4

    .line 1404
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0339

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1405
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1407
    :cond_4
    if-eqz v0, :cond_7

    .line 1408
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1409
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_5

    .line 1410
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    .end local v1
    :cond_5
    goto :goto_0

    .line 1414
    :cond_6
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1415
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1416
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1418
    :cond_7
    :goto_0
    return-void
.end method

.method private showSecurityFields()V
    .locals 12

    .line 981
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v1, 0x8

    const v2, 0x7f0a03a9

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_f

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    goto/16 :goto_4

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a02ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 992
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 995
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f121186

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 1002
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const v2, 0x7f0a0157

    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    return-void

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_e

    .line 1009
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getSIMInfo()V

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "eapMethods":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1018
    .local v1, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1020
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1022
    .end local v0
    .end local v1
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0a02f7

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1025
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1026
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a04c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1034
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getCarrierApEapType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1038
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1044
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1053
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1054
    .local v9, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    .line 1055
    .local v10, "eapMethod":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v11

    .line 1056
    .local v11, "phase2Method":I
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1057
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1058
    const/4 v0, 0x1

    if-eqz v10, :cond_7

    packed-switch v10, :pswitch_data_0

    .line 1096
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1087
    :pswitch_0    # 0x5 0x6 0x4
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1088
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1089
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1090
    .local v1, "mSimNum":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1091
    .end local v1
    goto :goto_0

    .line 1092
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1094
    goto :goto_0

    .line 1060
    :cond_7
    if-eqz v11, :cond_8

    packed-switch v11, :pswitch_data_1

    .line 1080
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phase 2 method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    goto :goto_0

    .line 1077
    :pswitch_1    # 0x7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1078
    goto :goto_0

    .line 1074
    :pswitch_2    # 0x6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1075
    goto :goto_0

    .line 1071
    :pswitch_3    # 0x5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1072
    goto :goto_0

    .line 1068
    :pswitch_4    # 0x4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1069
    goto :goto_0

    .line 1065
    :pswitch_5    # 0x3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1066
    goto :goto_0

    .line 1062
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1063
    nop

    .line 1099
    :goto_0
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1102
    :cond_9
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v6

    .line 1103
    .local v6, "caCerts":[Ljava/lang/String;
    if-nez v6, :cond_a

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1105
    :cond_a
    array-length v1, v6

    if-ne v1, v0, :cond_b

    .line 1106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v1, v6, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1109
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1118
    .end local v6
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "userCert":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_2

    .line 1123
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1125
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    .end local v0
    .end local v9
    .end local v10
    .end local v11
    goto :goto_3

    .line 1128
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_3

    .line 1132
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1134
    :goto_3
    return-void

    .line 984
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5    # 0x3
        :pswitch_4    # 0x4
        :pswitch_3    # 0x5
        :pswitch_2    # 0x6
        :pswitch_1    # 0x7
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 11
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "ipAddr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1210e7

    if-eqz v2, :cond_1

    return v3

    .line 913
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 914
    .local v2, "inetAddr":Ljava/net/Inet4Address;
    if-eqz v2, :cond_c

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v2, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    .line 918
    :cond_2
    const/4 v4, -0x1

    .line 920
    .local v4, "networkPrefixLength":I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 921
    if-ltz v4, :cond_4

    const/16 v5, 0x20

    if-le v4, v5, :cond_3

    goto :goto_0

    .line 924
    :cond_3
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 922
    :cond_4
    :goto_0
    const v1, 0x7f1210e8

    return v1

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v3

    .line 925
    .end local v1
    :catch_1
    move-exception v3

    .line 927
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1210fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    .end local v3
    :goto_1
    nop

    .line 933
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, "gateway":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 937
    :try_start_1
    invoke-static {v2, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    .line 938
    .local v5, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 939
    .local v6, "addr":[B
    array-length v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-byte v8, v6, v7

    .line 940
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5
    .end local v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 942
    :catch_2
    move-exception v5

    goto :goto_2

    .line 941
    :catch_3
    move-exception v5

    .line 943
    :goto_2
    goto :goto_3

    .line 945
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 946
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    const v6, 0x7f1210e6

    if-nez v5, :cond_6

    .line 947
    return v6

    .line 949
    :cond_6
    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 950
    return v6

    .line 952
    :cond_7
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 955
    .end local v5
    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, "dns":Ljava/lang/String;
    const/4 v6, 0x0

    .line 958
    .local v6, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v8, 0x7f1210e5

    if-eqz v7, :cond_8

    .line 960
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f1210b1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 962
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 963
    if-nez v6, :cond_9

    .line 964
    return v8

    .line 966
    :cond_9
    iget-object v7, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    :goto_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 970
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 972
    if-nez v6, :cond_a

    .line 973
    return v8

    .line 975
    :cond_a
    iget-object v7, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_b
    return v1

    .line 915
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_c
    :goto_5
    return v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 1482
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1486
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1491
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 526
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    return-void
.end method

.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .line 621
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 622
    return-object v1

    .line 625
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 627
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 629
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 631
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 632
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 633
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 634
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 636
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 637
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 640
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 641
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    .line 642
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v5, 0xa

    const/16 v6, 0x22

    packed-switch v2, :pswitch_data_0

    .line 835
    return-object v1

    .line 813
    :pswitch_0    # 0x6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 814
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 815
    goto/16 :goto_a

    .line 818
    :pswitch_1    # 0x5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 819
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 820
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 821
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "password":Ljava/lang/String;
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 823
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 825
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 827
    .end local v1
    :goto_2
    goto/16 :goto_a

    .line 831
    :pswitch_2    # 0x4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 832
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 833
    goto/16 :goto_a

    .line 677
    :pswitch_3    # 0x3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 678
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 679
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isFils256Supported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 680
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 682
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isFils384Supported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 685
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v6, 0x5

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSuiteBSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 686
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 687
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 688
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 689
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 690
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 691
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 693
    :cond_7
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 694
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 695
    .local v2, "eapMethod":I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 696
    .local v7, "phase2Method":I
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 697
    const/4 v8, 0x4

    const/4 v9, 0x6

    if-eqz v2, :cond_8

    packed-switch v2, :pswitch_data_1

    .line 734
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 729
    :pswitch_4    # 0x5 0x6 0x4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    add-int/2addr v10, v4

    iput v10, p0, Lcom/android/settings/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 730
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget v11, p0, Lcom/android/settings/wifi/WifiConfigController;->selectedSimCardNumber:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    .line 731
    goto :goto_3

    .line 702
    :cond_8
    packed-switch v7, :pswitch_data_2

    .line 722
    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown phase2 method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    goto :goto_3

    .line 719
    :pswitch_5    # 0x5
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 720
    goto :goto_3

    .line 716
    :pswitch_6    # 0x4
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 717
    goto :goto_3

    .line 713
    :pswitch_7    # 0x3
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 714
    goto :goto_3

    .line 710
    :pswitch_8    # 0x2
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 711
    goto :goto_3

    .line 707
    :pswitch_9    # 0x1
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 708
    goto :goto_3

    .line 704
    :pswitch_a    # 0x0
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 705
    nop

    .line 738
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 739
    .local v10, "caCert":Ljava/lang/String;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 740
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 741
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 743
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 745
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 746
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "/system/etc/security/cacerts"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    .line 747
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 748
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_d

    .line 749
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_b

    .line 750
    const-string v1, "WifiConfigController"

    const-string v3, "Multiple certs can only be set when editing saved network"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 755
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 757
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    .line 760
    :cond_c
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v3

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 767
    :cond_d
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 768
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 769
    const-string v1, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ca_cert ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 770
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") and ca_path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 772
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") should not both be non-null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 769
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 777
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 778
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 781
    :cond_f
    const-string v1, ""

    .line 783
    :cond_10
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 784
    if-eq v2, v8, :cond_13

    if-eq v2, v6, :cond_13

    if-ne v2, v9, :cond_11

    goto :goto_5

    .line 787
    :cond_11
    if-ne v2, v5, :cond_12

    .line 788
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 789
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_6

    .line 791
    :cond_12
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 792
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 793
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_6

    .line 785
    :cond_13
    :goto_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 786
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 796
    :goto_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 799
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 800
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_7

    .line 804
    :cond_14
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 806
    :cond_15
    :goto_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isFils256Supported()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 807
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isFils384Supported()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 808
    :cond_16
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, "eap_erp"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 665
    .end local v1
    .end local v2
    .end local v7
    .end local v10
    :pswitch_b    # 0x2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 666
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "password":Ljava/lang/String;
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 669
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 671
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 673
    .end local v1
    :goto_8
    goto :goto_a

    .line 648
    :pswitch_c    # 0x1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 649
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 650
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 651
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 652
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 653
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "password":Ljava/lang/String;
    if-eq v1, v5, :cond_18

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_18

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_19

    :cond_18
    const-string v4, "[0-9A-Fa-f]*"

    .line 656
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 657
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v4, v3

    goto :goto_9

    .line 659
    :cond_19
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 661
    .end local v1
    .end local v2
    :goto_9
    goto :goto_a

    .line 644
    :pswitch_d    # 0x0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 645
    nop

    .line 838
    :cond_1a
    :goto_a
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 841
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1b

    .line 842
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 845
    :cond_1b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d    # 0x0
        :pswitch_c    # 0x1
        :pswitch_b    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4    # 0x4
        :pswitch_4    # 0x5
        :pswitch_4    # 0x6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a    # 0x0
        :pswitch_9    # 0x1
        :pswitch_8    # 0x2
        :pswitch_7    # 0x3
        :pswitch_6    # 0x4
        :pswitch_5    # 0x5
    .end packed-switch
.end method

.method getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 1429
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1477
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    return v0
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return-object v1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 494
    .local v0, "level":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    nop

    :cond_1
    return-object v1
.end method

.method hideForgetButton()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 511
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    return-void
.end method

.method hideSubmitButton()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 518
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    return-void
.end method

.method isSplitSystemUser()Z
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 477
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    return v0
.end method

.method isSubmittable()Z
    .locals 6

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 543
    .local v1, "passwordInvalid":Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 545
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 547
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->isValidPsk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 548
    :cond_1
    const/4 v1, 0x1

    .line 550
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 552
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-nez v1, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 555
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 556
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_0

    .line 559
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_1

    .line 557
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 561
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0218

    .line 562
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_9

    .line 563
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 564
    .local v2, "caCertSelection":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 567
    const/4 v0, 0x0

    .line 569
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0219

    .line 571
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 572
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 575
    const/4 v0, 0x0

    .line 578
    .end local v2
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a021e

    .line 579
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 580
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 584
    const/4 v0, 0x0

    .line 586
    :cond_a
    return v0
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    return v1

    .line 534
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1

    .line 535
    return v1

    .line 537
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1522
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a03d0

    if-ne v0, v1, :cond_2

    .line 1523
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1524
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 1525
    if-eqz p2, :cond_0

    const/16 v3, 0x90

    goto :goto_0

    .line 1526
    :cond_0
    const/16 v3, 0x80

    :goto_0
    or-int/2addr v2, v3

    .line 1524
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1527
    if-ltz v0, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1530
    .end local v0
    :cond_1
    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a04ef

    if-ne v0, v1, :cond_4

    .line 1531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1534
    .local v0, "advancedToggle":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 1535
    const/4 v1, 0x0

    .line 1536
    .local v1, "toggleVisibility":I
    const v2, 0x7f12105a

    .local v2, "stringID":I
    goto :goto_1

    .line 1538
    .end local v1
    .end local v2
    :cond_3
    const/16 v1, 0x8

    .line 1539
    .restart local v1
    const v2, 0x7f121059

    .line 1541
    .restart local v2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a04ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1544
    .end local v0
    .end local v1
    .end local v2
    :cond_4
    :goto_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "id"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1501
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1503
    const/4 v0, 0x1

    return v0

    .line 1506
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1548
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 1549
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1554
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1555
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1560
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_4

    .line 1561
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 1563
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1564
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_4

    .line 1565
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    goto :goto_4

    .line 1566
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1567
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_4

    .line 1568
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_7

    .line 1569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 1570
    if-nez p3, :cond_6

    .line 1571
    goto :goto_2

    .line 1572
    :cond_6
    nop

    .line 1569
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1573
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$7dViR1XLVJsqzanUSq-nLAYeTK0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$7dViR1XLVJsqzanUSq-nLAYeTK0;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1579
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_4

    .line 1562
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1581
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1582
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1583
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1512
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1514
    const/4 v0, 0x1

    return v0

    .line 1517
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1588
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1496
    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 7

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a02ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a03f2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 597
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 600
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0218

    .line 601
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 602
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, "caCertSelection":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0219

    .line 610
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 611
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .end local v0
    :cond_2
    return-void
.end method

.method public updatePassword()V
    .locals 3

    .line 1594
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1595
    .local v0, "passwdView":Landroid/widget/TextView;
    nop

    .line 1596
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    const/16 v1, 0x90

    goto :goto_0

    .line 1598
    :cond_0
    const/16 v1, 0x80

    :goto_0
    const/4 v2, 0x1

    or-int/2addr v1, v2

    .line 1595
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1599
    return-void
.end method
