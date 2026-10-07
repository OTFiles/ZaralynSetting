.class public Lcom/android/settings/location/DimmableIZatIconPreference;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;,
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
    }
.end annotation


# static fields
.field private static mGetConsentMethod:Ljava/lang/reflect/Method;

.field private static mGetXtProxyMethod:Ljava/lang/reflect/Method;

.field private static mIzatPackage:Ljava/lang/String;

.field private static mLoader:Ldalvik/system/DexClassLoader;

.field private static mNotifierClz:Ljava/lang/Class;

.field private static mShowIzatMethod:Ljava/lang/reflect/Method;

.field private static mXtProxyClz:Ljava/lang/Class;


# direct methods
.method static synthetic access$000()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/AppPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/AppPreference;
    .param p1, "x1"    # Z

    .line 51
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->dimIcon(Lcom/android/settings/widget/AppPreference;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static dimIcon(Lcom/android/settings/widget/AppPreference;Z)V
    .locals 3
    .param p0, "pref"    # Lcom/android/settings/widget/AppPreference;
    .param p1, "dimmed"    # Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v2, 0x66

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_1
    return-void
.end method

.method static getAppPreference(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Lcom/android/settings/widget/AppPreference;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/settings/location/InjectedSetting;

    .line 202
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 202
    :goto_0
    return-object v0
.end method

.method static getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/settings/location/InjectedSetting;

    .line 208
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    iget-object v1, p1, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object v1, p1, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0
.end method

.method private static isIzatPackage(Landroid/content/Context;Lcom/android/settings/location/InjectedSetting;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/settings/location/InjectedSetting;

    .line 113
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static load(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_2

    .line 64
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 65
    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    const-string v2, "/system/framework/izat.xt.srv.jar"

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    .line 69
    const-string v1, "com.qti.izat.XTProxy"

    sget-object v2, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    .line 72
    const-string v1, "com.qti.izat.XTProxy$Notifier"

    sget-object v2, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 75
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v2, "IZAT_XT_PACKAGE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v2, "getXTProxy"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 79
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v2, "getUserConsent"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 80
    sget-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    const-string v2, "showIzat"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    .line 94
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Throwable;
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mXtProxyClz:Ljava/lang/Class;

    .line 88
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    .line 89
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    .line 91
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    .line 92
    sput-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method

.method static showIzat(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/android/settings/location/DimmableIZatIconPreference;->load(Landroid/content/Context;)V

    .line 100
    const/4 v0, 0x1

    move v1, v0

    .line 102
    .local v1, "show":Z
    :try_start_0
    sget-object v2, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/android/settings/location/DimmableIZatIconPreference;->mShowIzatMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 108
    .end local v1
    .local v0, "show":Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .end local v0
    .restart local v1
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .end local v0
    :goto_0
    return v1
.end method
