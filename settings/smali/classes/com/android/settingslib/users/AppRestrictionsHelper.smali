.class public Lcom/android/settingslib/users/AppRestrictionsHelper;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

.field private mLeanback:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 66
    new-instance v0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    .line 71
    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    .line 78
    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "visibleApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;>;"
    .local p3, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 300
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x2200

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "launchableApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 303
    .local v3, "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_6

    .line 304
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 305
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 306
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_1

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_6

    .line 310
    :cond_1
    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 311
    .restart local v3
    .restart local v4
    .restart local v5
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    .line 312
    .local v6, "enabled":I
    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 315
    :cond_3
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 317
    .local v7, "targetUserAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_0

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-nez v8, :cond_4

    .line 319
    goto :goto_0

    .line 322
    .end local v7
    :cond_4
    new-instance v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v7}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 323
    .local v7, "info":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 324
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 325
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 326
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 327
    iget-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 329
    :cond_5
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_6
    goto :goto_0

    .line 333
    :cond_7
    return-void
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "excludePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 282
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v3

    .line 288
    .end local v2
    :goto_1
    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 338
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    return v0

    .line 339
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 340
    .local v2, "flags":I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    goto :goto_0

    .line 346
    .end local v1
    .end local v2
    :cond_1
    goto :goto_1

    .line 342
    .restart local v1
    .restart local v2
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 344
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 347
    :goto_1
    return v0
.end method


# virtual methods
.method public applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "listener"    # Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 111
    .local v0, "userId":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/high16 v4, 0x400000

    invoke-interface {v3, p1, v4, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 116
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    const/high16 v4, 0x800000

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_0

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    .line 118
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v5, p1, v6, v2, v2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;III)I

    .line 124
    :cond_1
    if-eqz v3, :cond_2

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 126
    invoke-interface {p3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .end local v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 134
    :cond_2
    :goto_0
    goto :goto_2

    .line 138
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 139
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_5

    .line 140
    iget-boolean v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v3, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 142
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 141
    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_1

    .line 147
    :cond_4
    invoke-interface {p3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 156
    .end local v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    goto :goto_2

    .line 154
    :catch_1
    move-exception v1

    .line 158
    :goto_2
    return-void
.end method

.method public applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;

    .line 97
    iget-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 98
    const-string v0, "AppRestrictionsHelper"

    const-string v1, "Cannot apply application restrictions on another user!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 104
    .local v3, "enabled":Z
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 105
    .end local v1
    .end local v2
    .end local v3
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public fetchAndMergeApps()V
    .locals 13

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 163
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 165
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v2, "excludePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemImes(Ljava/util/Set;)V

    .line 169
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "launcherIntent":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mLeanback:Z

    if-eqz v4, :cond_0

    .line 171
    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 173
    :cond_0
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 178
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "widgetIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v5, v4, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 181
    const/high16 v5, 0x400000

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .line 183
    .local v5, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/high16 v8, 0x800000

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 185
    .local v7, "app":Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v9

    if-nez v8, :cond_1

    .end local v7
    goto :goto_1

    .line 187
    .restart local v7
    :cond_1
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_2

    .line 190
    new-instance v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v8}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 191
    .local v8, "info":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 192
    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 193
    iget-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v8
    goto :goto_2

    .line 198
    :cond_2
    :try_start_0
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 202
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    iget-boolean v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v10, :cond_3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 204
    iget-object v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    iget-object v11, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    .line 206
    :catch_0
    move-exception v8

    .line 210
    .end local v7
    :goto_2
    goto :goto_1

    .line 213
    :cond_4
    const/4 v6, 0x0

    move-object v7, v6

    .line 215
    .local v7, "userApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v9, 0x2000

    :try_start_1
    iget-object v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    .line 216
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 215
    invoke-interface {v1, v9, v10}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    .line 217
    .local v9, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v9, :cond_5

    .line 218
    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v10

    .line 222
    .end local v9
    :cond_5
    goto :goto_3

    .line 220
    :catch_1
    move-exception v9

    .line 224
    :goto_3
    if-eqz v7, :cond_8

    .line 225
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 226
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v8

    if-nez v11, :cond_6

    .end local v10
    goto :goto_4

    .line 228
    .restart local v10
    :cond_6
    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_7

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_7

    .line 231
    new-instance v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v11}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    .line 232
    .local v11, "info":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 233
    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 234
    iget-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v12, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v10
    .end local v11
    :cond_7
    goto :goto_4

    .line 242
    :cond_8
    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    new-instance v9, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;

    invoke-direct {v9, v6}, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v6, "dedupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_5
    if-ltz v8, :cond_a

    .line 247
    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 249
    .local v9, "info":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "both":Ljava/lang/String;
    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 251
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 252
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 253
    iget-object v11, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 255
    :cond_9
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v9
    .end local v10
    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 260
    .end local v8
    :cond_a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v8, "packageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;>;"
    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    .line 262
    .local v10, "info":Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;
    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 263
    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iput-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    goto :goto_8

    .line 265
    :cond_b
    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v10
    :goto_8
    goto :goto_7

    .line 268
    :cond_c
    return-void
.end method

.method public getVisibleApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    return-object v0
.end method

.method public isPackageSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setPackageSelected(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "selected"    # Z

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
