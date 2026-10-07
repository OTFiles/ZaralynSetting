.class public Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.super Landroid/app/Activity;
.source "WallpaperSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isWallpaperServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 64
    return v1

    .line 66
    :cond_0
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 68
    .local v0, "manager":Landroid/app/WallpaperManager;
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isWallpaperServiceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    const v2, 0x7f1203e3

    invoke-virtual {p0, v2}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    const v3, 0x7f1203e2

    invoke-virtual {p0, v3}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->startFallbackSuggestion()V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->finish()V

    .line 48
    return-void
.end method

.method startFallbackSuggestion()V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 55
    const v1, 0x7f121047

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 56
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 57
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 59
    return-void
.end method
