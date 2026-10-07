.class public Lcom/android/settings/wallpaper/WallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 17

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 63
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 67
    .local v3, "parent":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 69
    const/4 v5, 0x1

    .line 70
    .local v5, "iOrder":I
    const/4 v6, 0x0

    .line 71
    .local v6, "iChildNumber":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "sOrder":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    const-string v11, "com.android.wallpaper.livepicker"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.readboylauncher"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.readboyprimarylauncher"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v9, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 81
    .local v11, "label":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 82
    :cond_2
    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    if-le v6, v10, :cond_3

    .line 85
    goto :goto_1

    .line 88
    .end local v9
    .end local v11
    :cond_3
    goto :goto_0

    .line 91
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 93
    .restart local v9
    const-string v11, "com.android.wallpaper.livepicker"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.android.readboylauncher"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.android.readboyprimarylauncher"

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 96
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 97
    goto :goto_2

    .line 110
    :cond_6
    new-instance v11, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 111
    .local v11, "pref":Landroid/support/v7/preference/Preference;
    const v12, 0x7f0d0151

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 112
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 113
    .local v12, "prefIntent":Landroid/content/Intent;
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const v13, 0x10008000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {v11, v12}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {v9, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 118
    .local v13, "label":Ljava/lang/CharSequence;
    if-nez v13, :cond_7

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 119
    :cond_7
    invoke-static {v13, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 120
    if-le v6, v10, :cond_8

    .line 121
    const-string v14, "%s%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v4

    add-int/lit8 v16, v5, 0x1

    .local v16, "iOrder":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .end local v5
    aput-object v5, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 124
    move/from16 v5, v16

    .end local v16
    .restart local v5
    :cond_8
    invoke-virtual {v11, v13}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v9, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v3, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 127
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    goto/16 :goto_2

    .line 128
    :cond_9
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 48
    const v0, 0x7f1206ae

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x65

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f1500c0

    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 57
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 132
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
