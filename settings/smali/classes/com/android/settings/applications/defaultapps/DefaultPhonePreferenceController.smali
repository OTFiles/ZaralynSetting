.class public Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultPhonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mUserId:I

    invoke-static {v0, v1}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "dialerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPhoneDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    nop

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 82
    invoke-static {p1, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "def":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 6

    .line 62
    :try_start_0
    new-instance v0, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 63
    invoke-virtual {v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mUserId:I

    .line 64
    invoke-static {v4, v5}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 63
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    .line 62
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "default_phone_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 40
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 41
    return v2

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 44
    .local v1, "um":Landroid/os/UserManager;
    const-string v3, "no_outgoing_calls"

    .line 45
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 47
    .local v3, "hasUserRestriction":Z
    if-eqz v3, :cond_1

    .line 48
    return v2

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2
.end method
