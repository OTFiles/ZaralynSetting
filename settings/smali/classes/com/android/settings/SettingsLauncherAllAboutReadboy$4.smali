.class Lcom/android/settings/SettingsLauncherAllAboutReadboy$4;
.super Ljava/lang/Object;
.source "SettingsLauncherAllAboutReadboy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherNewYearSkinStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    .line 583
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$4;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 586
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_switch_new_year_skin_callback_enable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "isHaveEnableNewYearSkin":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 588
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_switch_new_year_skin_callback_status_primary"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 590
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_switch_new_year_skin_callback_status_middle"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 594
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isLauncherNewYearSkinEnable(Landroid/content/Context;)I

    move-result v1

    .line 595
    .local v1, "showEnableNewYearSkin":I
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->getNowLauncherNewYearSkinSelected(Landroid/content/Context;)I

    move-result v2

    .line 597
    .local v2, "iNowChoosedValue":I
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 599
    .local v3, "wpm":Landroid/app/WallpaperManager;
    if-eqz v3, :cond_2

    .line 600
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    .line 601
    const v5, 0x7f0802f6

    invoke-virtual {v3, v5, v4}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 602
    const v4, 0x7f0802f5

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/WallpaperManager;->setResource(II)I

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clearWallpaper()V

    .line 610
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    .line 609
    :catch_0
    move-exception v3

    .line 612
    .end local v1
    .end local v2
    :cond_3
    :goto_1
    return-void
.end method
