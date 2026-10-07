.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field static final MSG_UPDATE_PREFERENCES:I = 0x1

.field private static final SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkPreference:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field final mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field final mHandler:Landroid/os/Handler;

.field private final mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 86
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$3;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreferenceDelay()V

    return-void
.end method

.method private initPreferences()V
    .locals 23

    .line 167
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    .line 168
    .local v7, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    .line 170
    .local v8, "context":Landroid/content/Context;
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 171
    invoke-static {v8, v0}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v9

    .line 172
    .local v9, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    sget-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SAVED_NETWORK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 175
    const/16 v10, 0xa

    .line 176
    .local v10, "orderBase":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 177
    .local v11, "accessPointsSize":I
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 178
    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1210ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 179
    .local v13, "summary1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121118

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, "summary2":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v15, v0

    .line 181
    .local v15, "conectedAny":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_1
    move v5, v0

    .end local v0
    .local v5, "inum":I
    const/4 v4, 0x1

    if-ge v5, v11, :cond_3

    .line 182
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 183
    .local v3, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "key":Ljava/lang/String;
    nop

    .line 185
    invoke-virtual {v6, v2}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 186
    .local v16, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-nez v16, :cond_1

    .line 187
    new-instance v17, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    iget-object v1, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v19, v1

    move-object v1, v3

    move-object/from16 v20, v2

    move-object v2, v8

    .end local v2
    .local v20, "key":Ljava/lang/String;
    move-object/from16 v21, v8

    move-object v8, v3

    move-object/from16 v3, v19

    .end local v3
    .local v8, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .local v21, "context":Landroid/content/Context;
    move-object/from16 v22, v9

    move v9, v4

    move/from16 v4, v18

    .end local v9
    .local v22, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    move/from16 v18, v5

    move-object v5, v6

    .end local v5
    .local v18, "inum":I
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 189
    .end local v16
    .local v0, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 190
    .end local v20
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 193
    .end local v0
    .end local v1
    .end local v18
    .end local v21
    .end local v22
    .restart local v2
    .restart local v3
    .restart local v5
    .local v8, "context":Landroid/content/Context;
    .restart local v9
    .restart local v16
    :cond_1
    move-object v1, v2

    move/from16 v18, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object v8, v3

    move v9, v4

    move-object/from16 v0, v16

    .end local v2
    .end local v3
    .end local v5
    .end local v9
    .end local v16
    .restart local v0
    .restart local v1
    .local v8, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v18
    .restart local v21
    .restart local v22
    :goto_2
    if-eqz v15, :cond_2

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 195
    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 197
    :cond_2
    add-int/lit8 v5, v18, 0xa

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 198
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0
    .end local v1
    .end local v8
    :goto_3
    add-int/lit8 v0, v18, 0x1

    .end local v18
    .local v0, "inum":I
    move-object/from16 v8, v21

    move-object/from16 v9, v22

    goto :goto_1

    .line 202
    .end local v0
    .end local v21
    .end local v22
    .local v8, "context":Landroid/content/Context;
    .restart local v9
    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move v9, v4

    .end local v8
    .end local v9
    .restart local v21
    .restart local v22
    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 204
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_4

    .line 205
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    .line 207
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f121052

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 209
    :cond_4
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    add-int/lit8 v1, v11, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 210
    iget-object v0, v6, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v0, v9, :cond_5

    .line 213
    const-string v0, "SavedAccessPoints"

    const-string v1, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_5
    return-void
.end method

.method private postUpdatePreference()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    :cond_0
    return-void
.end method

.method private postUpdatePreferenceDelay()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    return-void
.end method

.method private showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 231
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    goto :goto_0

    .line 239
    :cond_1
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 240
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 243
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 244
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 275
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    const/16 v0, 0x25a

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 129
    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "wifi_ap_state"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 164
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f1500c7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 136
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 137
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 248
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 270
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0, v2, v0}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v3}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 261
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 4
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 303
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    .line 307
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SavedAccessPoints"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove Passpoint configuration for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 306
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreference()V

    goto :goto_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 313
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 315
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 324
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 325
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    .line 326
    return v1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAddNetworkPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showWifiDialog(Lcom/android/settings/wifi/LongPressAccessPointPreference;)V

    .line 329
    return v1

    .line 331
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->postUpdatePreferenceDelay()V

    .line 144
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 285
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 292
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/wifi/WifiDialog;

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 320
    return-void
.end method
