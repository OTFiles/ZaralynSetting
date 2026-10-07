.class public Lcom/android/settings/wifi/WifiSettingsGuide;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettingsGuide.java"

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
        Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private final KEY_DATA_SWITCH_PREFERENCE:Ljava/lang/String;

.field private guideDataSwitch:Landroid/widget/Switch;

.field private guideDataSwitchLayout:Landroid/view/ViewGroup;

.field private guideDataTitle:Landroid/widget/TextView;

.field private guideDateChildItemCover:Landroid/widget/ImageView;

.field private guideWifiSwitchLayout:Landroid/view/ViewGroup;

.field private guide_network_container:Landroid/view/ViewGroup;

.field private guide_parent_root:Landroid/view/View;

.field private guide_scan_wifi_hot_anim:Landroid/view/View;

.field private isNeedOpenWifi:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mActivity:Landroid/app/Activity;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

.field private mClickedConnect:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGuideDataSwitchOnClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field public mRunnable:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiBeanVariable:Lcom/android/settings/BeanVariable;

.field private mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private scanButton:Landroid/view/View;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private txtTitleOff:Ljava/lang/String;

.field private txtTitleOn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1313
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsGuide$7;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettingsGuide$7;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsGuide;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1391
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsGuide$8;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettingsGuide$8;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsGuide;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 233
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$D1wkeU0ngfDpnuagA6caTHNdiBk;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$D1wkeU0ngfDpnuagA6caTHNdiBk;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$W1iEl2RroDFHPuyde54QQRw1Qpo;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$W1iEl2RroDFHPuyde54QQRw1Qpo;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lcom/android/settings/BeanVariable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    .line 167
    const-string v0, "data_switch_in_guide"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->KEY_DATA_SWITCH_PREFERENCE:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHandler:Landroid/os/Handler;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->isNeedOpenWifi:Z

    .line 338
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsGuide$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettingsGuide$1;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mGuideDataSwitchOnClickListener:Landroid/view/View$OnClickListener;

    .line 567
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsGuide$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettingsGuide$5;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mRunnable:Ljava/lang/Runnable;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettingsGuide;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettingsGuide;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettingsGuide;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettingsGuide;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettingsGuide;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3
    .param p1, "connectedAp"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1036
    nop

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsGuide;->createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object v0

    .line 1038
    .local v0, "pref":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1041
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$C6osi5A862AnT_CITfgH7SwTYCo;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1054
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$_Wjsmb2y7q2lIoxcmpY-Ef7IihY;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$_Wjsmb2y7q2lIoxcmpY-Ef7IihY;-><init>(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V

    .line 1060
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1062
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1063
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1064
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mClickedConnect:Z

    if-eqz v1, :cond_0

    .line 1065
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mClickedConnect:Z

    .line 1066
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->scrollToPreference(Landroid/support/v7/preference/Preference;)V

    .line 1068
    :cond_0
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 1178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 1179
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1183
    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 281
    const v0, 0x7f1500cb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->addPreferencesFromResource(I)V

    .line 283
    const-string v0, "connected_access_point"

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 285
    const-string v0, "access_points"

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 287
    const-string v0, "additional_settings"

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 290
    const-string v0, "configure_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removePreference(Ljava/lang/String;)Z

    .line 291
    const-string v0, "saved_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    .local v0, "prefContext":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f121052

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 297
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0d0169

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 298
    new-instance v1, Lcom/android/settings/wifi/LinkablePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    .line 300
    new-instance v1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 302
    const-string v1, "wifi_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 307
    :cond_0
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1198
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1201
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

    .line 993
    .local p1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 995
    return v1

    .line 998
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 999
    .local v0, "connectedAp":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1000
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 1001
    return v1

    .line 1005
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1006
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1007
    return v3

    .line 1011
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 1013
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1016
    .local v1, "preference":Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eq v2, v0, :cond_3

    .line 1017
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 1018
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1019
    return v3

    .line 1024
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1027
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1028
    return v3
.end method

.method private createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 7
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 983
    new-instance v6, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

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

    .line 976
    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f080239

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v7
.end method

.method private createWifiEnablerGuide()Lcom/android/settings/wifi/WifiEnablerGuide;
    .locals 5

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 525
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/android/settings/wifi/WifiEnablerGuide;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideWifiSwitchLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/wifi/WifiEnablerGuide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/settings/BeanVariable;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private hasCard_SubActive(I)Z
    .locals 4
    .param p1, "subscriptionId"    # I

    .line 1409
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 1410
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1411
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1413
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1414
    const/4 v0, 0x1

    return v0

    .line 1426
    .end local v1
    .end local v2
    :cond_0
    goto :goto_0

    .line 1424
    :catch_0
    move-exception v1

    .line 1425
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    .end local v1
    :goto_0
    return v0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p0, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 890
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 891
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 892
    return v1

    .line 894
    :cond_0
    nop

    .line 895
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 896
    .local v2, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    .line 900
    .local v3, "reason":I
    const/16 v4, 0xd

    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 897
    .end local v3
    :cond_3
    :goto_0
    return v1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 135
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "WifiSettingsGuide"

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

.method public static synthetic lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettingsGuide;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 1043
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1045
    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1047
    invoke-virtual {v1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1046
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 1051
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2
    .param p0, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .param p1, "preference"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1058
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/WifiSettingsGuide;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->updateAccessPointPreferences()V

    .line 140
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/wifi/WifiSettingsGuide;)V
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 143
    return-void
.end method

.method public static synthetic lambda$setOffMessage$4(Lcom/android/settings/wifi/WifiSettingsGuide;)V
    .locals 2

    .line 1165
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 1166
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1167
    const v1, 0x7f1207c1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1169
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 1165
    return-void
.end method

.method private mobileDataSimCardExisted()Z
    .locals 6

    .line 1467
    const/4 v0, 0x0

    .line 1468
    .local v0, "sim1existed":Z
    const/4 v1, 0x0

    move v2, v1

    .line 1470
    .local v2, "sim2existed":Z
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->hasCard_SubActive(I)Z

    move-result v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1473
    goto :goto_0

    .line 1471
    :catch_0
    move-exception v3

    .line 1472
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1475
    .end local v3
    :goto_0
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->hasCard_SubActive(I)Z

    move-result v4

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    .line 1478
    goto :goto_1

    .line 1476
    :catch_1
    move-exception v4

    .line 1477
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1480
    .end local v4
    :goto_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 1481
    return v1

    .line 1483
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1484
    return v1

    .line 1486
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data_now_busy"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1487
    return v1

    .line 1489
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    .line 1490
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    .line 1489
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 1492
    :catch_2
    move-exception v3

    .line 1493
    .restart local v3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1495
    .end local v3
    return v1
.end method

.method private registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 5
    .param p1, "wifiNetwork"    # Landroid/net/Network;
    .param p2, "pref"    # Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 1072
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1078
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    return-void

    .line 1082
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->unregisterCaptivePortalNetworkCallback()V

    .line 1084
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1087
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1088
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1089
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    new-instance v3, Landroid/os/Handler;

    .line 1091
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1085
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 1092
    return-void

    .line 1073
    :cond_2
    :goto_0
    const-string v0, "WifiSettingsGuide"

    const-string v1, "Network or Preference were null when registering callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1122
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->unregisterCaptivePortalNetworkCallback()V

    .line 1123
    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1210bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 518
    return-void
.end method

.method private setAdditionalSettingsSummaries()V
    .locals 7

    .line 1131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getNumSavedNetworks()I

    move-result v0

    .line 1132
    .local v0, "numSavedNetworks":I
    const/4 v0, 0x0

    .line 1133
    if-lez v0, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1137
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1136
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1141
    :goto_0
    return-void
.end method

.method private setOffMessage()V
    .locals 6

    .line 1156
    const v0, 0x7f1210be

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1160
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

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

    .line 1162
    .local v1, "wifiScanningMode":Z
    if-eqz v1, :cond_1

    const v2, 0x7f121122

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1163
    :cond_1
    const v2, 0x7f121123

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1164
    .local v2, "description":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$r5cpc8ILy1w7r19GQ1tvtOpvHns;

    .local v4, "clickListener":Lcom/android/settings/LinkifyUtils$OnClickListener;
    invoke-direct {v4, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettingsGuide$r5cpc8ILy1w7r19GQ1tvtOpvHns;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    .line 1170
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v5, v0, v2, v4}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 1172
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1174
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1175
    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "dialogMode"    # I

    .line 737
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 739
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 740
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 742
    return-void

    .line 746
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeDialog(I)V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 752
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 753
    iput p2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialogMode:I

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(I)V

    .line 756
    return-void
.end method

.method private unregisterCaptivePortalNetworkCallback()V
    .locals 3

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1100
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiSettingsGuide"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    .end local v0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1103
    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 12

    .line 905
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 910
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-static {}, Lcom/android/settings/wifi/WifiSettingsGuide;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    const-string v1, "WifiSettingsGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccessPoints called for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 917
    :cond_2
    const/4 v1, 0x0

    .line 918
    .local v1, "hasAvailableAccessPoints":Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 919
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 920
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 923
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v3

    .line 924
    .local v3, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 925
    .local v5, "numAccessPoints":I
    :goto_0
    if-ge v3, v5, :cond_7

    .line 926
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/AccessPoint;

    .line 928
    .local v6, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 929
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 930
    .local v7, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 931
    nop

    .line 932
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettingsGuide;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 933
    .local v8, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v8, :cond_3

    .line 934
    invoke-virtual {v8, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 935
    goto :goto_1

    .line 937
    :cond_3
    nop

    .line 938
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettingsGuide;->createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v9

    .line 939
    .local v9, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v9, v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v9, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 941
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mOpenSsid:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 942
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v10

    if-eqz v10, :cond_5

    .line 943
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettingsGuide;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 944
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettingsGuide;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 945
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mOpenSsid:Ljava/lang/String;

    .line 948
    :cond_5
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 949
    invoke-virtual {v6, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 950
    invoke-virtual {v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 925
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 953
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 954
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 955
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 956
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->setAdditionalSettingsSummaries()V

    .line 957
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 959
    if-nez v1, :cond_8

    .line 960
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 961
    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 962
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 963
    const v2, 0x7f1210bf

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 964
    add-int/lit8 v2, v3, 0x1

    .local v2, "index":I
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 965
    .end local v3
    const-string v3, "wifi_empty_list"

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 967
    .end local v4
    goto :goto_2

    .line 969
    .end local v2
    .restart local v3
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x6a4

    invoke-virtual {v2, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    move v2, v3

    .end local v3
    .restart local v2
    :goto_2
    return-void
.end method

.method private updateAccessPointsDelayed()V
    .locals 5

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getView()Landroid/view/View;

    move-result-object v0

    .line 826
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 827
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    return-void

    .line 830
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 831
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 833
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public checkWhetherAddDataSwitchPreference()V
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->mobileDataSimCardExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDateChildItemCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mGuideDataSwitchOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDateChildItemCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOff:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    :goto_2
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isSavedNetwork"    # Z

    .line 1263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mClickedConnect:Z

    .line 1267
    return-void
.end method

.method forget()V
    .locals 5

    .line 1237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1240
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1243
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :cond_0
    const-string v0, "WifiSettingsGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1255
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1258
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    .line 1259
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 798
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 804
    const/4 v0, 0x0

    return v0

    .line 802
    :cond_0
    const/16 v0, 0x25e

    return v0

    .line 800
    :cond_1
    const/16 v0, 0x25b

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 1288
    const v0, 0x7f1206e2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 598
    const/16 v0, 0x67

    return v0
.end method

.method public hasIccCard()Z
    .locals 6

    .line 1435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1436
    .local v0, "mSubscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1437
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    nop

    .line 1438
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 1440
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 1441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1442
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1443
    const/4 v3, 0x1

    return v3

    .line 1445
    .end local v4
    :cond_0
    goto :goto_0

    .line 1459
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1293
    const-string v0, "WifiSettingsGuide"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getView()Landroid/view/View;

    move-result-object v0

    .line 1295
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1296
    new-instance v1, Lcom/android/settings/wifi/WifiSettingsGuide$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettingsGuide$6;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1306
    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .line 814
    const-string v0, "WifiSettingsGuide"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->updateAccessPointsDelayed()V

    .line 816
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 374
    nop

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 374
    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 379
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 383
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiSettingsGuide$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsGuide$2;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 398
    new-instance v1, Lcom/android/settings/wifi/WifiSettingsGuide$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsGuide$3;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 413
    new-instance v1, Lcom/android/settings/wifi/WifiSettingsGuide$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsGuide$4;-><init>(Lcom/android/settings/wifi/WifiSettingsGuide;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 428
    if-eqz p1, :cond_2

    .line 429
    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialogMode:I

    .line 430
    const-string v1, "wifi_ap_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    const-string v1, "wifi_ap_state"

    .line 432
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 435
    :cond_1
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    const-string v1, "wifi_nfc_dlg_state"

    .line 437
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "wifi_enable_next_on_connect"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    .line 446
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mEnableNextOnConnection:Z

    if-eqz v3, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->hasNextButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    nop

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 450
    .local v3, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_3

    .line 451
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 453
    .local v4, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    .line 458
    .end local v3
    .end local v4
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->registerForContextMenu(Landroid/view/View;)V

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->setHasOptionsMenu(Z)V

    .line 461
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mOpenSsid:Ljava/lang/String;

    .line 464
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 585
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 587
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    .line 588
    .local v0, "formerlyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    .line 589
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    if-nez v1, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->addPreferences()V

    .line 594
    :cond_0
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1283
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 1284
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1503
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1513
    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->changeNextButtonState(Z)V

    .line 886
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 660
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 663
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 690
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 686
    :pswitch_0    # 0xa
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(I)V

    .line 687
    return v1

    .line 682
    :pswitch_1    # 0x9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 683
    return v1

    .line 678
    :pswitch_2    # 0x8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->forget()V

    .line 679
    return v1

    .line 665
    :pswitch_3    # 0x7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    .line 666
    .local v0, "isSavedNetwork":Z
    if-eqz v0, :cond_1

    .line 667
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_2

    .line 670
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 671
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 673
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 675
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

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 262
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x480020

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 269
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->setAnimationAllowed(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->addPreferences()V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 278
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 624
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 626
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v1, :cond_4

    .line 627
    move-object v1, v0

    check-cast v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 628
    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 629
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 630
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 631
    const/4 v1, 0x7

    const v3, 0x7f1210ee

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 636
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 637
    return-void

    .line 640
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 644
    :cond_2
    const/16 v3, 0x8

    const v4, 0x7f1210ef

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 646
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 647
    const/16 v3, 0x9

    const v4, 0x7f1210f0

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 649
    .local v3, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 650
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-eqz v4, :cond_4

    .line 652
    const/16 v4, 0xa

    const v5, 0x7f1210f5

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 656
    .end local v1
    .end local v3
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .line 760
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 793
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 783
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 785
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 787
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 791
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 765
    nop

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 769
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_5

    .line 771
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 775
    :cond_5
    nop

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialogMode:I

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 779
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, "child":Landroid/view/View;
    const v1, 0x7f0d0165

    .line 471
    .local v1, "reslayoutId":I
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    .line 472
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    .line 473
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120475

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1209bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOn:Ljava/lang/String;

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1203a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->txtTitleOff:Ljava/lang/String;

    .line 476
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    const v3, 0x7f0a01ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    .line 477
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const v3, 0x1020040

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitch:Landroid/widget/Switch;

    .line 478
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataTitle:Landroid/widget/TextView;

    .line 479
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDataSwitchLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a01bb

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideDateChildItemCover:Landroid/widget/ImageView;

    .line 480
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    const v3, 0x7f0a01bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guideWifiSwitchLayout:Landroid/view/ViewGroup;

    .line 481
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    const v3, 0x7f0a01bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    .line 483
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_parent_root:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .line 367
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 368
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 489
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 491
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->teardownSwitchController()V

    .line 494
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->forget()V

    .line 1206
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 1310
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1311
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 558
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->pause()V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    .line 565
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 696
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 698
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 701
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 702
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 703
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 704
    const/4 v0, 0x0

    return v0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 714
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-nez v2, :cond_3

    .line 715
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 716
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 718
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 719
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 720
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 721
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 724
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 726
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 728
    .end local v0
    :goto_0
    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_7

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->onAddNetworkPressed()V

    .line 733
    :goto_1
    return v1

    .line 731
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 532
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->checkWhetherAddDataSwitchPreference()V

    .line 536
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 540
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    .line 541
    .local v1, "alreadyImmutablyRestricted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    .line 542
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    if-eqz v2, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->restrictUi()V

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    if-eqz v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiEnablerGuide;->resume(Landroid/content/Context;)V

    .line 549
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->isNeedOpenWifi:Z

    if-eqz v2, :cond_2

    .line 550
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->isNeedOpenWifi:Z

    .line 551
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->guideNowFirstInForceOpenWifi()V

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    .line 554
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 603
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 610
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 611
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 618
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 620
    .end local v0
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 498
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0, p0}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->createWifiEnablerGuide()Lcom/android/settings/wifi/WifiEnablerGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiEnablerSwitcher:Lcom/android/settings/wifi/WifiEnablerGuide;

    .line 505
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->restrictUi()V

    .line 507
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->onWifiStateChanged(I)V

    .line 511
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->unregisterCaptivePortalNetworkCallback()V

    .line 580
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 581
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 1210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1213
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 238
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 240
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 241
    const v1, 0x7f0d023d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0328

    .line 242
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mProgressHeader:Landroid/view/View;

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 249
    :cond_0
    const v1, 0x7f0a04f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_1
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 838
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 839
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 843
    .local v0, "wifiState":I
    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 845
    :pswitch_0    # 0x3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->updateAccessPointPreferences()V

    .line 846
    goto :goto_0

    .line 849
    :pswitch_1    # 0x2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 850
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 851
    const v1, 0x7f12116d

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    .line 852
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 853
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 854
    goto :goto_0

    .line 868
    :pswitch_2    # 0x1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->setOffMessage()V

    .line 869
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->setAdditionalSettingsSummaries()V

    .line 870
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->setProgressBarVisible(Z)V

    .line 871
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 872
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 857
    :pswitch_3    # 0x0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->removeConnectedAccessPointPreference()V

    .line 858
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 859
    const v3, 0x7f121179

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->addMessagePreference(I)V

    .line 860
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 861
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_scan_wifi_hot_anim:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->guide_network_container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->scanButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 865
    nop

    .line 878
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
    .param p1, "evt"    # Ljava/beans/PropertyChangeEvent;

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsGuide;->updateAdvancedPreferenceStates()V

    .line 1337
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mProgressHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mProgressHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    :cond_1
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 3
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .line 1217
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1219
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1221
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1228
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1229
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1233
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1234
    return-void
.end method

.method public updateAdvancedPreferenceStates()V
    .locals 4

    .line 1340
    const-string v0, "add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1341
    .local v0, "preferenceAdd":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1344
    :cond_0
    const-string v1, "saved_networks"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 1345
    .local v1, "preferenceSaved":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1348
    :cond_1
    const-string v2, "wilan_advanced_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 1349
    .local v2, "preferenceAdvanced":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_2

    .line 1350
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsGuide;->mWifiBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v3}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1353
    :cond_2
    if-eqz v2, :cond_3

    .line 1354
    :try_start_0
    const-string v3, "advance_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsGuide;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 1355
    .local v3, "catPref":Landroid/support/v7/preference/PreferenceCategory;
    if-eqz v3, :cond_3

    .line 1356
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v3

    .line 1360
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3
    goto :goto_1

    .line 1361
    :cond_3
    :goto_0
    nop

    .line 1362
    :goto_1
    return-void
.end method
