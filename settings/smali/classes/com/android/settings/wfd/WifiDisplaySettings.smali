.class public final Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;,
        Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 826
    sget-object v0, Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$FSGRkDMrB620EgLXH7J2ShDkw60;->INSTANCE:Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$FSGRkDMrB620EgLXH7J2ShDkw60;

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 829
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 607
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 616
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 633
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 81
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .line 81
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 327
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7f121099

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 335
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "p":Landroid/support/v7/preference/Preference;
    const v1, 0x7f1210a9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 338
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 342
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 367
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v2, 0x7f0d0216

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 372
    .end local v0
    :cond_1
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 380
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    const v1, 0x7f12109e

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 381
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 382
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 385
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    move-object v0, v1

    .line 397
    const v1, 0x7f121097

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 398
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 402
    new-instance v1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "lp":Landroid/support/v7/preference/ListPreference;
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_wps_config"

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 418
    const-string v2, "Default"

    const-string v3, "PBC"

    const-string v4, "KEYPAD"

    const-string v5, "DISPLAY"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "wpsEntries":[Ljava/lang/String;
    const-string v3, "4"

    const-string v4, "0"

    const-string v5, "2"

    const-string v6, "1"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "wpsValues":[Ljava/lang/String;
    const-string v4, "wps"

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 425
    const v4, 0x7f1210af

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 426
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 429
    const-string v4, "%1$s"

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 433
    new-instance v4, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v1, v4

    .line 434
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 446
    const-string v4, "Auto"

    const-string v5, "1"

    const-string v6, "6"

    const-string v7, "11"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "lcEntries":[Ljava/lang/String;
    const-string v5, "0"

    const-string v6, "1"

    const-string v7, "6"

    const-string v8, "11"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "lcValues":[Ljava/lang/String;
    const-string v6, "listening_channel"

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 449
    const v6, 0x7f12109d

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 450
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v1, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 453
    const-string v6, "%1$s"

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 457
    new-instance v6, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v1, v6

    .line 458
    new-instance v6, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 470
    const-string v6, "Auto"

    const-string v7, "1"

    const-string v8, "6"

    const-string v9, "11"

    const-string v10, "36"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, "ocEntries":[Ljava/lang/String;
    const-string v7, "0"

    const-string v8, "1"

    const-string v9, "6"

    const-string v10, "11"

    const-string v11, "36"

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "ocValues":[Ljava/lang/String;
    const-string v8, "operating_channel"

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 473
    const v8, 0x7f1210a0

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 474
    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {v1, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    const-string v8, "%1$s"

    invoke-virtual {v1, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 479
    return-void
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 305
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 306
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 309
    :cond_0
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v1
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 316
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    return-object v3

    .line 315
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 827
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 570
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 573
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 234
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 523
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 538
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .line 544
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 558
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0238

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 578
    .local v1, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 580
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 590
    .local v2, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 597
    .local v3, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 599
    const v5, 0x7f1210a4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 600
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 601
    const v5, 0x7f1210a1

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 602
    const v5, 0x7f1210a2

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 603
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 604
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 605
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 498
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 517
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 561
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 567
    :goto_0
    return-void
.end method

.method private unscheduleUpdate()V
    .locals 2

    .line 237
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 239
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 9
    .param p1, "changes"    # I

    .line 244
    const/4 v0, 0x0

    .line 247
    .local v0, "invalidateOptions":Z
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_display_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wifi_display_certification_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_display_wps_config"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 256
    const/4 v0, 0x1

    .line 260
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 264
    const/4 v0, 0x1

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 269
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 272
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v4

    .line 273
    .local v4, "routeCount":I
    move v5, v3

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_5

    .line 274
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6, v5}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    .line 275
    .local v6, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v6, v2}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 276
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 273
    .end local v6
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 281
    .end local v5
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 282
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    .line 284
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    array-length v5, v2

    :goto_3
    if-ge v3, v5, :cond_7

    aget-object v6, v2, v3

    .line 285
    .local v6, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 286
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 287
    new-instance v7, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 287
    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 284
    .end local v6
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 293
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v2, :cond_8

    .line 294
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 299
    :cond_8
    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 302
    :cond_9
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 146
    const v0, 0x7f1206d3

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 127
    const/16 v0, 0x66

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f12109f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setEmptyView(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 136
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 137
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 138
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 140
    const v1, 0x7f1500c8

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 198
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const v0, 0x7f12109c

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 203
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 205
    .end local v0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_display_on"

    .line 215
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 214
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    return v1
.end method

.method public onStart()V
    .locals 7

    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 164
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 178
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    .line 179
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 183
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 194
    return-void
.end method
