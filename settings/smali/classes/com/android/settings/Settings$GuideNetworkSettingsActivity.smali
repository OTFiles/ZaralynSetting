.class public Lcom/android/settings/Settings$GuideNetworkSettingsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuideNetworkSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 184
    invoke-super {p0}, Lcom/android/settings/Settings;->onBackPressed()V

    .line 185
    const/4 v0, -0x1

    .line 186
    .local v0, "bIsReverseAnim":I
    invoke-virtual {p0}, Lcom/android/settings/Settings$GuideNetworkSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isReverseAnim"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/Settings$GuideNetworkSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isReverseAnim"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .line 189
    :cond_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===1==divhee========isReverseAnim===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 191
    const v1, 0x7f01001e

    const v2, 0x7f01001f

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/Settings$GuideNetworkSettingsActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 192
    :cond_1
    if-nez v0, :cond_2

    .line 193
    const v1, 0x7f01001d

    const v2, 0x7f010020

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/Settings$GuideNetworkSettingsActivity;->overridePendingTransition(II)V

    .line 195
    :cond_2
    :goto_0
    return-void
.end method
