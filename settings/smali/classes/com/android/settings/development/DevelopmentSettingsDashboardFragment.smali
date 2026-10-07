.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 502
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    const-string v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 58
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 58
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 58
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 58
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "x3"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p4, "x4"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p4, "bluetoothA2dpConfigStore"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v1, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Lcom/android/settings/development/DarkUIPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lcom/android/settings/development/FileEncryptionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v1, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v1, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v1, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "running_apps"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "demo_mode"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "quick_settings_tiles"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "feature_flags_dashboard"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "default_usb_configuration"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "density"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "background_check"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "inactive_apps"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 4

    .line 375
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 379
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 380
    .local v0, "poker":Lcom/android/settingslib/development/SystemPropPoker;
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 381
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 382
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v3, :cond_1

    .line 383
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 384
    invoke-virtual {v3}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 386
    .end local v2
    :cond_1
    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 388
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 389
    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 3

    .line 363
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 368
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_1

    .line 369
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    .line 371
    .end local v1
    :cond_1
    goto :goto_0

    .line 372
    :cond_2
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
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

    .line 337
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 344
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

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

    .line 496
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 322
    const-string v0, "DevSettingsDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 227
    const/16 v0, 0x27

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 332
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150083

    goto :goto_0

    :cond_0
    const v0, 0x7f150044

    :goto_0
    return v0
.end method

.method public isDevelopmentRootSwitchOn()Z
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 194
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 1

    .line 298
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 300
    .local v0, "controller":Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onA2dpHwDialogConfirmed()V

    .line 301
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 166
    new-instance v0, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    .line 168
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 178
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;)V

    .line 182
    :cond_2
    return-void

    .line 156
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12050e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 162
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "handledResult":Z
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 307
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 310
    move-object v3, v2

    check-cast v3, Lcom/android/settings/development/OnActivityResultListener;

    .line 311
    invoke-interface {v3, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 314
    .end local v2
    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    if-nez v0, :cond_2

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 318
    :cond_2
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 277
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 279
    .local v0, "controller":Lcom/android/settings/development/ClearAdbKeysPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    .line 280
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    return-void

    .line 146
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->registerReceivers()V

    .line 203
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 204
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 208
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .line 213
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroyView()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->unregisterReceivers()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 219
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 223
    :cond_0
    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 284
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 286
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    .line 287
    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 291
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 293
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    .line 294
    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 262
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 264
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    .line 266
    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 270
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 272
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    .line 273
    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 392
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    .line 393
    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 398
    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 248
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 250
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    .line 251
    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 255
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 257
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    .line 258
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 232
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    nop

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 237
    .local v0, "developmentEnabledState":Z
    if-eq p2, v0, :cond_2

    .line 238
    if-eqz p2, :cond_1

    .line 239
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 244
    :cond_2
    :goto_0
    return-void
.end method
