.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# static fields
.field private static final mCellInfoRefreshRateLabels:[Ljava/lang/String;

.field private static final mCellInfoRefreshRates:[I

.field private static final mPreferredNetworkLabels:[Ljava/lang/String;


# instance fields
.field private callState:Landroid/widget/TextView;

.field private carrierProvisioningButton:Landroid/widget/Button;

.field private cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

.field private dBm:Landroid/widget/TextView;

.field private dataNetwork:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private eabProvisionedSwitch:Landroid/widget/Switch;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsVolteProvisionedSwitch:Landroid/widget/Switch;

.field private imsVtProvisionedSwitch:Landroid/widget/Switch;

.field private imsWfcProvisionedSwitch:Landroid/widget/Switch;

.field mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCellInfoRefreshRateIndex:I

.field private mCellInfoResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/telephony/CellLocation;

.field private mCellLocationResult:Landroid/telephony/CellLocation;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataConnectionRealTimeInfo:[Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private final mDefaultNetworkRequest:Landroid/net/NetworkRequest;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mDownlinkKbps:Landroid/widget/TextView;

.field mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLocation:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCellResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeighboringCids:Landroid/widget/TextView;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhyChanConfig:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostnameResultV4:Ljava/lang/String;

.field private mPingHostnameResultV6:Ljava/lang/String;

.field private mPingHostnameV4:Landroid/widget/TextView;

.field private mPingHostnameV6:Landroid/widget/TextView;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkTypeResult:I

.field mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private mSubscriberId:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mUplinkKbps:Landroid/widget/TextView;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerOnSwitch:Landroid/widget/Switch;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private smsc:Landroid/widget/EditText;

.field private triggercarrierProvisioningButton:Landroid/widget/Button;

.field private updateSmscButton:Landroid/widget/Button;

.field private voiceNetwork:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 105
    const-string v0, "WCDMA preferred"

    const-string v1, "GSM only"

    const-string v2, "WCDMA only"

    const-string v3, "GSM auto (PRL)"

    const-string v4, "CDMA auto (PRL)"

    const-string v5, "CDMA only"

    const-string v6, "EvDo only"

    const-string v7, "Global auto (PRL)"

    const-string v8, "LTE/CDMA auto (PRL)"

    const-string v9, "LTE/UMTS auto (PRL)"

    const-string v10, "LTE/CDMA/UMTS auto (PRL)"

    const-string v11, "LTE only"

    const-string v12, "LTE/WCDMA"

    const-string v13, "TD-SCDMA only"

    const-string v14, "TD-SCDMA/WCDMA"

    const-string v15, "LTE/TD-SCDMA"

    const-string v16, "TD-SCDMA/GSM"

    const-string v17, "TD-SCDMA/UMTS"

    const-string v18, "LTE/TD-SCDMA/WCDMA"

    const-string v19, "LTE/TD-SCDMA/UMTS"

    const-string v20, "TD-SCDMA/CDMA/UMTS"

    const-string v21, "Global/TD-SCDMA"

    const-string v22, "Unknown"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 149
    const-string v0, "Disabled"

    const-string v1, "Immediate"

    const-string v2, "Min 5s"

    const-string v3, "Min 10s"

    const-string v4, "Min 60s"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x1388
        0x2710
        0xea60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 233
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 234
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 242
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    .line 243
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    .line 244
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    .line 249
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 250
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mServiceState:[Landroid/telephony/ServiceState;

    .line 251
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 252
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocation:[Landroid/telephony/CellLocation;

    .line 253
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDataConnectionRealTimeInfo:[Landroid/telephony/DataConnectionRealTimeInfo;

    .line 255
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 256
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 257
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    .line 260
    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 293
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 1173
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1188
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1203
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1219
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1253
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1262
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1331
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1347
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1362
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1377
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1388
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1454
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1462
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1475
    new-instance v0, Lcom/android/settings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$23;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1481
    new-instance v0, Lcom/android/settings/RadioInfo$24;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$24;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1489
    new-instance v0, Lcom/android/settings/RadioInfo$25;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$25;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1495
    new-instance v0, Lcom/android/settings/RadioInfo$26;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$26;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1505
    new-instance v0, Lcom/android/settings/RadioInfo$27;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$27;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1515
    new-instance v0, Lcom/android/settings/RadioInfo$28;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$28;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1544
    new-instance v0, Lcom/android/settings/RadioInfo$29;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$29;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RadioInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/CellLocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocation:[Landroid/telephony/CellLocation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;)[Landroid/telephony/DataConnectionRealTimeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDataConnectionRealTimeInfo:[Landroid/telephony/DataConnectionRealTimeInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:[Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;)[Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mServiceState:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhysicalChannelConfiguration(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)Landroid/telephony/CellLocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/settings/RadioInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p1
.end method

.method static synthetic access$4702(Lcom/android/settings/RadioInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return p1
.end method

.method static synthetic access$4800()[I
    .locals 1

    .line 102
    sget-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateAllCellInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/RadioInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhoneState(I)V

    return-void
.end method

.method private final buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoCdma;

    .line 795
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 796
    .local v0, "cidCdma":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    .line 798
    .local v1, "ssCdma":Landroid/telephony/CellSignalStrengthCdma;
    const-string v2, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    .line 799
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 800
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 801
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 802
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 803
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 804
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 805
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 806
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 807
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 798
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final buildCellInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    .line 860
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 861
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v2, "cdmaCells":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .local v3, "gsmCells":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v4, "lteCells":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v5, "wcdmaCells":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_8

    .line 867
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 869
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v8, v7, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_0

    .line 870
    move-object v8, v7

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, v8}, Lcom/android/settings/RadioInfo;->buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 871
    :cond_0
    instance-of v8, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_1

    .line 872
    move-object v8, v7

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, v8}, Lcom/android/settings/RadioInfo;->buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 873
    :cond_1
    instance-of v8, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_2

    .line 874
    move-object v8, v7

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, v8}, Lcom/android/settings/RadioInfo;->buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 875
    :cond_2
    instance-of v8, v7, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_3

    .line 876
    move-object v8, v7

    check-cast v8, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, v8}, Lcom/android/settings/RadioInfo;->buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .end local v7
    :cond_3
    :goto_1
    goto :goto_0

    .line 879
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v6, :cond_5

    .line 880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    const-string v19, "SRV"

    aput-object v19, v8, v16

    const-string v19, "MCC"

    aput-object v19, v8, v15

    const-string v19, "MNC"

    aput-object v19, v8, v14

    const-string v19, "TAC"

    aput-object v19, v8, v13

    const-string v19, "CID"

    aput-object v19, v8, v12

    const-string v19, "PCI"

    aput-object v19, v8, v11

    const-string v19, "EARFCN"

    aput-object v19, v8, v10

    const-string v19, "BW"

    aput-object v19, v8, v9

    const-string v19, "RSRP"

    const/16 v18, 0x8

    aput-object v19, v8, v18

    const-string v19, "RSRQ"

    const/16 v17, 0x9

    aput-object v19, v8, v17

    const/16 v19, 0xa

    const-string v20, "TA"

    aput-object v20, v8, v19

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_6

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    const/16 v8, 0x8

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "SRV"

    aput-object v8, v9, v16

    const-string v8, "MCC"

    aput-object v8, v9, v15

    const-string v8, "MNC"

    aput-object v8, v9, v14

    const-string v8, "LAC"

    aput-object v8, v9, v13

    const-string v8, "CID"

    aput-object v8, v9, v12

    const-string v8, "UARFCN"

    aput-object v8, v9, v11

    const-string v8, "PSC"

    aput-object v8, v9, v10

    const-string v8, "RSCP"

    const/16 v19, 0x7

    aput-object v8, v9, v19

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    const/16 v8, 0x8

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "SRV"

    aput-object v8, v9, v16

    const-string v8, "MCC"

    aput-object v8, v9, v15

    const-string v8, "MNC"

    aput-object v8, v9, v14

    const-string v8, "LAC"

    aput-object v8, v9, v13

    const-string v8, "CID"

    aput-object v8, v9, v12

    const-string v8, "ARFCN"

    aput-object v8, v9, v11

    const-string v8, "BSIC"

    aput-object v8, v9, v10

    const-string v8, "RSSI"

    const/16 v19, 0x7

    aput-object v8, v9, v19

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 899
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "SRV"

    aput-object v9, v8, v16

    const-string v9, "SID"

    aput-object v9, v8, v15

    const-string v9, "NID"

    aput-object v9, v8, v14

    const-string v9, "BSID"

    aput-object v9, v8, v13

    const-string v9, "C-RSSI"

    aput-object v9, v8, v12

    const-string v9, "C-ECIO"

    aput-object v9, v8, v11

    const-string v9, "E-RSSI"

    aput-object v9, v8, v10

    const-string v9, "E-ECIO"

    const/4 v10, 0x7

    aput-object v9, v8, v10

    const-string v9, "E-SNR"

    const/16 v10, 0x8

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 906
    :cond_8
    const-string v1, "unknown"

    .line 909
    :cond_9
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private final buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoGsm;

    .line 811
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 812
    .local v0, "cidGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    .line 814
    .local v1, "ssGsm":Landroid/telephony/CellSignalStrengthGsm;
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 815
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 816
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 817
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 818
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 819
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 820
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 821
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 822
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 814
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoLte;

    .line 826
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 827
    .local v0, "cidLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    .line 829
    .local v1, "ssLte":Landroid/telephony/CellSignalStrengthLte;
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    .line 831
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 832
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 833
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 834
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 835
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 836
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 837
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 838
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 839
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 840
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 841
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 829
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoWcdma;

    .line 845
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 846
    .local v0, "cidWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    .line 848
    .local v1, "ssWcdma":Landroid/telephony/CellSignalStrengthWcdma;
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 849
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 850
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 851
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 852
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 853
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 854
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 855
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 856
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 848
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 514
    new-instance v0, Lcom/android/settings/RadioInfo$3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method private final getCellInfoDisplayString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 765
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "ci"    # Landroid/telephony/CellInfo;

    .line 773
    const-string v0, ""

    .line 774
    .local v0, "regStr":Ljava/lang/String;
    const-string v1, ""

    .line 775
    .local v1, "connStatStr":Ljava/lang/String;
    const-string v2, ""

    .line 777
    .local v2, "connector":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    const-string v0, "R"

    .line 780
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 782
    :pswitch_0    # 0x2
    const-string v1, "S"

    goto :goto_0

    .line 781
    :pswitch_1    # 0x1
    const-string v1, "P"

    goto :goto_0

    .line 783
    :pswitch_2    # 0x0
    const-string v1, "N"

    goto :goto_0

    .line 784
    :cond_1
    nop

    .line 787
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    const-string v2, "+"

    .line 791
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private httpClientTest()V
    .locals 4

    .line 1085
    const/4 v0, 0x0

    .line 1088
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    .line 1090
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 1091
    const-string v2, "Pass"

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_0

    .line 1093
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 1098
    .end local v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 1099
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 1098
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "Fail: IOException"

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 1098
    .end local v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1102
    :cond_1
    :goto_2
    return-void

    .line 1098
    :goto_3
    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v1
.end method

.method private static isEabEnabledByPlatform(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1415
    if-eqz p0, :cond_0

    .line 1416
    const-string v0, "carrier_config"

    .line 1417
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1418
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "use_rcs_presence_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    const/4 v1, 0x1

    return v1

    .line 1423
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEabProvisioned()Z
    .locals 2

    .line 1385
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/RadioInfo;->isFeatureProvisioned(IZ)Z

    move-result v0

    return v0
.end method

.method private isFeatureProvisioned(IZ)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "defaultValue"    # Z

    .line 1396
    move v0, p2

    .line 1397
    .local v0, "provisioned":Z
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_2

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 1400
    .local v1, "imsConfig":Lcom/android/ims/ImsConfig;
    if-eqz v1, :cond_1

    .line 1401
    nop

    .line 1402
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v2

    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1407
    .end local v1
    :cond_1
    goto :goto_1

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    .local v1, "ex":Lcom/android/ims/ImsException;
    const-string v2, "RadioInfo"

    const-string v3, "isFeatureProvisioned() exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    .end local v1
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureProvisioned() featureId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1411
    return v0
.end method

.method private isImsVolteProvisioned()Z
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1342
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1341
    :cond_0
    return v1

    .line 1344
    :cond_1
    return v1
.end method

.method private isImsVtProvisioned()Z
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1357
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1356
    :cond_0
    return v1

    .line 1359
    :cond_1
    return v1
.end method

.method private isImsWfcProvisioned()Z
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1372
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1371
    :cond_0
    return v1

    .line 1374
    :cond_1
    return v1
.end method

.method private isRadioOn()Z
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 167
    const-string v0, "RadioInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method private final pingHostname()V
    .locals 7

    .line 1055
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ping -c 1 www.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1056
    .local v2, "p4":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 1057
    .local v3, "status4":I
    if-nez v3, :cond_0

    .line 1058
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    goto :goto_0

    .line 1060
    :cond_0
    const-string v4, "Fail(%d)"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1064
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 1076
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1062
    :catch_1
    move-exception v2

    .line 1063
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1066
    .end local v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ping6 -c 1 www.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1067
    .local v2, "p6":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 1068
    .local v3, "status6":I
    if-nez v3, :cond_1

    .line 1069
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    goto :goto_2

    .line 1071
    :cond_1
    const-string v4, "Fail(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 1075
    .end local v2
    .end local v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    goto :goto_3

    .line 1073
    :catch_2
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 1078
    .end local v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    goto :goto_5

    .line 1076
    :goto_4
    nop

    .line 1077
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Fail: InterruptedException"

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1079
    .end local v0
    :goto_5
    return-void
.end method

.method private refreshSmsc()V
    .locals 3

    .line 1106
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1107
    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .line 608
    if-nez p1, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    const-string v0, "mPingHostnameResultV4"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 613
    const-string v0, "mPingHostnameResultV6"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 614
    const-string v0, "mHttpClientTestResult"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const-string v0, "mPreferredNetworkTypeResult"

    sget-object v1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 623
    const-string v0, "mCellInfoRefreshRateIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 624
    return-void
.end method

.method private final updateAllCellInfo()V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    new-instance v0, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1123
    .local v0, "updateAllCellInfoResults":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1133
    .local v1, "locThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1134
    return-void
.end method

.method private updateBandwidths(II)V
    .locals 6
    .param p1, "dlbw"    # I
    .param p2, "ulbw"    # I

    .line 685
    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ltz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    move p1, v2

    .line 686
    if-ltz p2, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p2

    nop

    :cond_3
    :goto_2
    move p2, v0

    .line 687
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    const-string v1, "%-5d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    const-string v1, "%-5d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method private final updateCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->buildCellInfoString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .line 983
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 984
    .local v0, "state":I
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 985
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f120aac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "display":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 998
    :pswitch_0    # 0x3
    const v3, 0x7f120a99

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 989
    :pswitch_1    # 0x2
    const v3, 0x7f120a96

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    goto :goto_0

    .line 992
    :pswitch_2    # 0x1
    const v3, 0x7f120a97

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    goto :goto_0

    .line 995
    :pswitch_3    # 0x0
    const v3, 0x7f120a98

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 996
    nop

    .line 1002
    :goto_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private final updateDataStats2()V
    .locals 14

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1037
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 1038
    .local v1, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 1039
    .local v3, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 1040
    .local v5, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 1042
    .local v7, "rxBytes":J
    const v9, 0x7f120a9d

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1043
    .local v9, "packets":Ljava/lang/String;
    const v10, 0x7f120a9b

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1045
    .local v10, "bytes":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 917
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    const-string v1, "0.0.0.0 allowed"

    goto :goto_0

    :cond_0
    const-string v1, "0.0.0.0 not allowed"

    .line 680
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method

.method private updateImsProvisionedState()V
    .locals 3

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsProvisionedState isImsVolteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1431
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1432
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1433
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1434
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1433
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1436
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVtProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1438
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1439
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1440
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1439
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1442
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1443
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsWfcProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1444
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1445
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1446
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1445
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1448
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1449
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isEabProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1450
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1451
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->isEabEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1452
    return-void
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 11
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 710
    .local v0, "r":Landroid/content/res/Resources;
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 711
    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 712
    .local v1, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 713
    .local v3, "lac":I
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 714
    .local v4, "cid":I
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f120a9e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    if-ne v3, v2, :cond_0

    const-string v7, "unknown"

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120a95

    .line 717
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    if-ne v4, v2, :cond_1

    const-string v2, "unknown"

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    .end local v1
    .end local v3
    .end local v4
    goto/16 :goto_7

    :cond_2
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_8

    .line 720
    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 721
    .local v1, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 722
    .local v3, "bid":I
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 723
    .local v4, "sid":I
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    .line 724
    .local v5, "nid":I
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v6

    .line 725
    .local v6, "lat":I
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v7

    .line 726
    .local v7, "lon":I
    iget-object v8, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    if-ne v3, v2, :cond_3

    const-string v10, "unknown"

    goto :goto_2

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   SID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    if-ne v4, v2, :cond_4

    const-string v10, "unknown"

    goto :goto_3

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   NID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    if-ne v5, v2, :cond_5

    const-string v10, "unknown"

    goto :goto_4

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nLAT = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    if-ne v6, v2, :cond_6

    const-string v10, "unknown"

    goto :goto_5

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   LONG = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    if-ne v7, v2, :cond_7

    const-string v2, "unknown"

    goto :goto_6

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto :goto_7

    .line 741
    :cond_8
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_7
    return-void
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .line 748
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 751
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const-string v1, "no neighboring cells"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 754
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 755
    .local v2, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .end local v2
    goto :goto_0

    .line 759
    :cond_1
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    return-void
.end method

.method private final updateNetworkType()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1008
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1009
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 1008
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1011
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    .line 1010
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    .end local v0
    :cond_0
    return-void
.end method

.method private final updatePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 964
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f120aac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "display":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 974
    :pswitch_0    # 0x2
    const v2, 0x7f120aa4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 971
    :pswitch_1    # 0x1
    const v2, 0x7f120aa5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 972
    goto :goto_0

    .line 968
    :pswitch_2    # 0x0
    const v2, 0x7f120aa3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 969
    nop

    .line 978
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private updatePhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 271
    .local v1, "div":Ljava/lang/String;
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PhysicalChannelConfig;

    .line 274
    .local v3, "c":Landroid/telephony/PhysicalChannelConfig;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ","

    .line 276
    .end local v3
    goto :goto_0

    .line 278
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method private final updatePingState()V
    .locals 3

    .line 1138
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120aac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    new-instance v0, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1154
    .local v0, "updatePingResults":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1161
    .local v1, "hostname":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1163
    new-instance v2, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1170
    .local v2, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1171
    return-void
.end method

.method private updatePreferredNetworkType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 283
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 288
    :cond_1
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 290
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 291
    return-void
.end method

.method private final updateProperties()V
    .locals 4

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1020
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "s":Ljava/lang/String;
    const v2, 0x7f120aac

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1025
    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1030
    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    return-void
.end method

.method private updateRadioPowerState()V
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1291
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1293
    return-void
.end method

.method private final updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 933
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 934
    .local v0, "state":I
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 935
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f120aac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "display":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 946
    :pswitch_0    # 0x3
    const v3, 0x7f120aaa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 943
    :pswitch_1    # 0x2 0x1
    const v3, 0x7f120aa8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    goto :goto_0

    .line 939
    :pswitch_2    # 0x0
    const v3, 0x7f120aa9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 940
    nop

    .line 950
    :goto_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 953
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v4, 0x7f120aa6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 955
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v4, 0x7f120aa7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 958
    :goto_1
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private final updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 696
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 698
    .local v1, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 700
    .local v2, "signalAsu":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    .line 702
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120a9c

    .line 703
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120a9a

    .line 705
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 339
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const-string v0, "RadioInfo"

    const-string v1, "Not run from system user, don\'t do anything."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->finish()V

    .line 342
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    .line 347
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started onCreate, mPhoneId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 351
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 352
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 353
    iget v0, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 355
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 357
    .local v0, "sNumPhones":I
    new-array v1, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 358
    new-array v1, v0, [Landroid/telephony/ServiceState;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mServiceState:[Landroid/telephony/ServiceState;

    .line 359
    new-array v1, v0, [Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 360
    new-array v1, v0, [Landroid/telephony/CellLocation;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mCellLocation:[Landroid/telephony/CellLocation;

    .line 361
    new-array v1, v0, [Landroid/telephony/DataConnectionRealTimeInfo;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mDataConnectionRealTimeInfo:[Landroid/telephony/DataConnectionRealTimeInfo;

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 366
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    .line 365
    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 368
    const v1, 0x7f0a01e4

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 369
    const v1, 0x7f0a02b9

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    .line 370
    const v1, 0x7f0a01f5

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    .line 371
    const v1, 0x7f0a00be

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 372
    const v1, 0x7f0a02c6

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 373
    const v1, 0x7f0a037c

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 374
    const v1, 0x7f0a01b8

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 375
    const v1, 0x7f0a01b2

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 376
    const v1, 0x7f0a04de

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    .line 377
    const v1, 0x7f0a0117

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    .line 378
    const v1, 0x7f0a0122

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 379
    const v1, 0x7f0a0288

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 380
    const v1, 0x7f0a00d7

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 381
    const v1, 0x7f0a0253

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 382
    const v1, 0x7f0a0297

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 383
    const v1, 0x7f0a00cf

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 384
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 385
    const v1, 0x7f0a0123

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 387
    const v1, 0x7f0a03b9

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 388
    const v1, 0x7f0a0349

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    .line 389
    const v1, 0x7f0a03e2

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 390
    const v1, 0x7f0a0149

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 391
    const v1, 0x7f0a02fd

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    .line 392
    const v1, 0x7f0a02fe

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    .line 393
    const v1, 0x7f0a01d6

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 395
    const v1, 0x7f0a02fa

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    .line 397
    const v1, 0x7f0a030f

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 398
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v3, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    const v4, 0x1090008

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 400
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 401
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 403
    const v5, 0x7f0a00cd

    invoke-virtual {p0, v5}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    .line 404
    new-instance v5, Landroid/widget/ArrayAdapter;

    sget-object v6, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    invoke-direct {v5, p0, v4, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v4, v5

    .line 406
    .local v4, "cellInfoAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 407
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 409
    const v3, 0x7f0a04e1

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    .line 410
    const v3, 0x7f0a04e4

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    .line 411
    const v3, 0x7f0a04e7

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    .line 412
    const v3, 0x7f0a0156

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    .line 414
    const v3, 0x7f0a0343

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    .line 416
    const v3, 0x7f0a0146

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    .line 417
    const v3, 0x7f0a04b3

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    .line 418
    invoke-direct {p0, v2, v2}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    .line 420
    const v3, 0x7f0a02ff

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 421
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v3, 0x7f0a04b9

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 423
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const v3, 0x7f0a034e

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 425
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v3, 0x7f0a014a

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 427
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v3, 0x7f0a00ca

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    .line 429
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    const v3, 0x7f0a0475

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    .line 431
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v3, 0x7f0a02bc

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 435
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 437
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 439
    .local v6, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 440
    iget-object v7, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    :cond_1
    iput v2, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 444
    sget-object v2, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 447
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    .line 448
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 447
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 639
    const/4 v0, 0x0

    const v1, 0x7f120aaf

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 640
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 641
    const/16 v2, 0x62

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 642
    const/4 v1, 0x1

    const v2, 0x7f120aa0

    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 643
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 644
    const/4 v2, 0x2

    const v3, 0x7f120aa1

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 645
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 646
    const/4 v2, 0x3

    const v3, 0x7f120aa2

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 647
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 648
    const/4 v2, 0x4

    const v3, 0x7f120a9f

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 649
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 650
    const/4 v2, 0x5

    const v3, 0x7f120ab5

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 651
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 652
    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 597
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 599
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 605
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 658
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 659
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 660
    .local v1, "state":I
    const/4 v2, 0x1

    .line 662
    .local v2, "visible":Z
    if-eqz v1, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 671
    const/4 v2, 0x0

    goto :goto_0

    .line 665
    :pswitch_0    # 0x3 0x2
    const v3, 0x7f120ab5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 666
    goto :goto_0

    .line 668
    :cond_0
    const v3, 0x7f120ab6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 669
    nop

    .line 674
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    const/4 v3, 0x1

    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    const-string v0, "Started onResume"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    .line 461
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    .line 462
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    .line 463
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    .line 464
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    .line 467
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 490
    iget v0, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 491
    .local v0, "subId":[I
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    iget v3, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/RadioInfo;->createPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v1, v2

    .line 492
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/settings/RadioInfo;->mSlotId:I

    aget-object v2, v2, v3

    const v3, 0x1005fd

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 506
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 510
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 628
    const-string v0, "mPingHostnameResultV4"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "mPingHostnameResultV6"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "mHttpClientTestResult"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "mPreferredNetworkTypeResult"

    iget v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v0, "mCellInfoRefreshRateIndex"

    iget v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    return-void
.end method

.method setEabProvisionedState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 1311
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEabProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1313
    return-void
.end method

.method setImsConfigProvisionedState(IZ)V
    .locals 2
    .param p1, "configItem"    # I
    .param p2, "state"    # Z

    .line 1316
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1317
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;IZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 1329
    :cond_0
    return-void
.end method

.method setImsVolteProvisionedState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 1296
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsVolteProvisioned state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1298
    return-void
.end method

.method setImsVtProvisionedState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 1301
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsVtProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1303
    return-void
.end method

.method setImsWfcProvisionedState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 1306
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsWfcProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1308
    return-void
.end method
