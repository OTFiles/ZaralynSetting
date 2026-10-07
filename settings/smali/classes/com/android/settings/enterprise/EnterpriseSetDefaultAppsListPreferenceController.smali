.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseSetDefaultAppsListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 58
    nop

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 66
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 67
    .local v0, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 69
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildAppList()V

    .line 71
    return-void
.end method

.method private buildAppList()V
    .locals 14

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 80
    .local v1, "user":Landroid/os/UserHandle;
    const/4 v2, 0x0

    .line 81
    .local v2, "hasDefaultsForUser":Z
    const/4 v3, 0x0

    .line 83
    .local v3, "userMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    .end local v2
    .local v7, "hasDefaultsForUser":Z
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v8, v4, v2

    .line 84
    .local v8, "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 85
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 86
    invoke-virtual {v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v11

    .line 85
    invoke-interface {v9, v10, v11}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    .line 87
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    goto :goto_3

    .line 90
    :cond_0
    if-nez v7, :cond_1

    .line 91
    const/4 v7, 0x1

    .line 92
    iget-object v10, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/UserAppInfo;

    iget-object v11, v11, Lcom/android/settings/applications/UserAppInfo;->userInfo:Landroid/content/pm/UserInfo;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v10, Ljava/util/EnumMap;

    const-class v11, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-direct {v10, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v3, v10

    .line 94
    iget-object v10, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v10, "applicationInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/UserAppInfo;

    .line 98
    .local v12, "userAppInfo":Lcom/android/settings/applications/UserAppInfo;
    iget-object v13, v12, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v12
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v3, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v8
    .end local v9
    .end local v10
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v1
    .end local v3
    .end local v7
    :cond_3
    goto :goto_0

    .line 103
    :cond_4
    new-instance v0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseSetDefaultAppsListPreferenceController$iIsgYxioer_lSG0lJzt4UtTCm2Y;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseSetDefaultAppsListPreferenceController$iIsgYxioer_lSG0lJzt4UtTCm2Y;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method private buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 160
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 161
    .local v0, "appNames":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 162
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 165
    aget-object v1, v0, v1

    return-object v1

    .line 166
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 167
    const v2, 0x7f120130

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    aget-object v1, v0, v3

    aput-object v1, v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 170
    :cond_2
    const v2, 0x7f120131

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v0, v1

    aput-object v6, v5, v1

    aget-object v1, v0, v3

    aput-object v1, v5, v3

    aget-object v1, v0, v4

    aput-object v1, v5, v4

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 8
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    .local p3, "apps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    if-nez p2, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 146
    .local v4, "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    invoke-virtual {p3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 147
    .local v5, "appsForCategory":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    goto :goto_1

    .line 150
    :cond_1
    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-direct {v6, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 151
    .local v6, "preference":Landroid/support/v7/preference/Preference;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, p1, v4, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, p1, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 154
    invoke-virtual {v6, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 155
    invoke-virtual {p2, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_3
    return-void
.end method

.method private getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeOfDefault"    # Lcom/android/settings/applications/EnterpriseDefaultApps;
    .param p3, "appCount"    # I

    .line 176
    sget-object v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$1;->$SwitchMap$com$android$settings$applications$EnterpriseDefaultApps:[I

    invoke-virtual {p2}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0    # 0x7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100011

    .line 193
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0

    .line 189
    :pswitch_1    # 0x6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100012

    .line 190
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0

    .line 187
    :pswitch_2    # 0x5
    const v0, 0x7f1204f6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_3    # 0x4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100013

    .line 185
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0

    .line 182
    :pswitch_4    # 0x3
    const v0, 0x7f1204f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_5    # 0x2
    const v0, 0x7f1204f0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_6    # 0x1
    const v0, 0x7f1204ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
        :pswitch_3    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method

.method public static synthetic lambda$buildAppList$0(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "prefContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 119
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    goto :goto_2

    .line 125
    :cond_1
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 127
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v4, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 128
    .local v4, "category":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 129
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    const v5, 0x7f12086d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_1

    .line 132
    :cond_2
    const v5, 0x7f1209df

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 134
    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 135
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    .line 125
    .end local v3
    .end local v4
    add-int/lit8 v3, v2, 0x1

    .end local v2
    .local v3, "i":I
    goto :goto_0

    .line 138
    .end local v3
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method
