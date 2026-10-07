.class public Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultEmergencyPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 108
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->QUERY_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "bestMatch":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 56
    .local v4, "context":Landroid/content/Context;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 58
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 59
    invoke-virtual {v7}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 60
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v10, p0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-direct {v9, v4, v10, v8}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, v8}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v2, :cond_0

    iget-wide v9, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v11, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 65
    :cond_0
    move-object v2, v7

    .line 69
    .end local v7
    .end local v8
    :cond_1
    goto :goto_1

    .line 67
    :catch_0
    move-exception v7

    .line 70
    :goto_1
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "defaultKey":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->setDefaultKey(Ljava/lang/String;)Z

    .line 76
    .end local v6
    .end local v7
    :cond_2
    goto :goto_0

    .line 77
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/android/settingslib/widget/CandidateInfo;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120533

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 41
    const/16 v0, 0x312

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 46
    const v0, 0x7f15003f

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "previousValue":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "emergency_assistance_application"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const/4 v2, 0x1

    return v2

    .line 104
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
