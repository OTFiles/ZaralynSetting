.class Lcom/android/settings/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/SettingsInjector$Setting;,
        Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;,
        Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 108
    new-instance v0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/SettingsInjector$1;)V

    iput-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SettingsInjector;

    .line 71
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/SettingsInjector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SettingsInjector;

    .line 71
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/SettingsInjector;

    .line 71
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addServiceSetting(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/location/InjectedSetting;)Landroid/support/v7/preference/Preference;
    .locals 7
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/android/settings/location/InjectedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Lcom/android/settings/location/InjectedSetting;",
            ")",
            "Landroid/support/v7/preference/Preference;"
        }
    .end annotation

    .line 308
    .local p2, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 309
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move-object v2, v1

    .line 311
    .local v2, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageItemInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 312
    .local v3, "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget v4, p3, Lcom/android/settings/location/InjectedSetting;->iconId:I

    iput v4, v3, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 313
    iget-object v4, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 314
    iget-object v4, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 316
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v5

    iget-object v6, p3, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 317
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v3, v4, v6}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 320
    .end local v3
    .end local v4
    goto :goto_0

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SettingsInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get ApplicationInfo for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v3
    :goto_0
    iget-object v3, p3, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-static {p1, p3}, Lcom/android/settings/location/DimmableIZatIconPreference;->getAppPreference(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Lcom/android/settings/widget/AppPreference;

    move-result-object v3

    goto :goto_1

    .line 323
    :cond_0
    invoke-static {p1, p3}, Lcom/android/settings/location/DimmableIZatIconPreference;->getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;

    move-result-object v3

    .line 324
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    :goto_1
    iget-object v4, p3, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v1, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;)V

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 328
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object v3
.end method

.method private getSettings(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 12
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.SettingInjectorService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 126
    .local v2, "profileId":I
    nop

    .line 127
    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "SettingsInjector"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found services for profile id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v4, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/location/InjectedSetting;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 134
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-direct {p0, v7, p1, v0}, Lcom/android/settings/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings/location/InjectedSetting;

    move-result-object v8

    .line 135
    .local v8, "setting":Lcom/android/settings/location/InjectedSetting;
    if-nez v8, :cond_1

    .line 136
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v8

    .line 143
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7
    .end local v8
    goto :goto_2

    .line 140
    .restart local v7
    :catch_1
    move-exception v8

    .line 141
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v7
    .end local v8
    :goto_1
    nop

    .line 145
    :goto_2
    goto :goto_0

    .line 146
    :cond_2
    const-string v6, "SettingsInjector"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded settings for profile id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    return-object v4
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings/location/InjectedSetting;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 215
    sget-object v0, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "title":Ljava/lang/String;
    nop

    .line 221
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 222
    .local v2, "iconId":I
    const/4 v3, 0x2

    .line 223
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "settingsActivity":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "userRestriction":Ljava/lang/String;
    const-string v6, "SettingsInjector"

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsed title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", iconId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", settingsActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    new-instance v4, Lcom/android/settings/location/InjectedSetting$Builder;

    invoke-direct {v4}, Lcom/android/settings/location/InjectedSetting$Builder;-><init>()V

    .line 231
    invoke-virtual {v4, p0}, Lcom/android/settings/location/InjectedSetting$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 232
    invoke-virtual {v4, p1}, Lcom/android/settings/location/InjectedSetting$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 233
    invoke-virtual {v4, v1}, Lcom/android/settings/location/InjectedSetting$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 234
    invoke-virtual {v4, v2}, Lcom/android/settings/location/InjectedSetting$Builder;->setIconId(I)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 235
    invoke-virtual {v4, p2}, Lcom/android/settings/location/InjectedSetting$Builder;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 236
    invoke-virtual {v4, v3}, Lcom/android/settings/location/InjectedSetting$Builder;->setSettingsActivity(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 237
    invoke-virtual {v4, v5}, Lcom/android/settings/location/InjectedSetting$Builder;->setUserRestriction(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Lcom/android/settings/location/InjectedSetting$Builder;->build()Lcom/android/settings/location/InjectedSetting;

    move-result-object v4

    .line 240
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    return-object v4

    .line 240
    .end local v1
    .end local v2
    .end local v3
    .end local v5
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings/location/InjectedSetting;
    .locals 9
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 163
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 166
    const-string v2, "SettingsInjector"

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v4

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/settings/location/DimmableIZatIconPreference;->showIzat(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    return-object v4

    .line 175
    :cond_1
    move-object v2, v4

    .line 177
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "android.location.SettingInjectorService"

    invoke-virtual {v0, p3, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v2, v4

    .line 178
    if-eqz v2, :cond_5

    .line 183
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 186
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v3, :cond_2

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    .end local v6
    goto :goto_0

    .line 190
    .restart local v6
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "nodeName":Ljava/lang/String;
    const-string v5, "injected-location-setting"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 197
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 196
    invoke-virtual {p3, v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 198
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8, p2, v5, v4}, Lcom/android/settings/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings/location/InjectedSetting;

    move-result-object v7

    .line 203
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 204
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 198
    :cond_3
    return-object v7

    .line 192
    .end local v5
    :cond_4
    :try_start_1
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    .end local v3
    .end local v4
    .end local v6
    :cond_5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load resources for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v2, :cond_6

    .line 204
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v3
.end method


# virtual methods
.method public getInjectedSettings(Landroid/content/Context;I)Ljava/util/List;
    .locals 13
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 252
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 255
    .local v3, "profileCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 256
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 257
    .local v5, "userHandle":Landroid/os/UserHandle;
    const/4 v6, -0x2

    if-eq p2, v6, :cond_0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p2, v6, :cond_1

    .line 258
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 259
    .local v6, "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings/location/InjectedSetting;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/location/InjectedSetting;

    .line 260
    .local v8, "setting":Lcom/android/settings/location/InjectedSetting;
    invoke-direct {p0, p1, v2, v8}, Lcom/android/settings/location/SettingsInjector;->addServiceSetting(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/location/InjectedSetting;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 261
    .local v9, "pref":Landroid/support/v7/preference/Preference;
    iget-object v10, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v11, Lcom/android/settings/location/SettingsInjector$Setting;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v8, v9, v12}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/support/v7/preference/Preference;Lcom/android/settings/location/SettingsInjector$1;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v8
    .end local v9
    goto :goto_1

    .line 255
    .end local v5
    .end local v6
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    .end local v4
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 268
    return-object v2
.end method

.method public hasInjectedSettings(I)Z
    .locals 9
    .param p1, "profileId"    # I

    .line 278
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 279
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 281
    .local v2, "profileCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 282
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 283
    .local v5, "userHandle":Landroid/os/UserHandle;
    const/4 v6, -0x2

    if-eq p1, v6, :cond_0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 284
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 285
    .local v6, "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/settings/location/InjectedSetting;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    const/4 v3, 0x1

    return v3

    .line 281
    .end local v5
    .end local v6
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    .end local v4
    :cond_2
    return v3
.end method

.method public reloadStatusMessages()V
    .locals 3

    .line 297
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method
