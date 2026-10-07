.class public Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EmergencyBroadcastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPrefKey:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/settings/accounts/AccountRestrictionHelper;
    .param p3, "prefKey"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p3, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 54
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private isCellBroadcastAppLinkEnabled()Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 88
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 96
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 98
    .end local v1
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->isCellBroadcastAppLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    const-string v1, "no_config_cell_broadcasts"

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 60
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "no_config_cell_broadcasts"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 65
    return-void
.end method
