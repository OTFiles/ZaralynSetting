.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InactiveApps.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

.field private static final SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;


# instance fields
.field private mUsageStats:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "ACTIVE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WORKING_SET"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "FREQUENT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "RARE"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/settings/fuelgauge/InactiveApps;->SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    .line 51
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 52
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 53
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 54
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 55
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/fuelgauge/InactiveApps;->SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static bucketToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "bucket"    # I

    .line 106
    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    .line 114
    const-string v0, ""

    return-object v0

    .line 112
    :cond_0
    const-string v0, "NEVER"

    return-object v0

    .line 111
    :cond_1
    const-string v0, "RARE"

    return-object v0

    .line 110
    :cond_2
    const-string v0, "FREQUENT"

    return-object v0

    .line 109
    :cond_3
    const-string v0, "WORKING_SET"

    return-object v0

    .line 108
    :cond_4
    const-string v0, "ACTIVE"

    return-object v0

    .line 107
    :cond_5
    const-string v0, "EXEMPTED"

    return-object v0
.end method

.method private init()V
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 81
    .local v0, "screen":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 84
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-class v4, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "launcherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 91
    .local v6, "app":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 92
    .local v7, "packageName":Ljava/lang/String;
    new-instance v8, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v8, "p":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 96
    sget-object v9, Lcom/android/settings/fuelgauge/InactiveApps;->SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    sget-object v9, Lcom/android/settings/fuelgauge/InactiveApps;->SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0, v8}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    .line 99
    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 102
    .end local v6
    .end local v7
    .end local v8
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/ListPreference;)V
    .locals 7
    .param p1, "p"    # Landroid/support/v7/preference/ListPreference;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "appBucket":I
    invoke-static {v1}, Lcom/android/settings/fuelgauge/InactiveApps;->bucketToName(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "bucketName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v6, 0x7f120d78

    invoke-virtual {v0, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    const/16 v4, 0xa

    if-lt v1, v4, :cond_0

    const/16 v4, 0x28

    if-gt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    .line 127
    .local v3, "changeable":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 131
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0xee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    .line 70
    const v0, 0x7f150063

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/InactiveApps;->addPreferencesFromResource(I)V

    .line 71
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/UsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;I)V

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->init()V

    .line 77
    return-void
.end method
