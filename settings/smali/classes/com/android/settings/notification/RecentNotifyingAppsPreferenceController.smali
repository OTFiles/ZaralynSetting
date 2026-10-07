.class public Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RecentNotifyingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "all_notifications_divider"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "all_notifications"

.field private static final SKIP_SYSTEM_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mDivider:Landroid/support/v7/preference/Preference;

.field private final mHost:Landroid/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mSeeAllPref:Landroid/support/v7/preference/Preference;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    .line 85
    sget-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    const-string v1, "android"

    const-string v2, "com.android.phone"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.providers.calendar"

    const-string v6, "com.android.providers.media"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/Application;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;
    .param p3, "app"    # Landroid/app/Application;
    .param p4, "host"    # Landroid/app/Fragment;

    .line 97
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Fragment;)V

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;
    .param p3, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p4, "host"    # Landroid/app/Fragment;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    iput-object p4, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroid/app/Fragment;

    .line 108
    iput-object p3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 109
    iput-object p2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 110
    return-void
.end method

.method private displayOnlyAllAppsLink()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    const v2, 0x7f1209af

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 168
    .local v0, "prefCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 170
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "all_notifications"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 174
    .end local v1
    :cond_1
    return-void
.end method

.method private displayRecentApps(Landroid/content/Context;Ljava/util/List;)V
    .locals 18
    .param p1, "prefContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;)V"
        }
    .end annotation

    .local p2, "recentApps":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/NotifyingApp;>;"
    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v2, 0x7f120bb7

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 178
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 179
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    const v3, 0x7f080150

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 184
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 185
    .local v1, "appPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppPreference;>;"
    iget-object v3, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 186
    .local v3, "prefCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 187
    iget-object v6, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 188
    .local v6, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "key":Ljava/lang/String;
    const-string v8, "all_notifications"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 190
    move-object v8, v6

    check-cast v8, Lcom/android/settings/notification/NotificationAppPreference;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v6
    .end local v7
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 194
    .local v5, "recentAppsCount":I
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 195
    move-object/from16 v6, p2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/NotifyingApp;

    .line 197
    .local v7, "app":Landroid/service/notification/NotifyingApp;
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 199
    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v9

    .line 200
    .local v9, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-nez v9, :cond_2

    .line 201
    nop

    .line 194
    move-object/from16 v13, p1

    goto/16 :goto_3

    .line 204
    :cond_2
    const/4 v10, 0x1

    .line 205
    .local v10, "rebindPref":Z
    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/notification/NotificationAppPreference;

    .line 206
    .local v11, "pref":Lcom/android/settings/notification/NotificationAppPreference;
    if-nez v11, :cond_3

    .line 207
    new-instance v12, Lcom/android/settings/notification/NotificationAppPreference;

    move-object/from16 v13, p1

    invoke-direct {v12, v13}, Lcom/android/settings/notification/NotificationAppPreference;-><init>(Landroid/content/Context;)V

    move-object v11, v12

    .line 208
    const/4 v10, 0x0

    goto :goto_2

    .line 210
    :cond_3
    move-object/from16 v13, p1

    :goto_2
    invoke-virtual {v11, v8}, Lcom/android/settings/notification/NotificationAppPreference;->setKey(Ljava/lang/String;)V

    .line 211
    iget-object v12, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v12, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v14, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;->setIconSize(I)V

    .line 214
    iget-object v12, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    .line 214
    invoke-static {v12, v14, v15, v2}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v11, v4}, Lcom/android/settings/notification/NotificationAppPreference;->setOrder(I)V

    .line 217
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v12, "args":Landroid/os/Bundle;
    const-string v14, "package"

    invoke-virtual {v12, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v14, "uid"

    iget-object v15, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    new-instance v14, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v15, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v15, Lcom/android/settings/notification/AppNotificationSettings;

    .line 222
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v14

    const v15, 0x7f1209af

    .line 223
    invoke-virtual {v14, v15}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v14

    .line 224
    invoke-virtual {v14, v12}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v14

    const/16 v15, 0x85

    .line 225
    invoke-virtual {v14, v15}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v14

    .line 227
    invoke-virtual {v14}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v14

    .line 221
    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setIntent(Landroid/content/Intent;)V

    .line 228
    new-instance v14, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;

    invoke-direct {v14, v0, v8, v9}, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$7CmRKIepfLY9sZOWQrI97x_3AWA;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    iget-object v14, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v15, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 235
    invoke-virtual {v14, v8, v15}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v14

    .line 234
    xor-int/2addr v14, v2

    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    .line 237
    if-nez v10, :cond_4

    .line 238
    iget-object v14, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v14, v11}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 194
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 242
    .end local v4
    :cond_5
    move-object/from16 v13, p1

    move-object/from16 v6, p2

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    .line 243
    .local v4, "unusedPrefs":Landroid/support/v7/preference/Preference;
    iget-object v7, v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 244
    .end local v4
    goto :goto_4

    .line 245
    :cond_6
    return-void
.end method

.method private getDisplayableRecentAppList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "displayableApps":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/NotifyingApp;>;"
    const/4 v2, 0x0

    .line 251
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    .line 252
    .local v4, "app":Landroid/service/notification/NotifyingApp;
    iget-object v5, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 253
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    .line 252
    invoke-virtual {v5, v6, v7}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    .line 254
    .local v5, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-nez v5, :cond_0

    .line 255
    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->shouldIncludePkgInRecents(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    goto :goto_0

    .line 260
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 262
    if-lt v2, v1, :cond_2

    .line 263
    goto :goto_1

    .line 265
    .end local v4
    .end local v5
    :cond_2
    goto :goto_0

    .line 266
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic lambda$displayRecentApps$0(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 229
    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 230
    .local v0, "blocked":Z
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 232
    return v1
.end method

.method private shouldIncludePkgInRecents(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "RecentNotisCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package, skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v1

    .line 278
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mUserId:I

    .line 284
    invoke-virtual {v2, p1, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 285
    .local v2, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    :cond_1
    const-string v3, "RecentNotisCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a user visible or instant app, skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v1

    .line 290
    .end local v2
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 133
    const-string v0, "all_notifications"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    .line 134
    const-string v0, "all_notifications_divider"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mDivider:Landroid/support/v7/preference/Preference;

    .line 135
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "recent_notifications_category"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method refreshUi(Landroid/content/Context;)V
    .locals 2
    .param p1, "prefContext"    # Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->reloadData()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getDisplayableRecentAppList()Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "recentApps":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/NotifyingApp;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayRecentApps(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->displayOnlyAllAppsLink()V

    .line 155
    :goto_0
    return-void
.end method

.method reloadData()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationBackend;->getRecentApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mApps:Ljava/util/List;

    .line 160
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 126
    const-string v0, "recent_notifications_category"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v0, "all_notifications_divider"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 141
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mSeeAllPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120bb8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method
