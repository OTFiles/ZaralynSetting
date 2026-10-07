.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
.super Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.source "DevelopmentSettingsDashboardFragmentPart.java"

# interfaces
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;


# instance fields
.field public final REQUEST_PARENT_PASSWORD_CHECK_DATETIME:I

.field public final REQUEST_PARENT_PASSWORD_CHECK_SETNEWPWD:I

.field public isParentPasswordCheckPassed:I

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field public mIsNowParentManagerShowing:I

.field private mListContainer:Landroid/view/View;

.field private mMetaInfoClickTimes:I

.field private mMetaInfoLastClick:J

.field private mMetaInfoPreference:Landroid/support/v7/preference/Preference;

.field mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleDisclaimerClickTimes:I

.field private mSimpleDisclaimerLastClick:J

.field private mSimpleDisclaimerPreference:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 897
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$6;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$6;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsAvailable:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    .line 116
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->REQUEST_PARENT_PASSWORD_CHECK_DATETIME:I

    .line 117
    const/16 v0, 0x271b

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->REQUEST_PARENT_PASSWORD_CHECK_SETNEWPWD:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsNowParentManagerShowing:I

    .line 122
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 344
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 81
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerClickTimes:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerClickTimes:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerClickTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerClickTimes:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-wide v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerLastClick:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p1, "x1"    # J

    .line 81
    iput-wide p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerLastClick:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoClickTimes:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoClickTimes:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoClickTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoClickTimes:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-wide v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoLastClick:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p1, "x1"    # J

    .line 81
    iput-wide p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoLastClick:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "x3"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p4, "x4"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
    .param p4, "bluetoothA2dpConfigStore"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v1, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BugReportPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v1, Lcom/android/settings/development/DarkUIPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DarkUIPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/OemUnlockPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    new-instance v1, Lcom/android/settings/development/FileEncryptionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/FileEncryptionPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/PictureColorModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    new-instance v1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WebViewAppPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v1, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/LocalTerminalPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/MockLocationAppPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/LogdSizePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/LogPersistPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    new-instance v1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    new-instance v1, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v1, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    new-instance v1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    new-instance v1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v1, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v1, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    new-instance v1, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v1, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v1, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    new-instance v1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    new-instance v1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    new-instance v1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/RtlLayoutPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    new-instance v1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v1, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    new-instance v1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    new-instance v1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    new-instance v1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ForceMSAAPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    new-instance v1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/StrictModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    new-instance v1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/KeepActivitiesPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    new-instance v1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance v1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ResizableActivityPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/FreeformWindowsPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "running_apps"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "demo_mode"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "quick_settings_tiles"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "feature_flags_dashboard"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "default_usb_configuration"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "density"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "background_check"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v3, "inactive_apps"

    invoke-direct {v1, p0, v3}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    new-instance v1, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v2, "debug_hw_drawing_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v1, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v2, "media_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v1, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v2, "debug_monitoring_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance v1, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v2, "debug_drawing_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v1, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v2, "debug_applications_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    new-instance v1, Lcom/android/settings/development/DevelopmentSplitScreenPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSplitScreenPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    new-instance v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 884
    sget-object v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 4

    .line 765
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    return-void

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 769
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 770
    .local v0, "poker":Lcom/android/settingslib/development/SystemPropPoker;
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 771
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 772
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v3, :cond_1

    .line 773
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 774
    invoke-virtual {v3}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 776
    .end local v2
    :cond_1
    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 778
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 779
    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 3

    .line 753
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    return-void

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 758
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_1

    .line 759
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    .line 761
    .end local v1
    :cond_1
    goto :goto_0

    .line 762
    :cond_2
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 742
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 743
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 750
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    .line 729
    const/4 v0, 0x0

    return-object v0

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    .line 734
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    return-object v0
.end method

.method getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 891
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 712
    const-string v0, "DevSettingsDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 572
    const/16 v0, 0x27

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 722
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150084

    goto :goto_0

    :cond_0
    const v0, 0x7f150045

    :goto_0
    return v0
.end method

.method public getSettingsVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 925
    if-eqz p1, :cond_0

    .line 926
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 927
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 929
    .end local v0
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 931
    :cond_0
    nop

    .line 932
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public isDevelopmentRootSwitchOn()Z
    .locals 1

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 504
    :cond_0
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 1

    .line 643
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 645
    .local v0, "controller":Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onA2dpHwDialogConfirmed()V

    .line 646
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->setIfOnlyAvailableForAdmins(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isUiRestricted()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 236
    :cond_0
    const-string v1, "meta_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoPreference:Landroid/support/v7/preference/Preference;

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getSettingsVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mMetaInfoPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DevSettingsDashboard"

    const-string v3, "get settings version error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1
    :goto_0
    const-string v1, "simple_disclaimer"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerPreference:Landroid/support/v7/preference/Preference;

    .line 247
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSimpleDisclaimerPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 253
    new-instance v1, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsAvailable:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    .line 255
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120510

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->enableDeveloperOptions()V

    goto :goto_1

    .line 261
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->disableDeveloperOptions()V

    .line 265
    :goto_1
    const-string v1, "inner_tester_ota_version_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 266
    .local v1, "mInnerOtaVerPref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_4

    .line 267
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v2, "intent1":Landroid/content/Intent;
    const-string v3, "com.dream.ota.update"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v3, "com.dream.ota.update"

    const-string v4, "com.dream.ota.update.UpdateActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v3, "isPublicBetaTest"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v0, "callme"

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 275
    .end local v2
    :cond_4
    return-void

    .line 227
    .end local v1
    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsAvailable:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_6

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12050e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 233
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "handledResult":Z
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 652
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 655
    move-object v3, v2

    check-cast v3, Lcom/android/settings/development/OnActivityResultListener;

    .line 656
    invoke-interface {v3, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 659
    .end local v2
    :cond_0
    goto :goto_0

    .line 660
    :cond_1
    if-nez v0, :cond_e

    .line 661
    const/16 v1, 0x271a

    const/16 v2, 0x8

    const/16 v3, 0x271b

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, -0x1

    if-ne p1, v1, :cond_9

    .line 662
    const-string v1, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==divhee==========================resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 665
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v2, "com.readboy.parentmanager"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->startActivityForResult(Landroid/content/Intent;I)V

    .line 671
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====divhee==========pad_user_adult_mode====4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v1
    :goto_1
    iput v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    goto :goto_3

    .line 673
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p2, v6, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-nez v1, :cond_7

    if-eq p2, v4, :cond_4

    iget v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    if-ne v1, v5, :cond_7

    .line 674
    :cond_4
    if-eq p2, v6, :cond_6

    iget v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    if-ne v1, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, p2

    nop

    :cond_6
    :goto_2
    iput v5, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 676
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 677
    const-string v1, ""

    const-string v3, "=====divhee================UNINSTALL_ENABLE_ENTER==1151="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 681
    :cond_7
    iput v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 685
    :cond_8
    :goto_3
    iput v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsNowParentManagerShowing:I

    goto :goto_5

    .line 686
    :cond_9
    if-ne p1, v3, :cond_d

    .line 687
    if-eq p2, v4, :cond_a

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->getParentPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 690
    const/4 p2, 0x1

    .line 693
    :cond_a
    if-ne p2, v4, :cond_c

    .line 694
    iget v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    if-ne v1, v5, :cond_b

    goto :goto_4

    :cond_b
    move v5, p2

    :goto_4
    iput v5, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 696
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 697
    const-string v1, ""

    const-string v3, "=====divhee================UNINSTALL_ENABLE_ENTER==111="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 701
    :cond_c
    iput v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 706
    :cond_d
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 708
    :cond_e
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 622
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 624
    .local v0, "controller":Lcom/android/settings/development/ClearAdbKeysPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    .line 625
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 193
    return-void

    .line 196
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 512
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->registerReceivers()V

    .line 514
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 516
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 517
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 522
    .end local v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_1

    .line 521
    :catch_1
    move-exception v1

    .line 524
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "child":Landroid/view/View;
    const v2, 0x102003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 526
    .local v2, "list_container":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 527
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    .line 531
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    const v5, 0x7f0a01de

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 532
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    new-instance v5, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$5;

    invoke-direct {v5, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$5;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    const v5, -0x7f000001

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 538
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 539
    .local v3, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    iget v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    if-eq v6, v0, :cond_3

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    nop

    :cond_3
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 543
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 542
    :catch_2
    move-exception v0

    .line 545
    .end local v3
    :cond_4
    :goto_3
    return-object v1
.end method

.method public onDestroyView()V
    .locals 4

    .line 551
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDestroyView()V

    .line 552
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->unregisterReceivers()V

    .line 555
    sget-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->releaseController()V

    .line 557
    sput-object v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 564
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 565
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 566
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 568
    :cond_1
    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 629
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 631
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    .line 632
    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 636
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 638
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    .line 639
    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 607
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 609
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    .line 611
    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 615
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 617
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    .line 618
    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 782
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->enableDeveloperOptions()V

    .line 783
    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 788
    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 593
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 595
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    .line 596
    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 600
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 602
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    .line 603
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 290
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onPause()V

    .line 292
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 294
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onResume()V

    .line 281
    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsNowParentManagerShowing:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 282
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 286
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 577
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    nop

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 582
    .local v0, "developmentEnabledState":Z
    if-eq p2, v0, :cond_2

    .line 583
    if-eqz p2, :cond_1

    .line 584
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_0

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->disableDeveloperOptions()V

    .line 589
    :cond_2
    :goto_0
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 5
    .param p1, "request"    # I

    .line 305
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->onActivityResult(IILandroid/content/Intent;)V

    .line 307
    return v1

    .line 309
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 311
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    iput v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsNowParentManagerShowing:I

    .line 315
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 316
    .end local v0
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 318
    iput v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 319
    const-string v1, ""

    const-string v2, "===322=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0
    return v3

    .line 322
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    return v1

    .line 329
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    iput v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->mIsNowParentManagerShowing:I

    .line 333
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 338
    .end local v0
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 334
    :catch_2
    move-exception v0

    .line 335
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 336
    iput v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->isParentPasswordCheckPassed:I

    .line 337
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0
    nop

    .line 341
    :goto_0
    return v3
.end method
