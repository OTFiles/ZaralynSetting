.class public Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppPermissionPreferenceController.java"


# static fields
.field private static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final TAG:Ljava/lang/String; = "PermissionPrefControl"


# instance fields
.field private mNowIsEnabled:Z

.field private mPackageName:Ljava/lang/String;

.field final mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field public mPermissionsDisabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mNowIsEnabled:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.readboy.arcface"

    const-string v2, "com.dream.ota.update"

    const-string v3, "com.readboy.parentmanager"

    const-string v4, "com.android.packageinstaller"

    const-string v5, "com.android.defcontainer"

    const-string v6, "com.android.backup"

    const-string v7, "com.qualcomm.qti.poweroffalarm"

    const-string v8, "com.readboy.handwritingpen"

    const-string v9, "com.readboy.killapp"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionsDisabledList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    .line 36
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mNowIsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    .line 36
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "hideInfoButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PermissionPrefControl"

    const-string v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1
    :goto_0
    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->startManagePermissionsActivity()V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUi(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mNowIsEnabled:Z

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->refreshUi(Z)V

    .line 100
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 95
    return-void
.end method
