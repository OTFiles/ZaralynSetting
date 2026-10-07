.class Lcom/android/settings/SettingsPreinstallDialogActivity$1;
.super Landroid/database/ContentObserver;
.source "SettingsPreinstallDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreinstallDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreinstallDialogActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsPreinstallDialogActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 79
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 80
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "===1==divhee===============mContentObserver==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$000(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->access$000(Lcom/android/settings/SettingsPreinstallDialogActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===2==divhee===============mContentObserver==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_time_start_factory_power_tm"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_time_start_factory_power_tm"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreinstallDialogActivity$1;->this$0:Lcom/android/settings/SettingsPreinstallDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreinstallDialogActivity;->finish()V

    .line 87
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 90
    :cond_0
    :goto_0
    return-void
.end method
