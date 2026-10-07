.class public Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppActionResetButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;
    }
.end annotation


# static fields
.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_reset_buttons"

.field private static final TAG:Ljava/lang/String; = "AppActionResetBtnCtrl"


# instance fields
.field private isButton2Clicked:Z

.field mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 82
    const-string v0, "action_reset_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->isButton2Clicked:Z

    .line 83
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 84
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mUserId:I

    .line 86
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 89
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isPackageForbidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 90
    .local v1, "isForbiddened":Z
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getIsFrozen(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .local v2, "isForzened":Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$initTwoButtons$0(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->handleButton1Click()V

    return-void
.end method

.method public static synthetic lambda$initTwoButtons$1(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->handleButton2Click()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 102
    const-string v0, "action_reset_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->initTwoButtons()V

    .line 105
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public handleButton1Click()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onClickThaw(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->initTwoButtons()V

    .line 171
    return-void
.end method

.method public handleButton2Click()V
    .locals 5

    .line 174
    new-instance v0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->isButton2Clicked:Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 179
    :cond_0
    return-void
.end method

.method public initTwoButtons()V
    .locals 9

    .line 133
    :try_start_0
    const-string v0, ""

    const-string v1, "=======divhee============initTwoButtons=====1=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz v0, :cond_6

    .line 135
    const-string v0, ""

    const-string v1, "=======divhee============initTwoButtons=====2=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 137
    .local v0, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 139
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isPackageForbidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 140
    .local v2, "isForbiddened":Z
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getParentModeAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 143
    .local v3, "parentAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .line 147
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getIsFrozen(Ljava/lang/String;)Z

    move-result v3

    .line 148
    .local v3, "isForzened":Z
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "===2====divhee============initTwoButtons=====1=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    const v5, 0x7f1205b7

    .line 150
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    .line 151
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    .line 153
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    new-instance v6, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionResetButtonPreferenceController$v7nNAepNuUo6_7XEAVkahsTcRds;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionResetButtonPreferenceController$v7nNAepNuUo6_7XEAVkahsTcRds;-><init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)V

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 155
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_2

    iget-boolean v8, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->isButton2Clicked:Z

    if-nez v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    invoke-virtual {v4, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    const v8, 0x7f1208c9

    .line 156
    invoke-virtual {v4, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    if-nez v2, :cond_3

    .line 157
    move v8, v7

    goto :goto_2

    .line 156
    :cond_3
    nop

    .line 157
    move v8, v6

    :goto_2
    invoke-virtual {v4, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    if-nez v2, :cond_4

    .line 158
    move v6, v7

    goto :goto_3

    .line 157
    :cond_4
    nop

    .line 158
    :goto_3
    invoke-virtual {v4, v6}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v4

    .line 159
    if-nez v2, :cond_5

    new-instance v5, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionResetButtonPreferenceController$-5-ahKz0047mwMUtWRCdRfWoZAk;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionResetButtonPreferenceController$-5-ahKz0047mwMUtWRCdRfWoZAk;-><init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)V

    nop

    :cond_5
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 164
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    goto :goto_4

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v0
    :goto_4
    return-void
.end method

.method public refreshUi(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 p1, 0x0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setEnabled(Z)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->initTwoButtons()V

    .line 126
    return-void
.end method
