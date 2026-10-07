.class public Lcom/android/settings/SettingsBdcFastActivity;
.super Landroid/app/Activity;
.source "SettingsBdcFastActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/SettingsBdcFastActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 19
    .local v0, "window":Landroid/view/Window;
    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 23
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 24
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 25
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=======divhee============SettingsBdcFastActivity====onCreate==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsBdcFastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsBdcFastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SettingsBdcFastActivity"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/SettingsApp;->printBundleDetail(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 32
    new-instance v2, Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {v2}, Lcom/android/settings/SettingsBootCompletedReceiver;-><init>()V

    .line 33
    .local v2, "ss":Lcom/android/settings/SettingsBootCompletedReceiver;
    invoke-virtual {p0}, Lcom/android/settings/SettingsBdcFastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/SettingsBootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/SettingsBdcFastActivity;->finish()V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    const-string v0, ""

    const-string v1, "=======divhee============SettingsBdcFastActivity====onDestroy==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 47
    const-string v0, ""

    const-string v1, "=======divhee============SettingsBdcFastActivity====onPause==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    const-string v0, ""

    const-string v1, "=======divhee============SettingsBdcFastActivity====onResume==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
