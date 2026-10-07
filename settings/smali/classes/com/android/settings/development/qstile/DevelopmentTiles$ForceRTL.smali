.class public Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceRTL"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 3

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug.force_rtl"

    .line 135
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method protected setIsEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 141
    nop

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug.force_rtl"

    .line 141
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string v0, "debug.force_rtl"

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 145
    return-void
.end method
