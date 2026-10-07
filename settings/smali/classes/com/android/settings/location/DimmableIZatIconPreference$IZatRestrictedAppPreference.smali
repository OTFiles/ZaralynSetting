.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;
.super Lcom/android/settings/widget/RestrictedAppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IZatRestrictedAppPreference"
.end annotation


# instance fields
.field private mChecked:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$000()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 169
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$100()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference$1;-><init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)V

    .line 168
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "notifier":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$400()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "xt":Ljava/lang/Object;
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$500()Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    .line 191
    .end local v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    .end local v1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/settings/location/DimmableIZatIconPreference$1;

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;
    .param p1, "x1"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;->mChecked:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v0}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$300(Lcom/android/settings/widget/AppPreference;Z)V

    .line 198
    return-void
.end method
