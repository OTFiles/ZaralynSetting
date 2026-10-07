.class public Lcom/android/settings/applications/defaultapps/DefaultHomePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultHomePicker.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private hasManagedProfile()Z
    .locals 5

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 134
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v3
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 143
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 145
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->versionNumberAtLeastL(I)Z

    move-result v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 146
    .end local v1
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .line 152
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settingslib/widget/CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;
    .param p5, "systemDefaultKey"    # Ljava/lang/String;

    .line 158
    invoke-super/range {p0 .. p5}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->hasManagedProfile()Z

    move-result v1

    .line 63
    .local v1, "mustSupportManagedProfile":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 66
    .local v11, "context":Landroid/content/Context;
    iget-object v4, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 69
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .local v14, "info":Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v8, "activityName":Landroid/content/ComponentName;
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    goto :goto_0

    .line 76
    :cond_0
    const/4 v4, 0x1

    .line 77
    .local v4, "enabled":Z
    if-eqz v1, :cond_1

    invoke-direct {v0, v13}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206f1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "summary":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_1

    .line 81
    .end local v5
    :cond_1
    const/4 v5, 0x0

    .end local v4
    .local v9, "summary":Ljava/lang/String;
    .local v15, "enabled":Z
    :goto_1
    move v15, v4

    move-object v9, v5

    .line 83
    new-instance v16, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v7, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserId:I

    move-object/from16 v4, v16

    move-object v5, v11

    move v10, v15

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 85
    .local v4, "candidate":Lcom/android/settingslib/applications/DefaultAppInfo;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v4
    .end local v8
    .end local v9
    .end local v13
    .end local v14
    .end local v15
    goto :goto_0

    .line 87
    :cond_2
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 94
    .local v1, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 97
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x313

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 52
    const v0, 0x7f150040

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 104
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, "allComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 108
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 109
    .local v6, "appInfo":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v7, "activityName":Landroid/content/ComponentName;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v5
    .end local v6
    .end local v7
    goto :goto_0

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v5, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const/high16 v6, 0x100000

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 115
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 112
    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, "i":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    const/4 v5, 0x1

    return v5

    .line 127
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    return v1
.end method
