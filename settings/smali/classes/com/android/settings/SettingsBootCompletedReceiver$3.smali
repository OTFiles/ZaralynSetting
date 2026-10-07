.class Lcom/android/settings/SettingsBootCompletedReceiver$3;
.super Ljava/lang/Object;
.source "SettingsBootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;->BootCompletedThenResetColorManagerTemp(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$times:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 1467
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iput-object p2, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$times:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1470
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_manager_temp_value"

    const/16 v2, 0x168

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1471
    .local v0, "savedvalue":I
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "======divhee=====BootCompletedThenResetColorManagerTemp====11======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/16 v1, -0x64

    if-lt v0, v1, :cond_5

    const/16 v1, 0x64

    if-gt v0, v1, :cond_5

    .line 1473
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v1, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v1

    .line 1474
    .local v1, "cmgr":Lcom/qti/snapdragon/sdk/display/ColorManager;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======divhee=====BootCompletedThenResetColorManagerTemp====21======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1477
    const/4 v3, 0x0

    .line 1478
    .local v3, "isSupport":Z
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v1, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v4

    move v3, v4

    .line 1479
    if-nez v3, :cond_1

    .line 1480
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======divhee=====BootCompletedThenResetColorManagerTemp====31======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    if-eqz v1, :cond_0

    .line 1495
    const/4 v1, 0x0

    .line 1481
    :cond_0
    return-void

    .line 1483
    :cond_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "======divhee=====BootCompletedThenResetColorManagerTemp====41======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v4, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1485
    invoke-virtual {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 1489
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 1495
    const/4 v1, 0x0

    :cond_3
    throw v2

    .line 1487
    :catch_0
    move-exception v2

    .line 1489
    if-eqz v1, :cond_5

    .line 1495
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1499
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    iget-object v4, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/SettingsBootCompletedReceiver$3;->val$times:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SettingsBootCompletedReceiver;->BootCompletedThenResetColorManagerTemp(Landroid/content/Context;I)V

    .line 1502
    .end local v1
    :cond_5
    :goto_1
    return-void
.end method
