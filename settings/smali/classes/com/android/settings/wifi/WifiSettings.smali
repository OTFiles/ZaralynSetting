.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private final REQUEST_PARENT_PASSWORD_WIFI_CLOSE_NEEDED_SWITCH:I

.field private guide_parent_root:Landroid/view/View;

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

.field private mClickedConnect:Z

.field private mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiBeanVariable:Lcom/android/settings/BeanVariable;

.field public mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private scanButton:Landroid/view/View;

.field private wifi_access_diliver:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1314
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1362
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 212
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/android/settings/BeanVariable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    .line 145
    const/16 v0, 0x2779

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->REQUEST_PARENT_PASSWORD_WIFI_CLOSE_NEEDED_SWITCH:I

    .line 420
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "x2"    # I

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3
    .param p1, "connectedAp"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1038
    nop

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object v0

    .line 1040
    .local v0, "pref":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1043
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1056
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V

    .line 1062
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1064
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1065
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1066
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    if-eqz v1, :cond_0

    .line 1067
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1068
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->scrollToPreference(Landroid/support/v7/preference/Preference;)V

    .line 1070
    :cond_0
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 1180
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1184
    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 268
    const v0, 0x7f1500cb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 270
    const-string v0, "connected_access_point"

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 272
    const-string v0, "access_points"

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 274
    const-string v0, "additional_settings"

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 276
    const-string v0, "configure_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 277
    const-string v0, "saved_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    .local v0, "prefContext":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 282
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f121052

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 283
    new-instance v1, Lcom/android/settings/wifi/LinkablePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    .line 285
    new-instance v1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 286
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1199
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1202
    :cond_0
    return-void
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    .line 995
    .local p1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 997
    return v1

    .line 1000
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1001
    .local v0, "connectedAp":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1002
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1003
    return v1

    .line 1007
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1008
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1009
    return v3

    .line 1013
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 1015
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1018
    .local v1, "preference":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eq v2, v0, :cond_3

    .line 1019
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1020
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1021
    return v3

    .line 1026
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1029
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1030
    return v3
.end method

.method private createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 7
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 954
    new-instance v6, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v4, 0x7f080239

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-object v6
.end method

.method private createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 947
    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f080239

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v7
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 8

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 432
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    new-instance v3, Lcom/android/settings/widget/SwitchBarController;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12113d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Lcom/android/settings/BeanVariable;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p0, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 836
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 837
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 838
    return v1

    .line 840
    :cond_0
    nop

    .line 841
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 842
    .local v2, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    .line 846
    .local v3, "reason":I
    const/16 v4, 0xd

    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 843
    .end local v3
    :cond_3
    :goto_0
    return v1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "WifiSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 5

    .line 1145
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1146
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1147
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "wifi_wakeup_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "wifi_scan_always_enabled"

    .line 1149
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "airplane_mode_on"

    .line 1151
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1147
    move v3, v4

    goto :goto_0

    .line 1153
    :cond_0
    nop

    .line 1147
    :goto_0
    return v3
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 1045
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1047
    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1049
    invoke-virtual {v1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1053
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p2, "preference"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1058
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1060
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 138
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 141
    return-void
.end method

.method public static synthetic lambda$setOffMessage$4(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 2

    .line 1166
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 1167
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1168
    const v1, 0x7f1207c1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1169
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 1166
    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1108
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1109
    const v1, 0x7f120a28

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1111
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 1114
    return-void
.end method

.method private registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 5
    .param p1, "wifiNetwork"    # Landroid/net/Network;
    .param p2, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1074
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1080
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    return-void

    .line 1084
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 1086
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1087
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1089
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1090
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1091
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    new-instance v3, Landroid/os/Handler;

    .line 1093
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1087
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 1094
    return-void

    .line 1075
    :cond_2
    :goto_0
    const-string v0, "WifiSettings"

    const-string v1, "Network or Preference were null when registering callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void
.end method

.method private removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "deviceListGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 976
    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1124
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 1125
    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1210bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 418
    return-void
.end method

.method private setAdditionalSettingsSummaries()V
    .locals 7

    .line 1128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 1130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    const v1, 0x7f121084

    goto :goto_0

    .line 1132
    :cond_0
    const v1, 0x7f121083

    .line 1129
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getNumSavedNetworks()I

    move-result v0

    .line 1134
    .local v0, "numSavedNetworks":I
    if-lez v0, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1136
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 1137
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1137
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1142
    :goto_1
    return-void
.end method

.method private setOffMessage()V
    .locals 7

    .line 1157
    const v0, 0x7f1210be

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1161
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v1, v2

    .line 1163
    .local v1, "wifiScanningMode":Z
    if-eqz v1, :cond_1

    const v2, 0x7f121122

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1164
    :cond_1
    const v2, 0x7f121123

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1165
    .local v2, "description":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;

    .local v4, "clickListener":Lcom/android/settings/LinkifyUtils$OnClickListener;
    invoke-direct {v4, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1171
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v5, v0, v2, v4}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 1172
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1173
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1174
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1175
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1176
    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "dialogMode"    # I

    .line 688
    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 690
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 691
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 693
    return-void

    .line 697
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 703
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 704
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 706
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 707
    return-void
.end method

.method private unregisterCaptivePortalNetworkCallback()V
    .locals 3

    .line 1097
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1102
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiSettings"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    .end local v0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1105
    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 11

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 856
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccessPoints called for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_1
    const/4 v1, 0x0

    .line 873
    .local v1, "hasAvailableAccessPoints":Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 874
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 875
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 878
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v2

    .line 879
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 880
    .local v4, "numAccessPoints":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 881
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 883
    .local v5, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 884
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 885
    .local v6, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 886
    nop

    .line 887
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 888
    .local v7, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v7, :cond_2

    .line 889
    invoke-virtual {v7, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 890
    goto :goto_1

    .line 892
    :cond_2
    nop

    .line 893
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v8

    .line 894
    .local v8, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v8, v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v8, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 896
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setWifiIconCallback(Lcom/android/settings/wifi/LongPressAccessPointPreference$WifiIconCallback;)V

    .line 909
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 910
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v9

    if-eqz v9, :cond_4

    .line 911
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 912
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 913
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 916
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 917
    invoke-virtual {v5, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 918
    invoke-virtual {v8}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 880
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 922
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateWifiAccessDiliver(Z)V

    .line 923
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 925
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 926
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 927
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 928
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 930
    if-nez v1, :cond_7

    .line 931
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 932
    new-instance v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 933
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 934
    const v5, 0x7f1210bf

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 935
    add-int/lit8 v5, v2, 0x1

    .local v5, "index":I
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 936
    .end local v2
    const-string v2, "wifi_empty_list"

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 938
    .end local v3
    nop

    .line 942
    move v2, v5

    goto :goto_2

    .line 940
    .end local v5
    .restart local v2
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x6a4

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 942
    :goto_2
    return-void
.end method

.method private updateAccessPointsDelayed()V
    .locals 5

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 779
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    return-void

    .line 782
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 783
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isSavedNetwork"    # Z

    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1268
    return-void
.end method

.method forget()V
    .locals 5

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1241
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1244
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1256
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1259
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1260
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 750
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 756
    const/4 v0, 0x0

    return v0

    .line 754
    :cond_0
    const/16 v0, 0x25e

    return v0

    .line 752
    :cond_1
    const/16 v0, 0x25b

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 1289
    const v0, 0x7f1206e2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 549
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1294
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 1296
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1297
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1307
    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .line 766
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsDelayed()V

    .line 768
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAdvancedPreferenceStates()V

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 294
    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 303
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 318
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 333
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 348
    if-eqz p1, :cond_2

    .line 349
    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 350
    const-string v1, "wifi_ap_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "wifi_ap_state"

    .line 352
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 355
    :cond_1
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const-string v1, "wifi_nfc_dlg_state"

    .line 357
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "wifi_enable_next_on_connect"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 366
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v3, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    nop

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 370
    .local v3, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_3

    .line 371
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 373
    .local v4, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 378
    .end local v3
    .end local v4
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 379
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 381
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 384
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 530
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 531
    const/16 v0, 0x2779

    if-ne p1, v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->delayWifiCloseEventContinue(Z)V

    .line 535
    :cond_2
    return-void

    .line 538
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 539
    .local v0, "formerlyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 540
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 543
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 545
    :cond_4
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 4

    .line 1281
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1284
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 1285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeAllDeviceList(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 967
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiAccessDiliver(Z)V

    .line 972
    :goto_0
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 832
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 612
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 614
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 641
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 637
    :pswitch_0    # 0xa
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 638
    return v1

    .line 633
    :pswitch_1    # 0x9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 634
    return v1

    .line 629
    :pswitch_2    # 0x8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 630
    return v1

    .line 616
    :pswitch_3    # 0x7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    .line 617
    .local v0, "isSavedNetwork":Z
    if-eqz v0, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_2

    .line 621
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 622
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 624
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 626
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3    # 0x7
        :pswitch_2    # 0x8
        :pswitch_1    # 0x9
        :pswitch_0    # 0xa
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 247
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 251
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 252
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x480020

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 259
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setAnimationAllowed(Z)V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 265
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 575
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 577
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v1, :cond_4

    .line 578
    move-object v1, v0

    check-cast v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 579
    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 580
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x7

    const v3, 0x7f1210ee

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 587
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    return-void

    .line 591
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f1210ef

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 597
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 598
    const/16 v3, 0x9

    const v4, 0x7f1210f0

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 600
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 601
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-eqz v4, :cond_4

    .line 603
    const/16 v4, 0xa

    const v5, 0x7f1210f5

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 607
    .end local v1
    .end local v3
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .line 711
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 745
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 735
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 737
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 739
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 743
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 716
    nop

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 720
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_5

    .line 722
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 726
    :cond_5
    nop

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 731
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/SettingsApp;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 732
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    const v1, 0x7f0d0164

    .line 219
    .local v1, "reslayoutId":I
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->guide_parent_root:Landroid/view/View;

    .line 220
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->guide_parent_root:Landroid/view/View;

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 221
    .local v2, "contain":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->guide_parent_root:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 1

    .line 388
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 393
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1207
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1311
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1312
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 458
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    .line 464
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 647
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 649
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 652
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 653
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 654
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 655
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 665
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_3

    .line 666
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 667
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 668
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 669
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 670
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 671
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 672
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 675
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 677
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 679
    .end local v0
    :goto_0
    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 684
    :goto_1
    return v1

    .line 682
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 439
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 440
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 444
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 445
    .local v1, "alreadyImmutablyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 446
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v2, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    .line 454
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 554
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 561
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 562
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 569
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 571
    .end local v0
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 397
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 402
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiCloseCheckedPassword:Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiCloseCheckedPassword(Lcom/android/settings/wifi/WifiEnabler$WifiCloseCheckedPassword;)V

    .line 405
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 407
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 411
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 471
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 473
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 474
    :goto_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 475
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1214
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 229
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 230
    const v1, 0x7f0d023d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0328

    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 235
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f12113f

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 239
    const v1, 0x7f0a04f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_1
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 790
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 791
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 795
    .local v0, "wifiState":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 797
    :pswitch_0    # 0x3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 798
    goto :goto_0

    .line 801
    :pswitch_1    # 0x2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 802
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 803
    const v2, 0x7f12116d

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 804
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 805
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 806
    goto :goto_0

    .line 817
    :pswitch_2    # 0x1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 818
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 819
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 820
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiAccessDiliver(Z)V

    .line 821
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 809
    :pswitch_3    # 0x0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 810
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 811
    const v2, 0x7f121179

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 812
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiAccessDiliver(Z)V

    .line 813
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->scanButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 814
    nop

    .line 824
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 0
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAdvancedPreferenceStates()V

    .line 480
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 504
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 506
    return v1

    .line 508
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    return v1

    .line 515
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 516
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 518
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 522
    .end local v0
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 519
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 521
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v0
    nop

    .line 525
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    :cond_1
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .line 1218
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1220
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1222
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1223
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1225
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1228
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1229
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1230
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1234
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1235
    return-void
.end method

.method public updateAdvancedPreferenceStates()V
    .locals 4

    .line 483
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======divhee=======updateAdvancedPreferenceStates========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 485
    .local v0, "preferenceAdd":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 488
    :cond_0
    const-string v1, "saved_networks"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 489
    .local v1, "preferenceSaved":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    .line 490
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 492
    :cond_1
    const-string v2, "wilan_advanced_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 493
    .local v2, "preferenceAdvanced":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_2

    .line 494
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 496
    :cond_2
    return-void
.end method

.method public updateWifiAccessDiliver(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 980
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->wifi_access_diliver:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->guide_parent_root:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->guide_parent_root:Landroid/view/View;

    const v1, 0x7f0a04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->wifi_access_diliver:Landroid/view/View;

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->wifi_access_diliver:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->wifi_access_diliver:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 986
    :cond_2
    return-void
.end method
