.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

.field private mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field needNotCloseApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 57
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.parentmanager"

    const-string v2, "com.readboy.personalsetting"

    const-string v3, "com.readboy.tutor"

    const-string v4, "com.readboy.ftmlus"

    const-string v5, "com.readboy.engfulljie"

    const-string v6, "com.readboy.solhl"

    const-string v7, "com.readboy.dailywords"

    const-string v8, "com.readboy.soonerorlaterhappylisten"

    const-string v9, "com.readboy.train"

    const-string v10, "com.readboy.smartlearning"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->needNotCloseApp:Ljava/util/ArrayList;

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlayState"    # Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 278
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const v0, 0x7f120146

    goto :goto_0

    :cond_0
    const v0, 0x7f120147

    .line 278
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 265
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .local v0, "state":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    :goto_0
    goto :goto_1

    .line 267
    .end local v0
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    .line 274
    .restart local v0
    :goto_1
    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private setCanDrawOverlay(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "newState"    # Z

    .line 205
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x18

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getAppUid(Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_0

    .line 208
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 206
    :goto_0
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 211
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v0
    :goto_1
    return-void
.end method

.method private setCanDrawOverlay(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 198
    :goto_0
    const/16 v4, 0x18

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 201
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppUid(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 216
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 218
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 219
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 222
    .end local v0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 260
    const/16 v0, 0xdd

    return v0
.end method

.method public isReadboyNeedNotCloseApps()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->needNotCloseApp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/SettingsBootCompletedReceiver;->isLauncherParentModeNotShowApp(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "newState"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    if-eqz p1, :cond_0

    const/16 v0, 0x302

    goto :goto_0

    .line 228
    :cond_0
    const/16 v0, 0x303

    .line 229
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    .line 95
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 98
    const v1, 0x7f150054

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->addPreferencesFromResource(I)V

    .line 99
    const-string v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 102
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    .line 110
    .local v1, "callMePkgName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/android/settings/ForcePorttAppLandshowAddNewBroadcast;->checkAppIsAllProttSystemDbPorttAppLandShowNames(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    :cond_2
    move v2, v3

    .line 116
    .local v2, "isCalledByMySelf":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 117
    .local v5, "args":Landroid/os/Bundle;
    if-eqz v5, :cond_3

    const-string v6, "callme"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    move v2, v6

    .line 119
    .end local v5
    goto :goto_2

    .line 118
    :catch_0
    move-exception v5

    .line 120
    :goto_2
    if-nez v2, :cond_5

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getAppUid(Ljava/lang/String;)I

    move-result v3

    .line 122
    .local v3, "appuid":I
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-virtual {v5, v1, v3}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 123
    const/4 v5, 0x1

    .line 124
    .local v5, "isNeedTrue":Z
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v6

    if-eq v6, v5, :cond_4

    .line 125
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v6

    xor-int/2addr v4, v6

    invoke-direct {p0, v1, v4}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Ljava/lang/String;Z)V

    .line 127
    :cond_4
    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=====divhee================setCanDrawOverlay===AppIsAllProttSystemDbPorttAppLandShowNames====appuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 129
    return-void

    .line 133
    .end local v2
    .end local v3
    .end local v5
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "request_for_help"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 134
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "request_for_help"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "requestCmd":Ljava/lang/String;
    const-string v5, "permission_on"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 137
    .restart local v5
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v6

    if-eq v6, v5, :cond_6

    .line 138
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v6}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-direct {p0, v6}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 140
    :cond_6
    const-string v6, ""

    const-string v7, "=======divhee=========request_for_help====finish==permission_on="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    .end local v2
    .end local v5
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->isReadboyNeedNotCloseApps()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 144
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    if-nez v2, :cond_8

    .line 145
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 147
    :cond_8
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    if-nez v2, :cond_9

    .line 148
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 150
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 154
    :cond_a
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge;->release()V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 166
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 168
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 169
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->refreshUi()Z

    .line 191
    :cond_0
    return v1

    .line 193
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 162
    return-void
.end method

.method protected refreshUi()Z
    .locals 6

    .line 235
    const-string v0, ""

    const-string v1, "==111==divhee========refreshUi======="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getAppUid(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 239
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v1

    .line 240
    .local v1, "isAllowed":Z
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 242
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v3, v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->isReadboyNeedNotCloseApps()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v4, 0x80

    iget v5, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mUserId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 249
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====divhee========refreshUi======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .end local v1
    :goto_1
    return v0
.end method
