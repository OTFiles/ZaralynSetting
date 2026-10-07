.class public Lcom/android/settings/OthersSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "OthersSettings.java"


# static fields
.field private static final USB_FUNCTION_DEFAULT:Ljava/lang/String;


# instance fields
.field private bUsbConnectModeInsert:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/OthersSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    .line 55
    iput-object v0, p0, Lcom/android/settings/OthersSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 201
    new-instance v0, Lcom/android/settings/OthersSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OthersSettings$1;-><init>(Lcom/android/settings/OthersSettings;)V

    iput-object v0, p0, Lcom/android/settings/OthersSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/android/settings/OthersSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/OthersSettings$2;-><init>(Lcom/android/settings/OthersSettings;)V

    iput-object v0, p0, Lcom/android/settings/OthersSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OthersSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;

    .line 38
    iget-boolean v0, p0, Lcom/android/settings/OthersSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/OthersSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/OthersSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/OthersSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;

    .line 38
    iget-boolean v0, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/OthersSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/OthersSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;

    .line 38
    iget-object v0, p0, Lcom/android/settings/OthersSettings;->usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/OthersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OthersSettings;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/OthersSettings;->updateUsbFunctionState()V

    return-void
.end method

.method public static isNoBatteryPad()Z
    .locals 2

    .line 135
    :try_start_0
    const-string v0, "ro.readboy.config.nobattery"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "noBattery":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x1

    return v1

    .line 141
    .end local v0
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 187
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "MoreOptionSettings"

    const-string v3, "USB is locked down"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v1, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/OthersSettings;->usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 191
    iput-boolean v2, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/OthersSettings;->usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 196
    iput-boolean v2, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    .line 199
    :cond_1
    :goto_0
    return-void
.end method

.method private updateUsbFunctionState()V
    .locals 2

    .line 177
    const-string v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "functions":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/OthersSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/android/settings/OthersSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/OthersSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/OthersSettings;->updateToggles(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultFunction()Ljava/lang/String;
    .locals 3

    .line 323
    const-string v0, "persist.sys.usb.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "functions":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 325
    .local v1, "commaIndex":I
    if-lez v1, :cond_0

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 328
    :cond_0
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 147
    const/16 v0, 0x2f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f15007e

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->addPreferencesFromResource(I)V

    .line 71
    const-string v1, "usb_connect_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/OthersSettings;->usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/OthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OthersSettings;->usbConnectMode:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/OthersSettings;->bUsbConnectModeInsert:Z

    .line 75
    invoke-static {}, Lcom/android/settings/TouchModeSettings;->getTouchModeDriver()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 76
    const-string v2, "touch_mode_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 84
    :cond_0
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/android/settings/OthersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings/OthersSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 85
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Lcom/android/settings/OthersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/OthersSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 88
    const-string v2, "com.dream.freezing"

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const-string v2, "auto_frozen_apps_center"

    invoke-virtual {p0, v2}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 91
    :cond_1
    const-string v2, "ro.readboy.freeform"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "freeform_enable":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 93
    const-string v4, "force_portrait_app_landscape_pref"

    invoke-virtual {p0, v4}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 97
    :cond_2
    const-string v4, "ro.config.gesture_navigation"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 98
    const-string v1, "handy_gesture_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 99
    const-string v1, "navigationbar_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 103
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isLauncherSettingsVisiableStatus(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    const-string v1, "launcher_all_about_readboy_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 108
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsOtherMoreFuns;->isOtherMoreSettingsVisiableStatus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 109
    const-string v1, "other_more_funs_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 113
    :cond_5
    const-string v1, "ro.readboy.ext_swap_support"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "supportStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "support"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 116
    :cond_6
    const-string v3, "ram_fusion_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 121
    :cond_7
    invoke-static {}, Lcom/android/settings/OthersSettings;->isNoBatteryPad()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 122
    const-string v3, "battery_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/OthersSettings;->removePreference(Ljava/lang/String;)Z

    .line 127
    :cond_8
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 162
    return-void
.end method
