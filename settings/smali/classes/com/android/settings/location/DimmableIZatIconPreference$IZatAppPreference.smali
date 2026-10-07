.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IZatAppPreference"
.end annotation


# instance fields
.field private mChecked:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$000()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 132
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$100()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;-><init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)V

    .line 131
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 149
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

    .line 150
    .local v1, "xt":Ljava/lang/Object;
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$500()Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    .line 154
    .end local v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .end local v1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/settings/location/DimmableIZatIconPreference$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
    .param p1, "x1"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

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

    .line 161
    return-void
.end method
